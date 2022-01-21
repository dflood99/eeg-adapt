// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="StreamingMaxPool_Batch_1_StreamingMaxPool_Batch_1,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.177500,HLS_SYN_LAT=490,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2438,HLS_SYN_LUT=2542,HLS_VERSION=2019_1}" *)

module StreamingMaxPool_Batch_1_StreamingMaxPool_Batch_1 (
        ap_clk,
        ap_rst_n,
        in0_V_V_TDATA,
        in0_V_V_TVALID,
        in0_V_V_TREADY,
        out_V_V_TDATA,
        out_V_V_TVALID,
        out_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst_n;
input  [399:0] in0_V_V_TDATA;
input   in0_V_V_TVALID;
output   in0_V_V_TREADY;
output  [399:0] out_V_V_TDATA;
output   out_V_V_TVALID;
input   out_V_V_TREADY;

 reg    ap_rst_n_inv;
reg   [399:0] in0_V_V_0_data_out;
wire    in0_V_V_0_vld_in;
wire    in0_V_V_0_vld_out;
wire    in0_V_V_0_ack_in;
reg    in0_V_V_0_ack_out;
reg   [399:0] in0_V_V_0_payload_A;
reg   [399:0] in0_V_V_0_payload_B;
reg    in0_V_V_0_sel_rd;
reg    in0_V_V_0_sel_wr;
wire    in0_V_V_0_sel;
wire    in0_V_V_0_load_A;
wire    in0_V_V_0_load_B;
reg   [1:0] in0_V_V_0_state;
wire    in0_V_V_0_state_cmp_full;
reg   [399:0] out_V_V_1_data_out;
wire    out_V_V_1_vld_in;
wire    out_V_V_1_vld_out;
wire    out_V_V_1_ack_in;
wire    out_V_V_1_ack_out;
reg   [399:0] out_V_V_1_payload_A;
reg   [399:0] out_V_V_1_payload_B;
reg    out_V_V_1_sel_rd;
reg    out_V_V_1_sel_wr;
wire    out_V_V_1_sel;
wire    out_V_V_1_load_A;
wire    out_V_V_1_load_B;
reg   [1:0] out_V_V_1_state;
wire    out_V_V_1_state_cmp_full;
wire   [1:0] rep_fu_61_p2;
reg   [1:0] rep_reg_70;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire    grp_StreamingMaxPool_Pre_fu_47_ap_start;
wire    grp_StreamingMaxPool_Pre_fu_47_ap_done;
wire    grp_StreamingMaxPool_Pre_fu_47_ap_idle;
wire    grp_StreamingMaxPool_Pre_fu_47_ap_ready;
wire    grp_StreamingMaxPool_Pre_fu_47_in_V_V_TVALID;
wire    grp_StreamingMaxPool_Pre_fu_47_in_V_V_TREADY;
wire   [399:0] grp_StreamingMaxPool_Pre_fu_47_out_V_V_TDATA;
wire    grp_StreamingMaxPool_Pre_fu_47_out_V_V_TVALID;
wire    grp_StreamingMaxPool_Pre_fu_47_out_V_V_TREADY;
reg   [1:0] rep_0_i_reg_36;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
reg    grp_StreamingMaxPool_Pre_fu_47_ap_start_reg;
wire   [0:0] icmp_ln309_fu_55_p2;
reg   [3:0] ap_NS_fsm;
wire    ap_CS_fsm_state4;
reg    ap_block_state4;

// power-on initialization
initial begin
#0 in0_V_V_0_sel_rd = 1'b0;
#0 in0_V_V_0_sel_wr = 1'b0;
#0 in0_V_V_0_state = 2'd0;
#0 out_V_V_1_sel_rd = 1'b0;
#0 out_V_V_1_sel_wr = 1'b0;
#0 out_V_V_1_state = 2'd0;
#0 ap_CS_fsm = 4'd1;
#0 grp_StreamingMaxPool_Pre_fu_47_ap_start_reg = 1'b0;
end

StreamingMaxPool_Batch_1_StreamingMaxPool_Pre grp_StreamingMaxPool_Pre_fu_47(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_StreamingMaxPool_Pre_fu_47_ap_start),
    .ap_done(grp_StreamingMaxPool_Pre_fu_47_ap_done),
    .ap_idle(grp_StreamingMaxPool_Pre_fu_47_ap_idle),
    .ap_ready(grp_StreamingMaxPool_Pre_fu_47_ap_ready),
    .in_V_V_TDATA(in0_V_V_0_data_out),
    .in_V_V_TVALID(grp_StreamingMaxPool_Pre_fu_47_in_V_V_TVALID),
    .in_V_V_TREADY(grp_StreamingMaxPool_Pre_fu_47_in_V_V_TREADY),
    .out_V_V_TDATA(grp_StreamingMaxPool_Pre_fu_47_out_V_V_TDATA),
    .out_V_V_TVALID(grp_StreamingMaxPool_Pre_fu_47_out_V_V_TVALID),
    .out_V_V_TREADY(grp_StreamingMaxPool_Pre_fu_47_out_V_V_TREADY)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_StreamingMaxPool_Pre_fu_47_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln309_fu_55_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_StreamingMaxPool_Pre_fu_47_ap_start_reg <= 1'b1;
        end else if ((grp_StreamingMaxPool_Pre_fu_47_ap_ready == 1'b1)) begin
            grp_StreamingMaxPool_Pre_fu_47_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        in0_V_V_0_sel_rd <= 1'b0;
    end else begin
        if (((in0_V_V_0_ack_out == 1'b1) & (in0_V_V_0_vld_out == 1'b1))) begin
            in0_V_V_0_sel_rd <= ~in0_V_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        in0_V_V_0_sel_wr <= 1'b0;
    end else begin
        if (((in0_V_V_0_ack_in == 1'b1) & (in0_V_V_0_vld_in == 1'b1))) begin
            in0_V_V_0_sel_wr <= ~in0_V_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        in0_V_V_0_state <= 2'd0;
    end else begin
        if ((((in0_V_V_0_vld_in == 1'b0) & (in0_V_V_0_state == 2'd2)) | ((in0_V_V_0_vld_in == 1'b0) & (in0_V_V_0_state == 2'd3) & (in0_V_V_0_ack_out == 1'b1)))) begin
            in0_V_V_0_state <= 2'd2;
        end else if ((((in0_V_V_0_ack_out == 1'b0) & (in0_V_V_0_state == 2'd1)) | ((in0_V_V_0_ack_out == 1'b0) & (in0_V_V_0_state == 2'd3) & (in0_V_V_0_vld_in == 1'b1)))) begin
            in0_V_V_0_state <= 2'd1;
        end else if (((~((in0_V_V_0_vld_in == 1'b0) & (in0_V_V_0_ack_out == 1'b1)) & ~((in0_V_V_0_ack_out == 1'b0) & (in0_V_V_0_vld_in == 1'b1)) & (in0_V_V_0_state == 2'd3)) | ((in0_V_V_0_state == 2'd1) & (in0_V_V_0_ack_out == 1'b1)) | ((in0_V_V_0_state == 2'd2) & (in0_V_V_0_vld_in == 1'b1)))) begin
            in0_V_V_0_state <= 2'd3;
        end else begin
            in0_V_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        out_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_V_V_1_ack_out == 1'b1) & (out_V_V_1_vld_out == 1'b1))) begin
            out_V_V_1_sel_rd <= ~out_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        out_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((out_V_V_1_ack_in == 1'b1) & (out_V_V_1_vld_in == 1'b1))) begin
            out_V_V_1_sel_wr <= ~out_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        out_V_V_1_state <= 2'd0;
    end else begin
        if ((((out_V_V_1_state == 2'd2) & (out_V_V_1_vld_in == 1'b0)) | ((out_V_V_1_state == 2'd3) & (out_V_V_1_vld_in == 1'b0) & (out_V_V_1_ack_out == 1'b1)))) begin
            out_V_V_1_state <= 2'd2;
        end else if ((((out_V_V_1_state == 2'd1) & (out_V_V_TREADY == 1'b0)) | ((out_V_V_1_state == 2'd3) & (out_V_V_TREADY == 1'b0) & (out_V_V_1_vld_in == 1'b1)))) begin
            out_V_V_1_state <= 2'd1;
        end else if (((~((out_V_V_1_vld_in == 1'b0) & (out_V_V_1_ack_out == 1'b1)) & ~((out_V_V_TREADY == 1'b0) & (out_V_V_1_vld_in == 1'b1)) & (out_V_V_1_state == 2'd3)) | ((out_V_V_1_state == 2'd1) & (out_V_V_1_ack_out == 1'b1)) | ((out_V_V_1_state == 2'd2) & (out_V_V_1_vld_in == 1'b1)))) begin
            out_V_V_1_state <= 2'd3;
        end else begin
            out_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (grp_StreamingMaxPool_Pre_fu_47_ap_done == 1'b1))) begin
        rep_0_i_reg_36 <= rep_reg_70;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        rep_0_i_reg_36 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((in0_V_V_0_load_A == 1'b1)) begin
        in0_V_V_0_payload_A <= in0_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((in0_V_V_0_load_B == 1'b1)) begin
        in0_V_V_0_payload_B <= in0_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((out_V_V_1_load_A == 1'b1)) begin
        out_V_V_1_payload_A <= grp_StreamingMaxPool_Pre_fu_47_out_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((out_V_V_1_load_B == 1'b1)) begin
        out_V_V_1_payload_B <= grp_StreamingMaxPool_Pre_fu_47_out_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rep_reg_70 <= rep_fu_61_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in0_V_V_0_ack_out = grp_StreamingMaxPool_Pre_fu_47_in_V_V_TREADY;
    end else begin
        in0_V_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((in0_V_V_0_sel == 1'b1)) begin
        in0_V_V_0_data_out = in0_V_V_0_payload_B;
    end else begin
        in0_V_V_0_data_out = in0_V_V_0_payload_A;
    end
end

always @ (*) begin
    if ((out_V_V_1_sel == 1'b1)) begin
        out_V_V_1_data_out = out_V_V_1_payload_B;
    end else begin
        out_V_V_1_data_out = out_V_V_1_payload_A;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln309_fu_55_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_StreamingMaxPool_Pre_fu_47_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((out_V_V_1_state == 2'd1) | ((out_V_V_1_state == 2'd3) & (out_V_V_TREADY == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state4 = ((out_V_V_1_state == 2'd1) | ((out_V_V_1_state == 2'd3) & (out_V_V_TREADY == 1'b0)));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_StreamingMaxPool_Pre_fu_47_ap_start = grp_StreamingMaxPool_Pre_fu_47_ap_start_reg;

assign grp_StreamingMaxPool_Pre_fu_47_in_V_V_TVALID = in0_V_V_0_state[1'd0];

assign grp_StreamingMaxPool_Pre_fu_47_out_V_V_TREADY = (out_V_V_1_ack_in & ap_CS_fsm_state3);

assign icmp_ln309_fu_55_p2 = ((rep_0_i_reg_36 == 2'd2) ? 1'b1 : 1'b0);

assign in0_V_V_0_ack_in = in0_V_V_0_state[1'd1];

assign in0_V_V_0_load_A = (in0_V_V_0_state_cmp_full & ~in0_V_V_0_sel_wr);

assign in0_V_V_0_load_B = (in0_V_V_0_state_cmp_full & in0_V_V_0_sel_wr);

assign in0_V_V_0_sel = in0_V_V_0_sel_rd;

assign in0_V_V_0_state_cmp_full = ((in0_V_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign in0_V_V_0_vld_in = in0_V_V_TVALID;

assign in0_V_V_0_vld_out = in0_V_V_0_state[1'd0];

assign in0_V_V_TREADY = in0_V_V_0_state[1'd1];

assign out_V_V_1_ack_in = out_V_V_1_state[1'd1];

assign out_V_V_1_ack_out = out_V_V_TREADY;

assign out_V_V_1_load_A = (out_V_V_1_state_cmp_full & ~out_V_V_1_sel_wr);

assign out_V_V_1_load_B = (out_V_V_1_state_cmp_full & out_V_V_1_sel_wr);

assign out_V_V_1_sel = out_V_V_1_sel_rd;

assign out_V_V_1_state_cmp_full = ((out_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign out_V_V_1_vld_in = grp_StreamingMaxPool_Pre_fu_47_out_V_V_TVALID;

assign out_V_V_1_vld_out = out_V_V_1_state[1'd0];

assign out_V_V_TDATA = out_V_V_1_data_out;

assign out_V_V_TVALID = out_V_V_1_state[1'd0];

assign rep_fu_61_p2 = (rep_0_i_reg_36 + 2'd1);

endmodule //StreamingMaxPool_Batch_1_StreamingMaxPool_Batch_1
