-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Nov 25 18:49:27 2019
-- Host        : DESKTOP-QD0AM58 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/17073/Desktop/FPGA/Integrator/2014_2_artix7_sources/XUP_LIB/xup_and_test/xup_and_test.srcs/sources_1/bd/system/ip/system_xup_and_vector_0_0/system_xup_and_vector_0_0_sim_netlist.vhdl
-- Design      : system_xup_and_vector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_xup_and_vector_0_0_xup_and_vector is
  port (
    y : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    b : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_xup_and_vector_0_0_xup_and_vector : entity is "xup_and_vector";
end system_xup_and_vector_0_0_xup_and_vector;

architecture STRUCTURE of system_xup_and_vector_0_0_xup_and_vector is
begin
\y[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => y(0)
    );
\y[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      O => y(1)
    );
\y[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      O => y(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_xup_and_vector_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    b : in STD_LOGIC_VECTOR ( 2 downto 0 );
    y : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_xup_and_vector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_xup_and_vector_0_0 : entity is "system_xup_and_vector_0_0,xup_and_vector,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_xup_and_vector_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_xup_and_vector_0_0 : entity is "xup_and_vector,Vivado 2019.2";
end system_xup_and_vector_0_0;

architecture STRUCTURE of system_xup_and_vector_0_0 is
begin
inst: entity work.system_xup_and_vector_0_0_xup_and_vector
     port map (
      a(2 downto 0) => a(2 downto 0),
      b(2 downto 0) => b(2 downto 0),
      y(2 downto 0) => y(2 downto 0)
    );
end STRUCTURE;
