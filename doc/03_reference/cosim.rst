.. _cosim:

Co-simulation DV Environment
============================

Overview
--------

The Ibex UVM DV environment contains a co-simulation environment.
This environment runs a RISC-V ISS (currently only Spike is supported) in lockstep with an Ibex core.
All instructions executed by Ibex and memory transactions generated are checked against the behaviour of the ISS.
This environment supports memory errors, interrupt and debug requests which are observed in the RTL simulation and forwarded to the ISS so the ISS and RTL remain in sync.
The environment uses a generic interface to allow support of multiple ISSes.
Only VCS is supported as a simulator, though no VCS specific functionality is required so adding support for another simulator should be straight-forward.

To run the co-simulation environment the `ibex-cosim branch from the lowRISC fork of Spike <https://github.com/lowRISC/riscv-isa-sim/tree/ibex>`_ is required.

The RISC-V Formal Interface (RVFI) is used to provide information about retired instructions and instructions that produce synchronous traps for checking.
The RVFI has been extended to provide interrupt and debug information and the value of the ``mcycle`` CSR.
These extended signals have the prefix ``rvfi_ext``

The co-simulation environment is EXPERIMENTAL.
It is disabled by default in the UVM DV environment currently, however it is intended to become the primary checking method for the UVM testbench.

Setup and Usage
---------------

Clone the `lowRISC fork of Spike <https://github.com/lowRISC/riscv-isa-sim>`_ and checkout the ``ibex_cosim`` branch.
Follow the Spike build instructions to build Spike inside a ``build`` directory within the Spike root directory.
The Spike binaries do not need to be installed anywhere, the co-simulation environment just needs the libraries.
The ``--enable-commitlog`` and ``--enable-misaligned`` options must be passed to ``configure``.

Once built the ``IBEX_COSIM_ISS_ROOT`` environment variable must be set to the Spike root directory in order to build the UVM DV environment with co-simulation support.

To build/run the UVM DV environment with the co-simulator add the ``COSIM=1`` argument to the make command.

Quick Build and Run Instructions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

  # Get the Ibex co-simulation spike branch
  git clone -b ibex_cosim https://github.com/lowRISC/riscv-isa-sim.git riscv-isa-sim-cosim

  # Setup build directory
  cd riscv-isa-sim-cosim
  mkdir build
  cd build

  # Configure and build spike
  ../configure --enable-commitlog --enable-misaligned
  make -j8
  cd ..

  # Setup IBEX_COSIM_ISS_ROOT to allow DV flow to use co-simulation
  export IBEX_COSIM_ISS_ROOT=`pwd`

  # Run regression with co-simulation enabled
  cd <ibex_area>/dv/uvm/core_ibex
  make COSIM=1

Co-simulation details
----------------------

The co-simulation environment uses DPI calls to link the DV and ISS environments.
A C++ interface is defined in ``dv/cosim/cosim.h`` with a DPI wrapper provided by ``dv/cosim/cosim_dpi.cc`` and ``dv/cosim/cosim_dpi.h``.
A ``chandle``, which points to some class instance that implement the interface, must be provided by the DV environment.
All the co-simulation DPI calls take this ``chandle`` as a first argument.

The details below discuss the C++ interface.
The DPI version of the interface is almost identical, with all functions prefaced with ``riscv_cosim`` and taking a ``chandle`` of the co-simulation instance to use.

The core function of the co-simulation interface is the ``step`` function:

.. code-block:: c++

  virtual bool step(uint32_t write_reg, uint32_t write_reg_data, uint32_t pc, bool sync_trap);

``step`` takes arguments giving the PC of the most recently retired or synchronously trapping instruction in the DUT along with details of any register write that occurred.

Where ``step`` is provided with a retired (successfully executed) instruction it steps the ISS by one instruction and checks it executed the same instruction, with the same register write result, as the DUT.

When ``step`` is provided with an instruction that produces a synchronous trap, it checks the ISS also traps on the same instruction but does not step to the next executed instruction.
That instruction will be the first instruction of the trap handler and will be checked/stepped by the next call to ``step`` when it retires from the DUT.

Any data memory accesses that the ISS produces during the ``step`` are checked against observed DUT memory accesses.

``step`` returns false if any checks have failed.
If any errors occur during the step they can be accessed via ``get_errors`` which returns a vector of error messages.
For the DPI interface errors are accessed using ``riscv_cosim_get_num_errors`` and ``riscv_cosim_get_error``.
When errors have been checked they can be cleared with ``clear_errors``.

Trap Handling
^^^^^^^^^^^^^

Traps are separated into two categories, synchronous and asynchronous.
Synchronous traps are caused by a particular instruction's execution (e.g. an illegal instruction).
Asynchronous traps are caused by external interrupts.
Note that in Ibex error responses to both loads and store produce a synchronous trap so the co-simulation environment has the same behaviour.

A synchronous trap is associated with a particular instruction and prevents that instruction from completing its execution.
That instruction doesn't retire, but is still made visible on the RVFI.
The ``rvfi_trap`` signal is asserted for an instruction that causes a synchronous trap.
As described above ``step`` should be called for any instruction that causes a synchronous trap to check the trap is also seen by the ISS.

An asynchronous trap can be seen as occurring between instructions and as such doesn't have an associated instruction, nothing will be seen on RVFI with ``rvfi_trap`` set.
The co-simulation environment will immediately take any pending asynchronous trap when ``step`` is called, expecting the instruction checked with ``step`` to be the first instruction of the trap handler.

While a debug request is not strictly an asynchronous trap (it doesn't use the same exception handling mechanism), they work identically to asynchronous traps for the co-simulation environment.
When a debug request is pending when ``step`` is called the co-simulation will expect the instruction checked by ``step`` to be the first instruction of the debug handler.

Interrupts and Debug Requests
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The DV environment must observe any incoming interrupts and debug requests generated by the testbench and notify the co-simulation environment of them using ``set_mip``, ``set_debug_req`` and ``set_nmi``.
An interrupt or debug request will take immediate effect at the next ``step`` (if architecturally required to do so).
The DV environment is responsible for determining when to call ``set_mip``, ``set_debug_req`` and ``set_nmi`` to ensure a RTL and co-simulation match.

The state of the incoming interrupts and debug request is sampled when an instruction moves from IF to ID/EX.
The sampled state is tracked with the rest of the RVFI pipeline and used to call ``set_mip``, ``set_debug_req`` and ``set_nmi`` when the instruction is output by the RVFI.
See the comments in :file:`rtl/ibex_core.sv`, around the ``new_debug_req``, ``new_nmi`` and ``new_irq`` signals for further details.

Memory Access Checking and Bus Errors
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The co-simulation environment must be informed of all Dside accesses performed by the RTL using ``notify_dside_access``.
See :file:`dv/cosim/cosim.h` for further details.
As Ibex doesn't perform speculative Dside memory accesses, all notified accesses are expected to match with accesses performed by the ISS in the same order they are notified.

Accesses notified via ``notify_dside_access`` can specify they saw an error response, the co-simulation environment will produce the appropriate trap when the ISS attempts to access the address that saw the error.

Accesses must be notified before they occur in the ISS for the access matching and trapping on errors to work.

Iside accesses from Ibex can be speculative, so there is no simple link between accesses produced by the RTL and the accesses performed by the ISS for the Iside.
This means no direct checking of Iside accesses is done, however errors on the Iside accesses that result in an instruction fault trap need to be notified to the co-simulation environment.
``notify_iside_error`` does this, it should be called immediately before the ``step`` that will process the trap.
``notify_iside_error`` is provided with the address that saw the bus error, the co-simulation environment will produce an instruction fault trap if and only if it attempts to access the notified error address.

In Ibex it can be guaranteed that if a bus error is seen on an Iside access to address A then any instruction that fetches from that address will see an instruction fault if it is observed entering the ID/EX stage after the bus fault is observed, provided no successful access to A is seen after the bus error.
The UVM environment tracks if the most recent access to an address on the Iside has seen a bus error within ``ibex_cosim_scoreboard``.
If an instruction entering ID/EX fetches from an address that has seen a bus error its ``rvfi_order_id`` is recorded.
When a faulting instruction is reported on the RVFI and its ``rvfi_order_id`` matches a recorded faulting one ``notify_iside_error`` is called with the faulting address before the next ``step``.
