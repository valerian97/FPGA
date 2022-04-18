//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Tue Apr 19 00:04:23 2022
//Host        : valerianOne running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (Seven_Seg,
    digit_sel,
    reset,
    sw,
    sys_clock);
  output [7:0]Seven_Seg;
  output [3:0]digit_sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  input [4:0]sw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;

  wire clk_wiz_0_clk_5MHz;
  wire clk_wiz_0_locked;
  wire [3:0]display_ctrl_0_display_select;
  wire [7:0]main_0_seven_7;
  wire reset_1;
  wire [4:0]sw_1;
  wire sys_clock_1;

  assign Seven_Seg[7:0] = main_0_seven_7;
  assign digit_sel[3:0] = display_ctrl_0_display_select;
  assign reset_1 = reset;
  assign sw_1 = sw[4:0];
  assign sys_clock_1 = sys_clock;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_5MHz(clk_wiz_0_clk_5MHz),
        .clk_in1(sys_clock_1),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
  design_1_display_ctrl_0_0 display_ctrl_0
       (.clk_5Mhz(clk_wiz_0_clk_5MHz),
        .clk_locked(clk_wiz_0_locked),
        .display_select(display_ctrl_0_display_select));
  design_1_main_0_1 main_0
       (.seven_7(main_0_seven_7),
        .switch(sw_1));
endmodule
