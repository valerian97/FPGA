-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Apr 19 00:53:42 2022
-- Host        : valerianOne running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Carlton/DigitalSystemDesignBook/ch7_3_SevenSegDisp/ch7_3_SevenSegDisp.gen/sources_1/bd/design_1/ip/design_1_main_0_1/design_1_main_0_1_sim_netlist.vhdl
-- Design      : design_1_main_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_main_0_1_driver7seg is
  port (
    seven_7 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_main_0_1_driver7seg : entity is "driver7seg";
end design_1_main_0_1_driver7seg;

architecture STRUCTURE of design_1_main_0_1_driver7seg is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seven_7[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seven_7[4]_INST_0\ : label is "soft_lutpair0";
begin
\seven_7[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACE8"
    )
        port map (
      I0 => switch(3),
      I1 => switch(2),
      I2 => switch(1),
      I3 => switch(0),
      O => seven_7(0)
    );
\seven_7[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB0"
    )
        port map (
      I0 => switch(3),
      I1 => switch(0),
      I2 => switch(1),
      I3 => switch(2),
      O => seven_7(1)
    );
\seven_7[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => switch(3),
      I1 => switch(1),
      I2 => switch(2),
      I3 => switch(0),
      O => seven_7(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_main_0_1_main is
  port (
    seven_7 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_main_0_1_main : entity is "main";
end design_1_main_0_1_main;

architecture STRUCTURE of design_1_main_0_1_main is
begin
s0: entity work.design_1_main_0_1_driver7seg
     port map (
      seven_7(2 downto 0) => seven_7(2 downto 0),
      switch(3 downto 0) => switch(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_main_0_1 is
  port (
    switch : in STD_LOGIC_VECTOR ( 4 downto 0 );
    seven_7 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    output_led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_main_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_main_0_1 : entity is "design_1_main_0_1,main,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_main_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_main_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_main_0_1 : entity is "main,Vivado 2021.1";
end design_1_main_0_1;

architecture STRUCTURE of design_1_main_0_1 is
  signal \<const1>\ : STD_LOGIC;
  signal \^seven_7\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^switch\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  \^switch\(3 downto 0) <= switch(3 downto 0);
  output_led(3 downto 0) <= \^switch\(3 downto 0);
  seven_7(7) <= \<const1>\;
  seven_7(6 downto 0) <= \^seven_7\(6 downto 0);
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_main_0_1_main
     port map (
      seven_7(2) => \^seven_7\(4),
      seven_7(1 downto 0) => \^seven_7\(2 downto 1),
      switch(3 downto 0) => \^switch\(3 downto 0)
    );
\seven_7[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => \^switch\(1),
      I1 => \^switch\(0),
      I2 => \^switch\(2),
      I3 => \^switch\(3),
      O => \^seven_7\(0)
    );
\seven_7[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0094"
    )
        port map (
      I0 => \^switch\(1),
      I1 => \^switch\(0),
      I2 => \^switch\(2),
      I3 => \^switch\(3),
      O => \^seven_7\(3)
    );
\seven_7[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008E"
    )
        port map (
      I0 => \^switch\(0),
      I1 => \^switch\(1),
      I2 => \^switch\(2),
      I3 => \^switch\(3),
      O => \^seven_7\(5)
    );
\seven_7[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => \^switch\(1),
      I1 => \^switch\(2),
      I2 => \^switch\(0),
      I3 => \^switch\(3),
      O => \^seven_7\(6)
    );
end STRUCTURE;
