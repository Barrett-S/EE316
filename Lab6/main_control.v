`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2019 03:46:13 PM
// Design Name: 
// Module Name: main_control
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main_control(
    input clk,
    input reset,
    input signal_start,
    input[9:0] sw,
    output[3:0] an,
    output[6:0] sseg,
    output dp
    );

wire[3:0] dis0, dis1, dis2, dis3;
wire new_clk;
wire seg_clk;
wire[6:0] in0, in1, in2, in3;
wire isActive;

signaler z1 (.signal_start(signal_start), .reset(reset), .isActive(isActive));
clkdiv_count z2 (.clk(clk),.clk_out(new_clk));
modes z3 (.clk(new_clk), .reset(reset), .isActive(isActive), .sw(sw), .in0(dis0), .in1(dis1), .in2(dis2), .in3(dis3), .out0(dis0), .out1(dis1), .out2(dis2), .out3(dis3));
hexto7segment z5 (.x(dis0), .r(in0));
hexto7segment z6 (.x(dis1), .r(in1));
hexto7segment z7 (.x(dis2), .r(in2));
hexto7segment z8 (.x(dis3), .r(in3));
clkdiv z4 (.clk(clk), .clk_out(seg_clk));

time_mux_state_machine z9 (.clk(seg_clk), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .an(an), .sseg(sseg), .dp(dp));

endmodule