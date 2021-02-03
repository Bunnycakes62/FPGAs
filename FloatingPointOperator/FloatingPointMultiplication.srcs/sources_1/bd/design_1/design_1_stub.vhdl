-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Dec  2 20:21:00 2019
-- Host        : DESKTOP-QD0AM58 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/17073/Desktop/FPGA/FloatingPointOperator/FloatingPointMultiplication.srcs/sources_1/bd/design_1/design_1_stub.vhdl
-- Design      : design_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1 is
  Port ( 
    A_in_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_in_tready : out STD_LOGIC;
    A_in_tvalid : in STD_LOGIC;
    B_in_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B_in_tready : out STD_LOGIC;
    B_in_tvalid : in STD_LOGIC;
    C_out_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    C_out_tready : in STD_LOGIC;
    C_out_tvalid : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );

end design_1;

architecture stub of design_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A_in_tdata[31:0],A_in_tready,A_in_tvalid,B_in_tdata[31:0],B_in_tready,B_in_tvalid,C_out_tdata[31:0],C_out_tready,C_out_tvalid,sys_clock";
begin
end;
