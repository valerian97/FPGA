-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Apr 18 23:50:01 2022
-- Host        : valerianOne running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Carlton/DigitalSystemDesignBook/ch7_3_SevenSegDisp/ch7_3_SevenSegDisp.gen/sources_1/bd/design_1/ip/design_1_display_ctrl_0_0/design_1_display_ctrl_0_0_sim_netlist.vhdl
-- Design      : design_1_display_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_display_ctrl_0_0 is
  port (
    clk_5Mhz : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    display_select : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_display_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_display_ctrl_0_0 : entity is "design_1_display_ctrl_0_0,display_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_display_ctrl_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_display_ctrl_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_display_ctrl_0_0 : entity is "display_ctrl,Vivado 2021.1";
end design_1_display_ctrl_0_0;

architecture STRUCTURE of design_1_display_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  display_select(3) <= \<const0>\;
  display_select(2) <= \<const0>\;
  display_select(1) <= \<const0>\;
  display_select(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
