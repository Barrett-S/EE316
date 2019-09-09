`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 07:31:26 PM
// Design Name: 
// Module Name: tb_BDC_to_7Segment
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


module tb_BDC_to_7Segment;
    reg x0;
    reg x1;
    reg x2;
    reg x3;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    wire dp;
    wire an0;
    wire an1;
    wire an2;
    wire an3;
    
    BDC_to_7Segment uut (
            .x0(x0),
            .x1(x1),
            .x2(x2),
            .x3(x3),
            .a(a),
            .b(b),
            .c(c),
            .d(d),
            .e(e),
            .f(f),
            .g(g),
            .dp(dp),
            .an0(an0),
            .an1(an1),
            .an2(an2),
            .an3(an3)
        );
        initial begin
            
                x3 = 0;
                x2 = 0;
                x1 = 0;
                x0 = 0;
                
                #50;
                
                x3 = 1;
                x2 = 0;
                x1 = 0;
                x0 = 0;
                #50;
                
                x3 = 0;
                x2 = 1;
                x1 = 0;
                x0 = 0;
                #50;
                
                x3 = 1;
                x2 = 1;
                x1 = 0;
                x0 = 0;
                #50;
                
                x3 = 0;
                x2 = 0;
                x1 = 1;
                x0 = 0;
                #50;
                
                x3 = 1;
                x2 = 0;
                x1 = 1;
                x0 = 0;
                #50;
                        
                x3 = 0;
                x2 = 1;
                x1 = 1;
                x0 = 0;
                #50;
                                
                x3 = 1;
                x2 = 1;
                x1 = 1;
                x0 = 0;
                #50;
                                
                x3 = 0;
                x2 = 0;
                x1 = 0;
                x0 = 1;
                #50;
                                
                x3 = 1;
                x2 = 0;
                x1 = 0;
                x0 = 1;
                #50;
                                
                x3 = 0;
                x2 = 1;
                x1 = 0;
                x0 = 1;
                #50;
                                
                x3 = 1;
                x2 = 1;
                x1 = 0;
                x0 = 1;
                #50;
                                        
                x3 = 0;
                x2 = 0;
                x1 = 1;
                x0 = 1;
                #50;
                                        
                x3 = 1;
                x2 = 0;
                x1 = 1;
                x0 = 1;
                #50;
                                        
                x3 = 0;
                x2 = 1;
                x1 = 1;
                x0 = 1;
                #50;
                                        
                x3 = 1;
                x2 = 1;
                x1 = 1;
                x0 = 1;
                #50;
           end
        
endmodule
