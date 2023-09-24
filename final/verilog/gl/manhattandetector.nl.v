// This is the unpowered netlist.
module manhattandetector (clock,
    detector_out,
    reset,
    sequence_in);
 input clock;
 output detector_out;
 input reset;
 input sequence_in;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire clknet_0_clock;
 wire clknet_1_0__leaf_clock;
 wire clknet_1_1__leaf_clock;
 wire \current_state[0] ;
 wire \current_state[1] ;
 wire \current_state[2] ;
 wire net1;
 wire net2;
 wire net3;
 wire \next_state[0] ;
 wire \next_state[1] ;
 wire \next_state[2] ;

 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_0_clock_A (.DIODE(clock));
 sky130_fd_sc_hd__diode_2 ANTENNA_input1_A (.DIODE(reset));
 sky130_fd_sc_hd__diode_2 ANTENNA_input2_A (.DIODE(sequence_in));
 sky130_ef_sc_hd__decap_12 FILLER_0_0_15 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_29 (.VPB(VPWR),
    .VNB(VGND));
 sky130_ef_sc_hd__decap_12 FILLER_0_0_3 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_4 FILLER_0_0_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_61 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_20 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_29 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_1 FILLER_0_10_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_41 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_1 FILLER_0_10_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_28 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_33 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_39 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_4 FILLER_0_1_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_3 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_8 FILLER_0_2_34 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_51 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_2 FILLER_0_3_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_53 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_3 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_2 FILLER_0_4_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_42 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_50 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_16 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_38 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_6 FILLER_0_5_50 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_33 (.VPB(VPWR),
    .VNB(VGND));
 sky130_ef_sc_hd__decap_12 FILLER_0_6_45 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_6 FILLER_0_6_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_3 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__fill_2 FILLER_0_7_38 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_47 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_52 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_52 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_60 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_15 (.VPB(VPWR),
    .VNB(VGND));
 sky130_ef_sc_hd__decap_12 FILLER_0_9_27 (.VPB(VPWR),
    .VNB(VGND));
 sky130_ef_sc_hd__decap_12 FILLER_0_9_3 (.VPB(VPWR),
    .VNB(VGND));
 sky130_ef_sc_hd__decap_12 FILLER_0_9_39 (.VPB(VPWR),
    .VNB(VGND));
 sky130_fd_sc_hd__decap_4 FILLER_0_9_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_32 ();
 sky130_fd_sc_hd__clkbuf_2 _14_ (.A(\current_state[2] ),
    .X(_04_));
 sky130_fd_sc_hd__nor2_1 _15_ (.A(\current_state[1] ),
    .B(\current_state[0] ),
    .Y(_05_));
 sky130_fd_sc_hd__nor2_1 _16_ (.A(net2),
    .B(_04_),
    .Y(_06_));
 sky130_fd_sc_hd__nand2_1 _17_ (.A(net2),
    .B(_04_),
    .Y(_07_));
 sky130_fd_sc_hd__o21a_1 _18_ (.A1(\current_state[0] ),
    .A2(_06_),
    .B1(_07_),
    .X(_08_));
 sky130_fd_sc_hd__o32ai_1 _19_ (.A1(net2),
    .A2(_04_),
    .A3(_05_),
    .B1(_08_),
    .B2(\current_state[1] ),
    .Y(\next_state[0] ));
 sky130_fd_sc_hd__a21oi_1 _20_ (.A1(\current_state[0] ),
    .A2(_04_),
    .B1(\current_state[1] ),
    .Y(_09_));
 sky130_fd_sc_hd__and2b_1 _21_ (.A_N(\current_state[2] ),
    .B(\current_state[1] ),
    .X(_10_));
 sky130_fd_sc_hd__o21ai_1 _22_ (.A1(\current_state[0] ),
    .A2(_04_),
    .B1(net2),
    .Y(_11_));
 sky130_fd_sc_hd__mux2_1 _23_ (.A0(_09_),
    .A1(_10_),
    .S(_11_),
    .X(_12_));
 sky130_fd_sc_hd__clkbuf_1 _24_ (.A(_12_),
    .X(\next_state[1] ));
 sky130_fd_sc_hd__mux2_1 _25_ (.A0(_04_),
    .A1(\current_state[0] ),
    .S(net2),
    .X(_13_));
 sky130_fd_sc_hd__o21a_1 _26_ (.A1(_05_),
    .A2(_10_),
    .B1(_13_),
    .X(\next_state[2] ));
 sky130_fd_sc_hd__nor4b_1 _27_ (.A(\current_state[1] ),
    .B(net1),
    .C(_07_),
    .D_N(\current_state[0] ),
    .Y(_03_));
 sky130_fd_sc_hd__inv_2 _28_ (.A(net1),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _29_ (.A(net1),
    .Y(_01_));
 sky130_fd_sc_hd__inv_2 _30_ (.A(net1),
    .Y(_02_));
 sky130_fd_sc_hd__dfxtp_1 _31_ (.CLK(clknet_1_1__leaf_clock),
    .D(_03_),
    .Q(net3));
 sky130_fd_sc_hd__dfrtp_2 _32_ (.CLK(clknet_1_1__leaf_clock),
    .D(\next_state[0] ),
    .RESET_B(_00_),
    .Q(\current_state[0] ));
 sky130_fd_sc_hd__dfrtp_1 _33_ (.CLK(clknet_1_0__leaf_clock),
    .D(\next_state[1] ),
    .RESET_B(_01_),
    .Q(\current_state[1] ));
 sky130_fd_sc_hd__dfrtp_1 _34_ (.CLK(clknet_1_0__leaf_clock),
    .D(\next_state[2] ),
    .RESET_B(_02_),
    .Q(\current_state[2] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clock (.A(clock),
    .X(clknet_0_clock));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clock (.A(clknet_0_clock),
    .X(clknet_1_0__leaf_clock));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clock (.A(clknet_0_clock),
    .X(clknet_1_1__leaf_clock));
 sky130_fd_sc_hd__clkbuf_2 input1 (.A(reset),
    .X(net1));
 sky130_fd_sc_hd__dlymetal6s2s_1 input2 (.A(sequence_in),
    .X(net2));
 sky130_fd_sc_hd__buf_12 output3 (.A(net3),
    .X(detector_out));
endmodule

