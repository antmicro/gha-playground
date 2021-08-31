// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package usbdev_reg_pkg;

  // Param list
  parameter int NEndpoints = 12;
  parameter int NumAlerts = 1;

  // Address widths within the block
  parameter int BlockAw = 12;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    struct packed {
      logic        q;
    } pkt_received;
    struct packed {
      logic        q;
    } pkt_sent;
    struct packed {
      logic        q;
    } disconnected;
    struct packed {
      logic        q;
    } host_lost;
    struct packed {
      logic        q;
    } link_reset;
    struct packed {
      logic        q;
    } link_suspend;
    struct packed {
      logic        q;
    } link_resume;
    struct packed {
      logic        q;
    } av_empty;
    struct packed {
      logic        q;
    } rx_full;
    struct packed {
      logic        q;
    } av_overflow;
    struct packed {
      logic        q;
    } link_in_err;
    struct packed {
      logic        q;
    } rx_crc_err;
    struct packed {
      logic        q;
    } rx_pid_err;
    struct packed {
      logic        q;
    } rx_bitstuff_err;
    struct packed {
      logic        q;
    } frame;
    struct packed {
      logic        q;
    } connected;
    struct packed {
      logic        q;
    } link_out_err;
  } usbdev_reg2hw_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } pkt_received;
    struct packed {
      logic        q;
    } pkt_sent;
    struct packed {
      logic        q;
    } disconnected;
    struct packed {
      logic        q;
    } host_lost;
    struct packed {
      logic        q;
    } link_reset;
    struct packed {
      logic        q;
    } link_suspend;
    struct packed {
      logic        q;
    } link_resume;
    struct packed {
      logic        q;
    } av_empty;
    struct packed {
      logic        q;
    } rx_full;
    struct packed {
      logic        q;
    } av_overflow;
    struct packed {
      logic        q;
    } link_in_err;
    struct packed {
      logic        q;
    } rx_crc_err;
    struct packed {
      logic        q;
    } rx_pid_err;
    struct packed {
      logic        q;
    } rx_bitstuff_err;
    struct packed {
      logic        q;
    } frame;
    struct packed {
      logic        q;
    } connected;
    struct packed {
      logic        q;
    } link_out_err;
  } usbdev_reg2hw_intr_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } pkt_received;
    struct packed {
      logic        q;
      logic        qe;
    } pkt_sent;
    struct packed {
      logic        q;
      logic        qe;
    } disconnected;
    struct packed {
      logic        q;
      logic        qe;
    } host_lost;
    struct packed {
      logic        q;
      logic        qe;
    } link_reset;
    struct packed {
      logic        q;
      logic        qe;
    } link_suspend;
    struct packed {
      logic        q;
      logic        qe;
    } link_resume;
    struct packed {
      logic        q;
      logic        qe;
    } av_empty;
    struct packed {
      logic        q;
      logic        qe;
    } rx_full;
    struct packed {
      logic        q;
      logic        qe;
    } av_overflow;
    struct packed {
      logic        q;
      logic        qe;
    } link_in_err;
    struct packed {
      logic        q;
      logic        qe;
    } rx_crc_err;
    struct packed {
      logic        q;
      logic        qe;
    } rx_pid_err;
    struct packed {
      logic        q;
      logic        qe;
    } rx_bitstuff_err;
    struct packed {
      logic        q;
      logic        qe;
    } frame;
    struct packed {
      logic        q;
      logic        qe;
    } connected;
    struct packed {
      logic        q;
      logic        qe;
    } link_out_err;
  } usbdev_reg2hw_intr_test_reg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } usbdev_reg2hw_alert_test_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } enable;
    struct packed {
      logic [6:0]  q;
    } device_address;
  } usbdev_reg2hw_usbctrl_reg_t;

  typedef struct packed {
    logic [4:0]  q;
    logic        qe;
  } usbdev_reg2hw_avbuffer_reg_t;

  typedef struct packed {
    struct packed {
      logic [4:0]  q;
      logic        re;
    } buffer;
    struct packed {
      logic [6:0]  q;
      logic        re;
    } size;
    struct packed {
      logic        q;
      logic        re;
    } setup;
    struct packed {
      logic [3:0]  q;
      logic        re;
    } ep;
  } usbdev_reg2hw_rxfifo_reg_t;

  typedef struct packed {
    logic        q;
  } usbdev_reg2hw_rxenable_setup_mreg_t;

  typedef struct packed {
    logic        q;
  } usbdev_reg2hw_rxenable_out_mreg_t;

  typedef struct packed {
    logic        q;
  } usbdev_reg2hw_stall_mreg_t;

  typedef struct packed {
    struct packed {
      logic [4:0]  q;
    } buffer;
    struct packed {
      logic [6:0]  q;
    } size;
    struct packed {
      logic        q;
    } pend;
    struct packed {
      logic        q;
    } rdy;
  } usbdev_reg2hw_configin_mreg_t;

  typedef struct packed {
    logic        q;
  } usbdev_reg2hw_iso_mreg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } usbdev_reg2hw_data_toggle_clear_mreg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } dp_o;
    struct packed {
      logic        q;
    } dn_o;
    struct packed {
      logic        q;
    } d_o;
    struct packed {
      logic        q;
    } se0_o;
    struct packed {
      logic        q;
    } oe_o;
    struct packed {
      logic        q;
    } tx_mode_se_o;
    struct packed {
      logic        q;
    } dp_pullup_en_o;
    struct packed {
      logic        q;
    } dn_pullup_en_o;
    struct packed {
      logic        q;
    } suspend_o;
    struct packed {
      logic        q;
    } en;
  } usbdev_reg2hw_phy_pins_drive_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } rx_differential_mode;
    struct packed {
      logic        q;
    } tx_differential_mode;
    struct packed {
      logic        q;
    } eop_single_bit;
    struct packed {
      logic        q;
    } override_pwr_sense_en;
    struct packed {
      logic        q;
    } override_pwr_sense_val;
    struct packed {
      logic        q;
    } pinflip;
    struct packed {
      logic        q;
    } usb_ref_disable;
    struct packed {
      logic        q;
    } tx_osc_test_mode;
  } usbdev_reg2hw_phy_config_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } wake_en;
    struct packed {
      logic        q;
    } wake_ack;
  } usbdev_reg2hw_wake_config_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } pkt_received;
    struct packed {
      logic        d;
      logic        de;
    } pkt_sent;
    struct packed {
      logic        d;
      logic        de;
    } disconnected;
    struct packed {
      logic        d;
      logic        de;
    } host_lost;
    struct packed {
      logic        d;
      logic        de;
    } link_reset;
    struct packed {
      logic        d;
      logic        de;
    } link_suspend;
    struct packed {
      logic        d;
      logic        de;
    } link_resume;
    struct packed {
      logic        d;
      logic        de;
    } av_empty;
    struct packed {
      logic        d;
      logic        de;
    } rx_full;
    struct packed {
      logic        d;
      logic        de;
    } av_overflow;
    struct packed {
      logic        d;
      logic        de;
    } link_in_err;
    struct packed {
      logic        d;
      logic        de;
    } rx_crc_err;
    struct packed {
      logic        d;
      logic        de;
    } rx_pid_err;
    struct packed {
      logic        d;
      logic        de;
    } rx_bitstuff_err;
    struct packed {
      logic        d;
      logic        de;
    } frame;
    struct packed {
      logic        d;
      logic        de;
    } connected;
    struct packed {
      logic        d;
      logic        de;
    } link_out_err;
  } usbdev_hw2reg_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic [6:0]  d;
      logic        de;
    } device_address;
  } usbdev_hw2reg_usbctrl_reg_t;

  typedef struct packed {
    struct packed {
      logic [10:0] d;
    } frame;
    struct packed {
      logic        d;
    } host_lost;
    struct packed {
      logic [2:0]  d;
    } link_state;
    struct packed {
      logic        d;
    } sense;
    struct packed {
      logic [2:0]  d;
    } av_depth;
    struct packed {
      logic        d;
    } av_full;
    struct packed {
      logic [2:0]  d;
    } rx_depth;
    struct packed {
      logic        d;
    } rx_empty;
  } usbdev_hw2reg_usbstat_reg_t;

  typedef struct packed {
    struct packed {
      logic [4:0]  d;
    } buffer;
    struct packed {
      logic [6:0]  d;
    } size;
    struct packed {
      logic        d;
    } setup;
    struct packed {
      logic [3:0]  d;
    } ep;
  } usbdev_hw2reg_rxfifo_reg_t;

  typedef struct packed {
    logic        d;
    logic        de;
  } usbdev_hw2reg_in_sent_mreg_t;

  typedef struct packed {
    logic        d;
    logic        de;
  } usbdev_hw2reg_stall_mreg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } pend;
    struct packed {
      logic        d;
      logic        de;
    } rdy;
  } usbdev_hw2reg_configin_mreg_t;

  typedef struct packed {
    struct packed {
      logic        d;
    } rx_dp_i;
    struct packed {
      logic        d;
    } rx_dn_i;
    struct packed {
      logic        d;
    } rx_d_i;
    struct packed {
      logic        d;
    } tx_dp_o;
    struct packed {
      logic        d;
    } tx_dn_o;
    struct packed {
      logic        d;
    } tx_d_o;
    struct packed {
      logic        d;
    } tx_se0_o;
    struct packed {
      logic        d;
    } tx_oe_o;
    struct packed {
      logic        d;
    } suspend_o;
    struct packed {
      logic        d;
    } pwr_sense;
  } usbdev_hw2reg_phy_pins_sense_reg_t;

  typedef struct packed {
    logic [2:0]  d;
    logic        de;
  } usbdev_hw2reg_wake_debug_reg_t;

  // Register -> HW type
  typedef struct packed {
    usbdev_reg2hw_intr_state_reg_t intr_state; // [364:348]
    usbdev_reg2hw_intr_enable_reg_t intr_enable; // [347:331]
    usbdev_reg2hw_intr_test_reg_t intr_test; // [330:297]
    usbdev_reg2hw_alert_test_reg_t alert_test; // [296:295]
    usbdev_reg2hw_usbctrl_reg_t usbctrl; // [294:287]
    usbdev_reg2hw_avbuffer_reg_t avbuffer; // [286:281]
    usbdev_reg2hw_rxfifo_reg_t rxfifo; // [280:260]
    usbdev_reg2hw_rxenable_setup_mreg_t [11:0] rxenable_setup; // [259:248]
    usbdev_reg2hw_rxenable_out_mreg_t [11:0] rxenable_out; // [247:236]
    usbdev_reg2hw_stall_mreg_t [11:0] stall; // [235:224]
    usbdev_reg2hw_configin_mreg_t [11:0] configin; // [223:56]
    usbdev_reg2hw_iso_mreg_t [11:0] iso; // [55:44]
    usbdev_reg2hw_data_toggle_clear_mreg_t [11:0] data_toggle_clear; // [43:20]
    usbdev_reg2hw_phy_pins_drive_reg_t phy_pins_drive; // [19:10]
    usbdev_reg2hw_phy_config_reg_t phy_config; // [9:2]
    usbdev_reg2hw_wake_config_reg_t wake_config; // [1:0]
  } usbdev_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    usbdev_hw2reg_intr_state_reg_t intr_state; // [192:159]
    usbdev_hw2reg_usbctrl_reg_t usbctrl; // [158:151]
    usbdev_hw2reg_usbstat_reg_t usbstat; // [150:127]
    usbdev_hw2reg_rxfifo_reg_t rxfifo; // [126:110]
    usbdev_hw2reg_in_sent_mreg_t [11:0] in_sent; // [109:86]
    usbdev_hw2reg_stall_mreg_t [11:0] stall; // [85:62]
    usbdev_hw2reg_configin_mreg_t [11:0] configin; // [61:14]
    usbdev_hw2reg_phy_pins_sense_reg_t phy_pins_sense; // [13:4]
    usbdev_hw2reg_wake_debug_reg_t wake_debug; // [3:0]
  } usbdev_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] USBDEV_INTR_STATE_OFFSET = 12'h 0;
  parameter logic [BlockAw-1:0] USBDEV_INTR_ENABLE_OFFSET = 12'h 4;
  parameter logic [BlockAw-1:0] USBDEV_INTR_TEST_OFFSET = 12'h 8;
  parameter logic [BlockAw-1:0] USBDEV_ALERT_TEST_OFFSET = 12'h c;
  parameter logic [BlockAw-1:0] USBDEV_USBCTRL_OFFSET = 12'h 10;
  parameter logic [BlockAw-1:0] USBDEV_USBSTAT_OFFSET = 12'h 14;
  parameter logic [BlockAw-1:0] USBDEV_AVBUFFER_OFFSET = 12'h 18;
  parameter logic [BlockAw-1:0] USBDEV_RXFIFO_OFFSET = 12'h 1c;
  parameter logic [BlockAw-1:0] USBDEV_RXENABLE_SETUP_OFFSET = 12'h 20;
  parameter logic [BlockAw-1:0] USBDEV_RXENABLE_OUT_OFFSET = 12'h 24;
  parameter logic [BlockAw-1:0] USBDEV_IN_SENT_OFFSET = 12'h 28;
  parameter logic [BlockAw-1:0] USBDEV_STALL_OFFSET = 12'h 2c;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_0_OFFSET = 12'h 30;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_1_OFFSET = 12'h 34;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_2_OFFSET = 12'h 38;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_3_OFFSET = 12'h 3c;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_4_OFFSET = 12'h 40;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_5_OFFSET = 12'h 44;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_6_OFFSET = 12'h 48;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_7_OFFSET = 12'h 4c;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_8_OFFSET = 12'h 50;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_9_OFFSET = 12'h 54;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_10_OFFSET = 12'h 58;
  parameter logic [BlockAw-1:0] USBDEV_CONFIGIN_11_OFFSET = 12'h 5c;
  parameter logic [BlockAw-1:0] USBDEV_ISO_OFFSET = 12'h 60;
  parameter logic [BlockAw-1:0] USBDEV_DATA_TOGGLE_CLEAR_OFFSET = 12'h 64;
  parameter logic [BlockAw-1:0] USBDEV_PHY_PINS_SENSE_OFFSET = 12'h 68;
  parameter logic [BlockAw-1:0] USBDEV_PHY_PINS_DRIVE_OFFSET = 12'h 6c;
  parameter logic [BlockAw-1:0] USBDEV_PHY_CONFIG_OFFSET = 12'h 70;
  parameter logic [BlockAw-1:0] USBDEV_WAKE_CONFIG_OFFSET = 12'h 74;
  parameter logic [BlockAw-1:0] USBDEV_WAKE_DEBUG_OFFSET = 12'h 78;

  // Reset values for hwext registers and their fields
  parameter logic [16:0] USBDEV_INTR_TEST_RESVAL = 17'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_PKT_RECEIVED_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_PKT_SENT_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_DISCONNECTED_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_HOST_LOST_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_LINK_RESET_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_LINK_SUSPEND_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_LINK_RESUME_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_AV_EMPTY_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_RX_FULL_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_AV_OVERFLOW_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_LINK_IN_ERR_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_RX_CRC_ERR_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_RX_PID_ERR_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_RX_BITSTUFF_ERR_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_FRAME_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_CONNECTED_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_INTR_TEST_LINK_OUT_ERR_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_ALERT_TEST_RESVAL = 1'h 0;
  parameter logic [0:0] USBDEV_ALERT_TEST_FATAL_FAULT_RESVAL = 1'h 0;
  parameter logic [31:0] USBDEV_USBSTAT_RESVAL = 32'h 80000000;
  parameter logic [0:0] USBDEV_USBSTAT_RX_EMPTY_RESVAL = 1'h 1;
  parameter logic [23:0] USBDEV_RXFIFO_RESVAL = 24'h 0;
  parameter logic [16:0] USBDEV_PHY_PINS_SENSE_RESVAL = 17'h 0;

  // Window parameters
  parameter logic [BlockAw-1:0] USBDEV_BUFFER_OFFSET = 12'h 800;
  parameter int unsigned        USBDEV_BUFFER_SIZE   = 'h 800;

  // Register index
  typedef enum int {
    USBDEV_INTR_STATE,
    USBDEV_INTR_ENABLE,
    USBDEV_INTR_TEST,
    USBDEV_ALERT_TEST,
    USBDEV_USBCTRL,
    USBDEV_USBSTAT,
    USBDEV_AVBUFFER,
    USBDEV_RXFIFO,
    USBDEV_RXENABLE_SETUP,
    USBDEV_RXENABLE_OUT,
    USBDEV_IN_SENT,
    USBDEV_STALL,
    USBDEV_CONFIGIN_0,
    USBDEV_CONFIGIN_1,
    USBDEV_CONFIGIN_2,
    USBDEV_CONFIGIN_3,
    USBDEV_CONFIGIN_4,
    USBDEV_CONFIGIN_5,
    USBDEV_CONFIGIN_6,
    USBDEV_CONFIGIN_7,
    USBDEV_CONFIGIN_8,
    USBDEV_CONFIGIN_9,
    USBDEV_CONFIGIN_10,
    USBDEV_CONFIGIN_11,
    USBDEV_ISO,
    USBDEV_DATA_TOGGLE_CLEAR,
    USBDEV_PHY_PINS_SENSE,
    USBDEV_PHY_PINS_DRIVE,
    USBDEV_PHY_CONFIG,
    USBDEV_WAKE_CONFIG,
    USBDEV_WAKE_DEBUG
  } usbdev_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] USBDEV_PERMIT [31] = '{
    4'b 0111, // index[ 0] USBDEV_INTR_STATE
    4'b 0111, // index[ 1] USBDEV_INTR_ENABLE
    4'b 0111, // index[ 2] USBDEV_INTR_TEST
    4'b 0001, // index[ 3] USBDEV_ALERT_TEST
    4'b 0111, // index[ 4] USBDEV_USBCTRL
    4'b 1111, // index[ 5] USBDEV_USBSTAT
    4'b 0001, // index[ 6] USBDEV_AVBUFFER
    4'b 0111, // index[ 7] USBDEV_RXFIFO
    4'b 0011, // index[ 8] USBDEV_RXENABLE_SETUP
    4'b 0011, // index[ 9] USBDEV_RXENABLE_OUT
    4'b 0011, // index[10] USBDEV_IN_SENT
    4'b 0011, // index[11] USBDEV_STALL
    4'b 1111, // index[12] USBDEV_CONFIGIN_0
    4'b 1111, // index[13] USBDEV_CONFIGIN_1
    4'b 1111, // index[14] USBDEV_CONFIGIN_2
    4'b 1111, // index[15] USBDEV_CONFIGIN_3
    4'b 1111, // index[16] USBDEV_CONFIGIN_4
    4'b 1111, // index[17] USBDEV_CONFIGIN_5
    4'b 1111, // index[18] USBDEV_CONFIGIN_6
    4'b 1111, // index[19] USBDEV_CONFIGIN_7
    4'b 1111, // index[20] USBDEV_CONFIGIN_8
    4'b 1111, // index[21] USBDEV_CONFIGIN_9
    4'b 1111, // index[22] USBDEV_CONFIGIN_10
    4'b 1111, // index[23] USBDEV_CONFIGIN_11
    4'b 0011, // index[24] USBDEV_ISO
    4'b 0011, // index[25] USBDEV_DATA_TOGGLE_CLEAR
    4'b 0111, // index[26] USBDEV_PHY_PINS_SENSE
    4'b 0111, // index[27] USBDEV_PHY_PINS_DRIVE
    4'b 0001, // index[28] USBDEV_PHY_CONFIG
    4'b 0001, // index[29] USBDEV_WAKE_CONFIG
    4'b 0001  // index[30] USBDEV_WAKE_DEBUG
  };

endpackage

