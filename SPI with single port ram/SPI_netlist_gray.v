// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Mar 16 23:08:48 2025
// Host        : DESKTOP-MHQE03I running 64-bit major release  (build 9200)
// Command     : write_verilog C:/Users/weza/Desktop/spi/DSP_netlist_gray.v
// Design      : WRAPPER
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a200tffg1156-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [0:36]sl_iport0_o;
  input [0:16]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    probe0,
    SL_IPORT_I,
    SL_OPORT_O,
    probe1,
    probe2,
    probe3,
    probe4);
  input clk;
  input [0:0]probe0;
  input [0:36]SL_IPORT_I;
  output [0:16]SL_OPORT_O;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;


endmodule

module RAM
   (tx_valid,
    MISO_reg,
    MISO_reg_0,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    rst_n,
    Q,
    WEA,
    \rx_data_reg[8]_0 ,
    \counter_reg[1] ,
    E,
    rx_valid_reg);
  output tx_valid;
  output MISO_reg;
  output MISO_reg_0;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input rst_n;
  input [7:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[8]_0 ;
  input [1:0]\counter_reg[1] ;
  input [0:0]E;
  input [0:0]rx_valid_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [1:0]\counter_reg[1] ;
  wire [7:0]r_addr;
  wire rst_n;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[8]_0 ;
  wire [0:0]rx_valid_reg;
  wire [7:0]tx_data;
  wire tx_valid;
  wire [7:0]w_addr;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    MISO_i_3
       (.I0(tx_data[2]),
        .I1(tx_data[3]),
        .I2(\counter_reg[1] [0]),
        .I3(\counter_reg[1] [1]),
        .I4(tx_data[0]),
        .I5(tx_data[1]),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    MISO_i_5
       (.I0(tx_data[6]),
        .I1(tx_data[7]),
        .I2(\counter_reg[1] [0]),
        .I3(\counter_reg[1] [1]),
        .I4(tx_data[4]),
        .I5(tx_data[5]),
        .O(MISO_reg_0));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,w_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,r_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    \r_addr_reg[0] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[0]),
        .Q(r_addr[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \r_addr_reg[1] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[1]),
        .Q(r_addr[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \r_addr_reg[2] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[2]),
        .Q(r_addr[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \r_addr_reg[3] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[3]),
        .Q(r_addr[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \r_addr_reg[4] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[4]),
        .Q(r_addr[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \r_addr_reg[5] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[5]),
        .Q(r_addr[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \r_addr_reg[6] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[6]),
        .Q(r_addr[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \r_addr_reg[7] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[7]),
        .Q(r_addr[7]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[8]_0 ),
        .Q(tx_valid),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(w_addr[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(w_addr[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(w_addr[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(w_addr[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(w_addr[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(w_addr[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(w_addr[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(w_addr[7]),
        .R(rst_n));
endmodule

module Slave
   (MISO_OBUF,
    SR,
    Q,
    tx_valid_reg,
    \rx_data_reg[8]_0 ,
    mem_reg,
    WEA,
    E,
    \r_addr_reg[7] ,
    CLK,
    tx_valid,
    mem_reg_0,
    mem_reg_1,
    D,
    SS_n_IBUF,
    rst_n_IBUF);
  output MISO_OBUF;
  output [0:0]SR;
  output [1:0]Q;
  output tx_valid_reg;
  output [7:0]\rx_data_reg[8]_0 ;
  output mem_reg;
  output [0:0]WEA;
  output [0:0]E;
  output [0:0]\r_addr_reg[7] ;
  input CLK;
  input tx_valid;
  input mem_reg_0;
  input mem_reg_1;
  input [0:0]D;
  input SS_n_IBUF;
  input rst_n_IBUF;

  wire \<const1> ;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MISO_i_4_n_0;
  wire [1:0]Q;
  wire R_c0__4;
  wire R_c_i_1_n_0;
  wire R_c_reg_n_0;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [2:0]ns;
  wire [0:0]\r_addr_reg[7] ;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire rx_data1__3;
  wire \rx_data[9]_i_1_n_0 ;
  wire [7:0]\rx_data_reg[8]_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire rx_valid_i_3_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'h00000000FFEFBBBB)) 
    \FSM_gray_cs[0]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(D),
        .I3(R_c_reg_n_0),
        .I4(cs[0]),
        .I5(SS_n_IBUF),
        .O(ns[0]));
  LUT4 #(
    .INIT(16'h00FE)) 
    \FSM_gray_cs[1]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(SS_n_IBUF),
        .O(ns[1]));
  LUT6 #(
    .INIT(64'h00AA00AA00EA00AA)) 
    \FSM_gray_cs[2]_i_1 
       (.I0(cs[2]),
        .I1(R_c_reg_n_0),
        .I2(D),
        .I3(SS_n_IBUF),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(ns[2]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,READ_ADD:010,READ_DATA:111,WRITE:011,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,READ_ADD:010,READ_DATA:111,WRITE:011,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,READ_ADD:010,READ_DATA:111,WRITE:011,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8003)) 
    MISO_i_1
       (.I0(rx_data1__3),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .O(MISO_i_1_n_0));
  LUT5 #(
    .INIT(32'h80888000)) 
    MISO_i_2
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(mem_reg_0),
        .I3(MISO_i_4_n_0),
        .I4(mem_reg_1),
        .O(MISO_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    MISO_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\counter_reg_n_0_[2] ),
        .O(MISO_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(SR));
  LUT6 #(
    .INIT(64'h7FFF7FFF03000000)) 
    R_c_i_1
       (.I0(rx_valid_i_2_n_0),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(R_c0__4),
        .I5(R_c_reg_n_0),
        .O(R_c_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    R_c_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(R_c_i_1_n_0),
        .Q(R_c_reg_n_0),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h2202)) 
    \counter[0]_i_1 
       (.I0(cs[1]),
        .I1(Q[0]),
        .I2(cs[2]),
        .I3(cs[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8228282800280028)) 
    \counter[1]_i_1 
       (.I0(cs[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(cs[2]),
        .I4(rx_data1__3),
        .I5(cs[0]),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA288800002888)) 
    \counter[2]_i_1 
       (.I0(cs[1]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(cs[2]),
        .I5(\counter[2]_i_2_n_0 ),
        .O(\counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA000080AAAA000)) 
    \counter[2]_i_2 
       (.I0(cs[0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\counter_reg_n_0_[2] ),
        .I5(tx_valid),
        .O(\counter[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAF800F0F)) 
    \counter[3]_i_1 
       (.I0(cs[0]),
        .I1(rx_data1__3),
        .I2(cs[2]),
        .I3(R_c0__4),
        .I4(cs[1]),
        .O(counter));
  LUT4 #(
    .INIT(16'hA808)) 
    \counter[3]_i_2 
       (.I0(cs[1]),
        .I1(\counter[3]_i_3_n_0 ),
        .I2(cs[2]),
        .I3(\counter[3]_i_4_n_0 ),
        .O(\counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\counter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888028888888)) 
    \counter[3]_i_4 
       (.I0(cs[0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\counter_reg_n_0_[2] ),
        .I5(tx_valid),
        .O(\counter[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[3]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_2
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_3
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(WEA));
  LUT3 #(
    .INIT(8'h20)) 
    \r_addr[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .O(\r_addr_reg[7] ));
  LUT5 #(
    .INIT(32'h08880808)) 
    \rx_data[9]_i_1 
       (.I0(cs[1]),
        .I1(R_c0__4),
        .I2(cs[2]),
        .I3(rx_data1__3),
        .I4(cs[0]),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \rx_data[9]_i_2 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(\counter_reg_n_0_[2] ),
        .O(R_c0__4));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAA888)) 
    \rx_data[9]_i_3 
       (.I0(tx_valid),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\counter_reg_n_0_[3] ),
        .O(rx_data1__3));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_reg[8]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [0]),
        .Q(\rx_data_reg[8]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [1]),
        .Q(\rx_data_reg[8]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [2]),
        .Q(\rx_data_reg[8]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [3]),
        .Q(\rx_data_reg[8]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [4]),
        .Q(\rx_data_reg[8]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [5]),
        .Q(\rx_data_reg[8]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [6]),
        .Q(\rx_data_reg[8]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_reg[8]_0 [7]),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data[8]),
        .Q(rx_data[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8A00FFFF8A000000)) 
    rx_valid_i_1
       (.I0(rx_valid_i_2_n_0),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(rx_valid_i_3_n_0),
        .I5(rx_valid),
        .O(rx_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    rx_valid_i_2
       (.I0(\counter_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\counter_reg_n_0_[2] ),
        .O(rx_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFAF2F000F0F0F0F)) 
    rx_valid_i_3
       (.I0(cs[0]),
        .I1(rx_data1__3),
        .I2(cs[2]),
        .I3(R_c0__4),
        .I4(rx_valid_i_2_n_0),
        .I5(cs[1]),
        .O(rx_valid_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    tx_valid_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(tx_valid),
        .O(tx_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \w_addr[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(E));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module WRAPPER
   (clk,
    rst_n,
    MISO,
    MOSI,
    SS_n);
  input clk;
  input rst_n;
  output MISO;
  input MOSI;
  input SS_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire R_n_1;
  wire R_n_2;
  wire SS_n;
  wire SS_n_IBUF;
  wire S_n_1;
  wire S_n_13;
  wire S_n_15;
  wire S_n_16;
  wire S_n_2;
  wire S_n_3;
  wire S_n_4;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire [0:36]sl_iport0_o_0;
  wire [0:16]sl_oport0_i_0;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  RAM R
       (.CLK(clk_IBUF_BUFG),
        .E(S_n_15),
        .MISO_reg(R_n_1),
        .MISO_reg_0(R_n_2),
        .Q(rx_data),
        .WEA(mem),
        .\counter_reg[1] ({S_n_2,S_n_3}),
        .rst_n(S_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (S_n_13),
        .\rx_data_reg[8]_0 (S_n_4),
        .rx_valid_reg(S_n_16),
        .tx_valid(tx_valid));
  Slave S
       (.CLK(clk_IBUF_BUFG),
        .D(MOSI_IBUF),
        .E(S_n_15),
        .MISO_OBUF(MISO_OBUF),
        .Q({S_n_2,S_n_3}),
        .SR(S_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .mem_reg(S_n_13),
        .mem_reg_0(R_n_1),
        .mem_reg_1(R_n_2),
        .\r_addr_reg[7] (S_n_16),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8]_0 (rx_data),
        .tx_valid(tx_valid),
        .tx_valid_reg(S_n_4));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* CORE_GENERATION_INFO = "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(clk_IBUF_BUFG),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  (* CORE_GENERATION_INFO = "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=1,C_ADV_TRIGGER=false,C_DATA_DEPTH=1024,C_EN_STRG_QUAL=false,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=5,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=1,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=1,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=1,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=1,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}" *) 
  (* DEBUG_PORT_clk = "n:clk_IBUF_BUFG" *) 
  (* DEBUG_PORT_probe0 = "n:clk_IBUF" *) 
  (* DEBUG_PORT_probe1 = "n:MISO_OBUF" *) 
  (* DEBUG_PORT_probe2 = "n:MOSI_IBUF" *) 
  (* DEBUG_PORT_probe3 = "n:rst_n_IBUF" *) 
  (* DEBUG_PORT_probe4 = "n:SS_n_IBUF" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(clk_IBUF_BUFG),
        .probe0(clk_IBUF),
        .probe1(MISO_OBUF),
        .probe2(MOSI_IBUF),
        .probe3(rst_n_IBUF),
        .probe4(SS_n_IBUF));
endmodule
