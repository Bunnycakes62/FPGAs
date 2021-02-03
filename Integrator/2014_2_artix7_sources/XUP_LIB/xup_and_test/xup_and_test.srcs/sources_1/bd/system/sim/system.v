//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Mon Nov 25 19:11:44 2019
//Host        : DESKTOP-QD0AM58 running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (a_0,
    a_1,
    b_0,
    b_1,
    y_0,
    y_1);
  input a_0;
  input [2:0]a_1;
  input b_0;
  input [2:0]b_1;
  output y_0;
  output [2:0]y_1;

  wire a_0_1;
  wire [2:0]a_1_1;
  wire b_0_1;
  wire [2:0]b_1_1;
  wire xup_and2_0_y;
  wire [2:0]xup_and_vector_0_y;

  assign a_0_1 = a_0;
  assign a_1_1 = a_1[2:0];
  assign b_0_1 = b_0;
  assign b_1_1 = b_1[2:0];
  assign y_0 = xup_and2_0_y;
  assign y_1[2:0] = xup_and_vector_0_y;
  system_xup_and2_0_0 xup_and2_0
       (.a(a_0_1),
        .b(b_0_1),
        .y(xup_and2_0_y));
  system_xup_and_vector_0_0 xup_and_vector_0
       (.a(a_1_1),
        .b(b_1_1),
        .y(xup_and_vector_0_y));
endmodule
