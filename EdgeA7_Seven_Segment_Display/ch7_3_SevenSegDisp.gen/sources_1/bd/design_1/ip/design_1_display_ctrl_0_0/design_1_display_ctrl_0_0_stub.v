// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Apr 19 00:36:10 2022
// Host        : valerianOne running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Carlton/DigitalSystemDesignBook/ch7_3_SevenSegDisp/ch7_3_SevenSegDisp.gen/sources_1/bd/design_1/ip/design_1_display_ctrl_0_0/design_1_display_ctrl_0_0_stub.v
// Design      : design_1_display_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "display_ctrl,Vivado 2021.1" *)
module design_1_display_ctrl_0_0(clk_5Mhz, clk_locked, display_select)
/* synthesis syn_black_box black_box_pad_pin="clk_5Mhz,clk_locked,display_select[3:0]" */;
  input clk_5Mhz;
  input clk_locked;
  output [3:0]display_select;
endmodule
