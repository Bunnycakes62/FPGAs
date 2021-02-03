// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Dec  2 20:21:00 2019
// Host        : DESKTOP-QD0AM58 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/17073/Desktop/FPGA/FloatingPointOperator/FloatingPointMultiplication.srcs/sources_1/bd/design_1/design_1_stub.v
// Design      : design_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1(A_in_tdata, A_in_tready, A_in_tvalid, 
  B_in_tdata, B_in_tready, B_in_tvalid, C_out_tdata, C_out_tready, C_out_tvalid, sys_clock)
/* synthesis syn_black_box black_box_pad_pin="A_in_tdata[31:0],A_in_tready,A_in_tvalid,B_in_tdata[31:0],B_in_tready,B_in_tvalid,C_out_tdata[31:0],C_out_tready,C_out_tvalid,sys_clock" */;
  input [31:0]A_in_tdata;
  output A_in_tready;
  input A_in_tvalid;
  input [31:0]B_in_tdata;
  output B_in_tready;
  input B_in_tvalid;
  output [31:0]C_out_tdata;
  input C_out_tready;
  output C_out_tvalid;
  input sys_clock;
endmodule
