// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Apr 19 00:53:42 2022
// Host        : valerianOne running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Carlton/DigitalSystemDesignBook/ch7_3_SevenSegDisp/ch7_3_SevenSegDisp.gen/sources_1/bd/design_1/ip/design_1_main_0_1/design_1_main_0_1_stub.v
// Design      : design_1_main_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "main,Vivado 2021.1" *)
module design_1_main_0_1(switch, seven_7, output_led)
/* synthesis syn_black_box black_box_pad_pin="switch[4:0],seven_7[7:0],output_led[3:0]" */;
  input [4:0]switch;
  output [7:0]seven_7;
  output [3:0]output_led;
endmodule
