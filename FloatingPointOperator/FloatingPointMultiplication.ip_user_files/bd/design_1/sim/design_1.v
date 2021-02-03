//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Mon Dec  2 20:19:32 2019
//Host        : DESKTOP-QD0AM58 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 A_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME A_in, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]A_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 A_in " *) output A_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 A_in " *) input A_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 B_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME B_in, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]B_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 B_in " *) output B_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 B_in " *) input B_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 C_out " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C_out, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_underflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value underflow} enabled {attribs {resolve_type generated dependency underflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency underflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value overflow} enabled {attribs {resolve_type generated dependency overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_invalid_op {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value invalid_op} enabled {attribs {resolve_type generated dependency invalid_op_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency invalid_op_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency invalid_op_bitoffset format long minimum {} maximum {}} value 0}}} field_div_by_zero {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value div_by_zero} enabled {attribs {resolve_type generated dependency div_by_zero_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency div_by_zero_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency div_by_zero_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_input_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_input_overflow} enabled {attribs {resolve_type generated dependency accum_input_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_input_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_input_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_overflow} enabled {attribs {resolve_type generated dependency accum_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency a_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_c_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value c_tuser} enabled {attribs {resolve_type generated dependency c_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency c_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency c_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_operation_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value operation_tuser} enabled {attribs {resolve_type generated dependency operation_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency operation_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency operation_tuser_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]C_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 C_out " *) input C_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 C_out " *) output C_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire [31:0]Matrix_A_in_TDATA;
  wire Matrix_A_in_TREADY;
  wire Matrix_A_in_TVALID;
  wire [31:0]S_AXIS_A_1_1_TDATA;
  wire S_AXIS_A_1_1_TREADY;
  wire S_AXIS_A_1_1_TVALID;
  wire clk_wiz_clk_out1;
  wire [31:0]fixed_to_float1_M_AXIS_RESULT_TDATA;
  wire fixed_to_float1_M_AXIS_RESULT_TREADY;
  wire fixed_to_float1_M_AXIS_RESULT_TVALID;
  wire [31:0]fixed_to_float_M_AXIS_RESULT_TDATA;
  wire fixed_to_float_M_AXIS_RESULT_TREADY;
  wire fixed_to_float_M_AXIS_RESULT_TVALID;
  wire [31:0]float_multiplication_M_AXIS_RESULT_TDATA;
  wire float_multiplication_M_AXIS_RESULT_TREADY;
  wire float_multiplication_M_AXIS_RESULT_TVALID;
  wire [31:0]float_to_fixed_M_AXIS_RESULT_TDATA;
  wire float_to_fixed_M_AXIS_RESULT_TREADY;
  wire float_to_fixed_M_AXIS_RESULT_TVALID;
  wire sys_clock_1;

  assign A_in_tready = Matrix_A_in_TREADY;
  assign B_in_tready = S_AXIS_A_1_1_TREADY;
  assign C_out_tdata[31:0] = float_to_fixed_M_AXIS_RESULT_TDATA;
  assign C_out_tvalid = float_to_fixed_M_AXIS_RESULT_TVALID;
  assign Matrix_A_in_TDATA = A_in_tdata[31:0];
  assign Matrix_A_in_TVALID = A_in_tvalid;
  assign S_AXIS_A_1_1_TDATA = B_in_tdata[31:0];
  assign S_AXIS_A_1_1_TVALID = B_in_tvalid;
  assign float_to_fixed_M_AXIS_RESULT_TREADY = C_out_tready;
  assign sys_clock_1 = sys_clock;
  design_1_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .reset(1'b0));
  design_1_floating_point_1_0 fixed_to_float
       (.aclk(clk_wiz_clk_out1),
        .m_axis_result_tdata(fixed_to_float_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(fixed_to_float_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(fixed_to_float_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(Matrix_A_in_TDATA),
        .s_axis_a_tready(Matrix_A_in_TREADY),
        .s_axis_a_tvalid(Matrix_A_in_TVALID));
  design_1_fixed_to_float_0 fixed_to_float1
       (.aclk(clk_wiz_clk_out1),
        .m_axis_result_tdata(fixed_to_float1_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(fixed_to_float1_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(fixed_to_float1_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(S_AXIS_A_1_1_TDATA),
        .s_axis_a_tready(S_AXIS_A_1_1_TREADY),
        .s_axis_a_tvalid(S_AXIS_A_1_1_TVALID));
  design_1_floating_point_0_1 float_multiplication
       (.aclk(clk_wiz_clk_out1),
        .m_axis_result_tdata(float_multiplication_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(float_multiplication_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(float_multiplication_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(fixed_to_float_M_AXIS_RESULT_TDATA),
        .s_axis_a_tready(fixed_to_float_M_AXIS_RESULT_TREADY),
        .s_axis_a_tvalid(fixed_to_float_M_AXIS_RESULT_TVALID),
        .s_axis_b_tdata(fixed_to_float1_M_AXIS_RESULT_TDATA),
        .s_axis_b_tready(fixed_to_float1_M_AXIS_RESULT_TREADY),
        .s_axis_b_tvalid(fixed_to_float1_M_AXIS_RESULT_TVALID));
  design_1_floating_point_0_0 float_to_fixed
       (.aclk(clk_wiz_clk_out1),
        .m_axis_result_tdata(float_to_fixed_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(float_to_fixed_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(float_to_fixed_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(float_multiplication_M_AXIS_RESULT_TDATA),
        .s_axis_a_tready(float_multiplication_M_AXIS_RESULT_TREADY),
        .s_axis_a_tvalid(float_multiplication_M_AXIS_RESULT_TVALID));
endmodule
