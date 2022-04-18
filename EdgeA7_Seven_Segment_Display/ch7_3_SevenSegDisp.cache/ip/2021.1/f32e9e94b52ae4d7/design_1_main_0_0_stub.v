// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Apr 18 21:21:10 2022
// Host        : valerianOne running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_main_0_0_stub.v
// Design      : design_1_main_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "main,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(switch, clock, clk_5M, clk_locked, enable7Seg, 
  seven_7)
/* synthesis syn_black_box black_box_pad_pin="switch[4:0],clock,clk_5M,clk_locked,enable7Seg,seven_7[7:0]" */;
  input [4:0]switch;
  input clock;
  input clk_5M;
  input clk_locked;
  output enable7Seg;
  output [7:0]seven_7;
endmodule
