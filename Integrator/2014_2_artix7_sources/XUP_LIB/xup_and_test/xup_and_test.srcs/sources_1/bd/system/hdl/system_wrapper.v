//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Mon Nov 25 19:11:44 2019
//Host        : DESKTOP-QD0AM58 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
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

  wire a_0;
  wire [2:0]a_1;
  wire b_0;
  wire [2:0]b_1;
  wire y_0;
  wire [2:0]y_1;

  system system_i
       (.a_0(a_0),
        .a_1(a_1),
        .b_0(b_0),
        .b_1(b_1),
        .y_0(y_0),
        .y_1(y_1));
endmodule
