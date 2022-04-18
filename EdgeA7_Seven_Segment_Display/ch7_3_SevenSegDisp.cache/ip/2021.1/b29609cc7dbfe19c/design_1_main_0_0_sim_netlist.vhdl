-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Apr 18 21:09:44 2022
-- Host        : valerianOne running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_main_0_0_sim_netlist.vhdl
-- Design      : design_1_main_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_driver7seg is
  port (
    seven_7 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_driver7seg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_driver7seg is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seven_7[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seven_7[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seven_7[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seven_7[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seven_7[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seven_7[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seven_7[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seven_7[7]_INST_0\ : label is "soft_lutpair3";
begin
\seven_7[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55575755"
    )
        port map (
      I0 => switch(4),
      I1 => switch(1),
      I2 => switch(3),
      I3 => switch(0),
      I4 => switch(2),
      O => seven_7(0)
    );
\seven_7[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFDD5D5"
    )
        port map (
      I0 => switch(4),
      I1 => switch(3),
      I2 => switch(1),
      I3 => switch(0),
      I4 => switch(2),
      O => seven_7(1)
    );
\seven_7[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5F7D5D5"
    )
        port map (
      I0 => switch(4),
      I1 => switch(2),
      I2 => switch(3),
      I3 => switch(0),
      I4 => switch(1),
      O => seven_7(2)
    );
\seven_7[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D575755"
    )
        port map (
      I0 => switch(4),
      I1 => switch(1),
      I2 => switch(3),
      I3 => switch(2),
      I4 => switch(0),
      O => seven_7(3)
    );
\seven_7[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77557F75"
    )
        port map (
      I0 => switch(4),
      I1 => switch(3),
      I2 => switch(2),
      I3 => switch(0),
      I4 => switch(1),
      O => seven_7(4)
    );
\seven_7[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555DF5D"
    )
        port map (
      I0 => switch(4),
      I1 => switch(1),
      I2 => switch(2),
      I3 => switch(0),
      I4 => switch(3),
      O => seven_7(5)
    );
\seven_7[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555D55F"
    )
        port map (
      I0 => switch(4),
      I1 => switch(0),
      I2 => switch(1),
      I3 => switch(2),
      I4 => switch(3),
      O => seven_7(6)
    );
\seven_7[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => switch(2),
      I1 => switch(1),
      I2 => switch(4),
      I3 => switch(3),
      O => seven_7(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_main is
  port (
    seven_7 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_main;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_main is
begin
s0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_driver7seg
     port map (
      seven_7(7 downto 0) => seven_7(7 downto 0),
      switch(4 downto 0) => switch(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    switch : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clock : in STD_LOGIC;
    clk_5M : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    seven_7 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_main_0_0,main,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "main,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME clock, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clock, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_main
     port map (
      seven_7(7 downto 0) => seven_7(7 downto 0),
      switch(4 downto 0) => switch(4 downto 0)
    );
end STRUCTURE;
