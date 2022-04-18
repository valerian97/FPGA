-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Apr 19 00:36:10 2022
-- Host        : valerianOne running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Carlton/DigitalSystemDesignBook/ch7_3_SevenSegDisp/ch7_3_SevenSegDisp.gen/sources_1/bd/design_1/ip/design_1_display_ctrl_0_0/design_1_display_ctrl_0_0_stub.vhdl
-- Design      : design_1_display_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_display_ctrl_0_0 is
  Port ( 
    clk_5Mhz : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    display_select : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_display_ctrl_0_0;

architecture stub of design_1_display_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_5Mhz,clk_locked,display_select[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "display_ctrl,Vivado 2021.1";
begin
end;
