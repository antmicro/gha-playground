// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package spi_host_reg_pkg;

  // Param list
  parameter logic ByteOrder = 1;
  parameter int NumCS = 1;
  parameter int TxDepth = 72;
  parameter int RxDepth = 64;
  parameter int NumAlerts = 1;

  // Address widths within the block
  parameter int BlockAw = 6;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    struct packed {
      logic        q;
    } error;
    struct packed {
      logic        q;
    } spi_event;
  } spi_host_reg2hw_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } error;
    struct packed {
      logic        q;
    } spi_event;
  } spi_host_reg2hw_intr_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } error;
    struct packed {
      logic        q;
      logic        qe;
    } spi_event;
  } spi_host_reg2hw_intr_test_reg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } spi_host_reg2hw_alert_test_reg_t;

  typedef struct packed {
    struct packed {
      logic [7:0]  q;
    } rx_watermark;
    struct packed {
      logic [7:0]  q;
    } tx_watermark;
    struct packed {
      logic        q;
    } sw_rst;
    struct packed {
      logic        q;
    } spien;
  } spi_host_reg2hw_control_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] q;
    } clkdiv;
    struct packed {
      logic [3:0]  q;
    } csnidle;
    struct packed {
      logic [3:0]  q;
    } csntrail;
    struct packed {
      logic [3:0]  q;
    } csnlead;
    struct packed {
      logic        q;
    } fullcyc;
    struct packed {
      logic        q;
    } cpha;
    struct packed {
      logic        q;
    } cpol;
  } spi_host_reg2hw_configopts_mreg_t;

  typedef struct packed {
    logic [31:0] q;
  } spi_host_reg2hw_csid_reg_t;

  typedef struct packed {
    struct packed {
      logic [8:0]  q;
      logic        qe;
    } len;
    struct packed {
      logic        q;
      logic        qe;
    } csaat;
    struct packed {
      logic [1:0]  q;
      logic        qe;
    } speed;
    struct packed {
      logic [1:0]  q;
      logic        qe;
    } direction;
  } spi_host_reg2hw_command_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } cmdbusy;
    struct packed {
      logic        q;
    } overflow;
    struct packed {
      logic        q;
    } underflow;
    struct packed {
      logic        q;
    } cmdinval;
    struct packed {
      logic        q;
    } csidinval;
  } spi_host_reg2hw_error_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } cmdbusy;
    struct packed {
      logic        q;
    } overflow;
    struct packed {
      logic        q;
    } underflow;
    struct packed {
      logic        q;
    } cmdinval;
    struct packed {
      logic        q;
    } csidinval;
  } spi_host_reg2hw_error_status_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } rxfull;
    struct packed {
      logic        q;
    } txempty;
    struct packed {
      logic        q;
    } rxwm;
    struct packed {
      logic        q;
    } txwm;
    struct packed {
      logic        q;
    } ready;
    struct packed {
      logic        q;
    } idle;
  } spi_host_reg2hw_event_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } error;
    struct packed {
      logic        d;
      logic        de;
    } spi_event;
  } spi_host_hw2reg_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic [7:0]  d;
      logic        de;
    } txqd;
    struct packed {
      logic [7:0]  d;
      logic        de;
    } rxqd;
    struct packed {
      logic        d;
      logic        de;
    } rxwm;
    struct packed {
      logic        d;
      logic        de;
    } byteorder;
    struct packed {
      logic        d;
      logic        de;
    } rxstall;
    struct packed {
      logic        d;
      logic        de;
    } rxempty;
    struct packed {
      logic        d;
      logic        de;
    } rxfull;
    struct packed {
      logic        d;
      logic        de;
    } txwm;
    struct packed {
      logic        d;
      logic        de;
    } txstall;
    struct packed {
      logic        d;
      logic        de;
    } txempty;
    struct packed {
      logic        d;
      logic        de;
    } txfull;
    struct packed {
      logic        d;
      logic        de;
    } active;
    struct packed {
      logic        d;
      logic        de;
    } ready;
  } spi_host_hw2reg_status_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } cmdbusy;
    struct packed {
      logic        d;
      logic        de;
    } overflow;
    struct packed {
      logic        d;
      logic        de;
    } underflow;
    struct packed {
      logic        d;
      logic        de;
    } cmdinval;
    struct packed {
      logic        d;
      logic        de;
    } csidinval;
  } spi_host_hw2reg_error_status_reg_t;

  // Register -> HW type
  typedef struct packed {
    spi_host_reg2hw_intr_state_reg_t intr_state; // [124:123]
    spi_host_reg2hw_intr_enable_reg_t intr_enable; // [122:121]
    spi_host_reg2hw_intr_test_reg_t intr_test; // [120:117]
    spi_host_reg2hw_alert_test_reg_t alert_test; // [116:115]
    spi_host_reg2hw_control_reg_t control; // [114:97]
    spi_host_reg2hw_configopts_mreg_t [0:0] configopts; // [96:66]
    spi_host_reg2hw_csid_reg_t csid; // [65:34]
    spi_host_reg2hw_command_reg_t command; // [33:16]
    spi_host_reg2hw_error_enable_reg_t error_enable; // [15:11]
    spi_host_reg2hw_error_status_reg_t error_status; // [10:6]
    spi_host_reg2hw_event_enable_reg_t event_enable; // [5:0]
  } spi_host_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    spi_host_hw2reg_intr_state_reg_t intr_state; // [53:50]
    spi_host_hw2reg_status_reg_t status; // [49:10]
    spi_host_hw2reg_error_status_reg_t error_status; // [9:0]
  } spi_host_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] SPI_HOST_INTR_STATE_OFFSET = 6'h 0;
  parameter logic [BlockAw-1:0] SPI_HOST_INTR_ENABLE_OFFSET = 6'h 4;
  parameter logic [BlockAw-1:0] SPI_HOST_INTR_TEST_OFFSET = 6'h 8;
  parameter logic [BlockAw-1:0] SPI_HOST_ALERT_TEST_OFFSET = 6'h c;
  parameter logic [BlockAw-1:0] SPI_HOST_CONTROL_OFFSET = 6'h 10;
  parameter logic [BlockAw-1:0] SPI_HOST_STATUS_OFFSET = 6'h 14;
  parameter logic [BlockAw-1:0] SPI_HOST_CONFIGOPTS_OFFSET = 6'h 18;
  parameter logic [BlockAw-1:0] SPI_HOST_CSID_OFFSET = 6'h 1c;
  parameter logic [BlockAw-1:0] SPI_HOST_COMMAND_OFFSET = 6'h 20;
  parameter logic [BlockAw-1:0] SPI_HOST_ERROR_ENABLE_OFFSET = 6'h 28;
  parameter logic [BlockAw-1:0] SPI_HOST_ERROR_STATUS_OFFSET = 6'h 2c;
  parameter logic [BlockAw-1:0] SPI_HOST_EVENT_ENABLE_OFFSET = 6'h 30;

  // Reset values for hwext registers and their fields
  parameter logic [1:0] SPI_HOST_INTR_TEST_RESVAL = 2'h 0;
  parameter logic [0:0] SPI_HOST_INTR_TEST_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] SPI_HOST_INTR_TEST_SPI_EVENT_RESVAL = 1'h 0;
  parameter logic [0:0] SPI_HOST_ALERT_TEST_RESVAL = 1'h 0;
  parameter logic [0:0] SPI_HOST_ALERT_TEST_FATAL_FAULT_RESVAL = 1'h 0;

  // Window parameters
  parameter logic [BlockAw-1:0] SPI_HOST_DATA_OFFSET = 6'h 24;
  parameter int unsigned        SPI_HOST_DATA_SIZE   = 'h 4;

  // Register index
  typedef enum int {
    SPI_HOST_INTR_STATE,
    SPI_HOST_INTR_ENABLE,
    SPI_HOST_INTR_TEST,
    SPI_HOST_ALERT_TEST,
    SPI_HOST_CONTROL,
    SPI_HOST_STATUS,
    SPI_HOST_CONFIGOPTS,
    SPI_HOST_CSID,
    SPI_HOST_COMMAND,
    SPI_HOST_ERROR_ENABLE,
    SPI_HOST_ERROR_STATUS,
    SPI_HOST_EVENT_ENABLE
  } spi_host_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] SPI_HOST_PERMIT [12] = '{
    4'b 0001, // index[ 0] SPI_HOST_INTR_STATE
    4'b 0001, // index[ 1] SPI_HOST_INTR_ENABLE
    4'b 0001, // index[ 2] SPI_HOST_INTR_TEST
    4'b 0001, // index[ 3] SPI_HOST_ALERT_TEST
    4'b 1111, // index[ 4] SPI_HOST_CONTROL
    4'b 1111, // index[ 5] SPI_HOST_STATUS
    4'b 1111, // index[ 6] SPI_HOST_CONFIGOPTS
    4'b 1111, // index[ 7] SPI_HOST_CSID
    4'b 0011, // index[ 8] SPI_HOST_COMMAND
    4'b 0001, // index[ 9] SPI_HOST_ERROR_ENABLE
    4'b 0001, // index[10] SPI_HOST_ERROR_STATUS
    4'b 0001  // index[11] SPI_HOST_EVENT_ENABLE
  };

endpackage

