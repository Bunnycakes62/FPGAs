//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Mon Dec  2 20:19:32 2019
//Host        : DESKTOP-QD0AM58 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (A_in_tdata,
    A_in_tready,
    A_in_tvalid,
    B_in_tdata,
    B_in_tready,
    B_in_tvalid,
    C_out_tdata,
    C_out_tready,
    C_out_tvalid,
    sys_clock);
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

  wire [31:0]A_in_tdata;
  wire A_in_tready;
  wire A_in_tvalid;
  wire [31:0]B_in_tdata;
  wire B_in_tready;
  wire B_in_tvalid;
  wire [31:0]C_out_tdata;
  wire C_out_tready;
  wire C_out_tvalid;
  wire sys_clock;

  design_1 design_1_i
       (.A_in_tdata(A_in_tdata),
        .A_in_tready(A_in_tready),
        .A_in_tvalid(A_in_tvalid),
        .B_in_tdata(B_in_tdata),
        .B_in_tready(B_in_tready),
        .B_in_tvalid(B_in_tvalid),
        .C_out_tdata(C_out_tdata),
        .C_out_tready(C_out_tready),
        .C_out_tvalid(C_out_tvalid),
        .sys_clock(sys_clock));
endmodule
