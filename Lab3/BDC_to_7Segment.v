`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 02:19:41 PM
// Design Name: 
// Module Name: BDC_to_7Segment
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


module BDC_to_7Segment(
    input x0,
    input x1,
    input x2,
    input x3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output dp,
    output an0,
    output an1,
    output an2,
    output an3
    );
    
    wire x0_not, x1_not, x2_not, x3_not;
    wire a0, b0,d0,e0,f0,g0,a1,b1,d1,f1,g1,d2, f2, an00,an01;
   
    not n0 (x0_not, x0);
    not n1 (x1_not, x1);
    not n2 (x2_not, x2);
    not n3 (x3_not, x3);
    
    and z0(a0, x3_not, x2_not, x1_not, x0);
    and z1(a1,x2,x1_not,x0_not);
    or z3(a,a0,a1);
    
    and z4(b0, x2, x1_not, x0);
    and z5(b1, x2, x1, x0_not);
    or z6(b,b1,b0);
    
    and z7(c, x2_not, x1, x0_not);
    
    and z8(d0, x2, x1_not, x0_not);
    and z9(d1, x2, x1, x0);
    and z10(d2, x3_not, x2_not, x1_not, x0);
    or z11(d, d1, d2, d0);
    
    and z12(e0, x2, x1_not);
    or z15(e, e0, x0);
    
    and z16(f0, x1,x0);
    and z17(f1, x2_not, x1, x0_not);
    and z18(f2, x3_not, x2_not, x0);
    or z19(f, f0, f1, f2);
    
    and z20(g0, x3_not, x2_not, x1_not);
    and z21(g1, x2, x1, x0);
    or z22(g, g0, g1);
    
    and z23(an00, x3, x2);
    and z24(an01, x3, x1);
    or z25(an0, an00, an01);
    
    or z26(an1, 1, 1);
    or z27(an2, 1, 1);
    or z28(an3, 1, 1);
    or z29(dp, 1, 1);
    
endmodule
