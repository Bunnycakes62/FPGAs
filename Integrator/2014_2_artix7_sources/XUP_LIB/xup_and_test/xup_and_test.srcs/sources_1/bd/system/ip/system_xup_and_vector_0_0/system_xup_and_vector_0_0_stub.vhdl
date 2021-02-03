-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Nov 25 18:49:27 2019
-- Host        : DESKTOP-QD0AM58 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/17073/Desktop/FPGA/Integrator/2014_2_artix7_sources/XUP_LIB/xup_and_test/xup_and_test.srcs/sources_1/bd/system/ip/system_xup_and_vector_0_0/system_xup_and_vector_0_0_stub.vhdl
-- Design      : system_xup_and_vector_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_xup_and_vector_0_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    b : in STD_LOGIC_VECTOR ( 2 downto 0 );
    y : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end system_xup_and_vector_0_0;

architecture stub of system_xup_and_vector_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[2:0],b[2:0],y[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_and_vector,Vivado 2019.2";
begin
end;
