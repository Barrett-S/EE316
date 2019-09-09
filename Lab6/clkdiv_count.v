`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2019 06:39:21 PM
// Design Name: 
// Module Name: clkdiv_count
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


module clkdiv_count(
    input clk,
    output reg clk_out
    );

reg[21:0] COUNT = 0;

always @(posedge clk) begin
    if(COUNT >= 1000000) begin
        clk_out = 1;
        COUNT = 0;
    end
    else begin 
        COUNT = COUNT + 1;
        clk_out = 0;
    end
end

endmodule

