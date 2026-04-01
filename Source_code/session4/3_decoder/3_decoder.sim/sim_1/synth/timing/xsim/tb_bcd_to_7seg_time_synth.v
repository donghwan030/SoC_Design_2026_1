// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Apr  1 15:57:45 2026
// Host        : ky-cds-semi running 64-bit Red Hat Enterprise Linux release 8.1 (Ootpa)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home_cds/std012/SoC_Design_2026_1/SoC_Design_2026_1/Source_code/session4/3_decoder/3_decoder.sim/sim_1/synth/timing/xsim/tb_bcd_to_7seg_time_synth.v
// Design      : bcd_to_7seg
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module bcd_to_7seg
   (bcd,
    seg);
  input [3:0]bcd;
  output [6:0]seg;

  wire [3:0]bcd;
  wire [3:0]bcd_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;

initial begin
 $sdf_annotate("tb_bcd_to_7seg_time_synth.sdf",,,,"tool_control");
end
  IBUF \bcd_IBUF[0]_inst 
       (.I(bcd[0]),
        .O(bcd_IBUF[0]));
  IBUF \bcd_IBUF[1]_inst 
       (.I(bcd[1]),
        .O(bcd_IBUF[1]));
  IBUF \bcd_IBUF[2]_inst 
       (.I(bcd[2]),
        .O(bcd_IBUF[2]));
  IBUF \bcd_IBUF[3]_inst 
       (.I(bcd[3]),
        .O(bcd_IBUF[3]));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h155A)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[0]),
        .I2(bcd_IBUF[2]),
        .I3(bcd_IBUF[1]),
        .O(seg_OBUF[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0467)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[2]),
        .I2(bcd_IBUF[0]),
        .I3(bcd_IBUF[1]),
        .O(seg_OBUF[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[1]),
        .I2(bcd_IBUF[2]),
        .I3(bcd_IBUF[0]),
        .O(seg_OBUF[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1653)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[2]),
        .I2(bcd_IBUF[1]),
        .I3(bcd_IBUF[0]),
        .O(seg_OBUF[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[2]),
        .I2(bcd_IBUF[1]),
        .I3(bcd_IBUF[0]),
        .O(seg_OBUF[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h415F)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[0]),
        .I2(bcd_IBUF[1]),
        .I3(bcd_IBUF[2]),
        .O(seg_OBUF[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  LUT4 #(
    .INIT(16'h5653)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[2]),
        .I2(bcd_IBUF[1]),
        .I3(bcd_IBUF[0]),
        .O(seg_OBUF[6]));
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
