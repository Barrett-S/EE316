`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2019 07:05:18 PM
// Design Name: 
// Module Name: RCA_4bits
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


module RCA_4bits(
    input clk, enable, Cin,
    input [3:0] A,B,
    output [4:0] Q
    );
    
  wire s0, s1, s2, s3, c0, c1, c2, c3;
  reg [4:0] total;
  
Full_Adder f1 (.A(A[0]), .B(B[0]), .Cin(Cin), .S(s0), .Cout(c0));
Full_Adder f2 (.A(A[1]), .B(B[1]), .Cin(c0), .S(s1), .Cout(c1));
Full_Adder f3 (.A(A[2]), .B(B[2]), .Cin(c1), .S(s2), .Cout(c2));
Full_Adder f4 (.A(A[3]), .B(B[3]), .Cin(c2), .S(s3), .Cout(c3));

always @(*) begin total = {c3, s3, s2, s1, s0}; end

register_logic f5 (.clk(clk), .enable(enable), .Data(total), .Q(Q));
endmodule
