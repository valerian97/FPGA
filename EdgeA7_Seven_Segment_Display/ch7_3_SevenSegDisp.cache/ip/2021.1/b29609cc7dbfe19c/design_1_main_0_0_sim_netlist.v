// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Apr 18 21:09:44 2022
// Host        : valerianOne running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_main_0_0_sim_netlist.v
// Design      : design_1_main_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_main_0_0,main,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "main,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (switch,
    clock,
    clk_5M,
    clk_locked,
    seven_7);
  input [4:0]switch;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clock, INSERT_VIP 0" *) input clock;
  input clk_5M;
  input clk_locked;
  output [7:0]seven_7;

  wire [7:0]seven_7;
  wire [4:0]switch;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_main inst
       (.seven_7(seven_7),
        .switch(switch));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_driver7seg
   (seven_7,
    switch);
  output [7:0]seven_7;
  input [4:0]switch;

  wire [7:0]seven_7;
  wire [4:0]switch;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55575755)) 
    \seven_7[0]_INST_0 
       (.I0(switch[4]),
        .I1(switch[1]),
        .I2(switch[3]),
        .I3(switch[0]),
        .I4(switch[2]),
        .O(seven_7[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFDD5D5)) 
    \seven_7[1]_INST_0 
       (.I0(switch[4]),
        .I1(switch[3]),
        .I2(switch[1]),
        .I3(switch[0]),
        .I4(switch[2]),
        .O(seven_7[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF5F7D5D5)) 
    \seven_7[2]_INST_0 
       (.I0(switch[4]),
        .I1(switch[2]),
        .I2(switch[3]),
        .I3(switch[0]),
        .I4(switch[1]),
        .O(seven_7[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5D575755)) 
    \seven_7[3]_INST_0 
       (.I0(switch[4]),
        .I1(switch[1]),
        .I2(switch[3]),
        .I3(switch[2]),
        .I4(switch[0]),
        .O(seven_7[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h77557F75)) 
    \seven_7[4]_INST_0 
       (.I0(switch[4]),
        .I1(switch[3]),
        .I2(switch[2]),
        .I3(switch[0]),
        .I4(switch[1]),
        .O(seven_7[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5555DF5D)) 
    \seven_7[5]_INST_0 
       (.I0(switch[4]),
        .I1(switch[1]),
        .I2(switch[2]),
        .I3(switch[0]),
        .I4(switch[3]),
        .O(seven_7[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h5555D55F)) 
    \seven_7[6]_INST_0 
       (.I0(switch[4]),
        .I1(switch[0]),
        .I2(switch[1]),
        .I3(switch[2]),
        .I4(switch[3]),
        .O(seven_7[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    \seven_7[7]_INST_0 
       (.I0(switch[2]),
        .I1(switch[1]),
        .I2(switch[4]),
        .I3(switch[3]),
        .O(seven_7[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_main
   (seven_7,
    switch);
  output [7:0]seven_7;
  input [4:0]switch;

  wire [7:0]seven_7;
  wire [4:0]switch;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_driver7seg s0
       (.seven_7(seven_7),
        .switch(switch));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
