// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Dec  8 16:11:42 2019
// Host        : DESKTOP-QD0AM58 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/17073/Desktop/FPGA/IntMatMulCore/IntMatMulCore/IntMatMulCore.srcs/sources_1/ip/dpram1024x64_1/dpram1024x64_stub.v
// Design      : dpram1024x64
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module dpram1024x64(clka, ena, addra, douta, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[3:0],douta[15:0],clkb,enb,addrb[3:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [3:0]addra;
  output [15:0]douta;
  input clkb;
  input enb;
  input [3:0]addrb;
  output [15:0]doutb;
endmodule
