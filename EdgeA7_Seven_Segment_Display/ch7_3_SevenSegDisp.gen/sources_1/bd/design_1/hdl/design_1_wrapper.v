//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Tue Apr 19 00:52:21 2022
//Host        : valerianOne running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Seven_Seg,
    digit_sel,
    led,
    reset,
    sw,
    sys_clock);
  output [7:0]Seven_Seg;
  output [3:0]digit_sel;
  output [3:0]led;
  input reset;
  input [4:0]sw;
  input sys_clock;

  wire [7:0]Seven_Seg;
  wire [3:0]digit_sel;
  wire [3:0]led;
  wire reset;
  wire [4:0]sw;
  wire sys_clock;

  design_1 design_1_i
       (.Seven_Seg(Seven_Seg),
        .digit_sel(digit_sel),
        .led(led),
        .reset(reset),
        .sw(sw),
        .sys_clock(sys_clock));
endmodule
