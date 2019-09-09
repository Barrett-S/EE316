`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2019 04:57:42 PM
// Design Name: 
// Module Name: Mux_Behavioral
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


module Mux_Behavioral(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output reg d
    );
    always @(i0,i1,i2,i3,s0,s1)
    begin
    
    d=1'b0;
    
    case({s1,s0})
    2'b00 : d=i0;
    2'b01 : d=i1;
    2'b10 : d=i2;
    2'b11 : d=i3;
    default : begin
        d=1'b0;
       end
     endcase
     end
     
endmodule
