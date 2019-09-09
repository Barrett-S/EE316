`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2019 04:00:29 PM
// Design Name: 
// Module Name: Mux_Structural
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


module Mux_Structural(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output d
    );
  wire s0_not, s1_not;
  wire a0,a1,a2,a3;
  
  not n0(s0_not, s0);
  not n1(s1_not, s1);
  
  and g0(a0,i0,s0_not,s1_not);
  and g1(a1,i1,s0,s1_not);
  and g2(a2,i2,s0_not,s1);
  and g3(a3,i3,s0,s1);
  
  or or1(d,a0,a1,a2,a3);
  
  
        
   
 
endmodule
