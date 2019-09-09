`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2019 02:39:12 PM
// Design Name: 
// Module Name: clk_div_disp
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


module clk_div_disp(
    input clk,
    input reset,
    output clk_out
    );

reg[25:0] COUNT;

assign clk_out = COUNT[25];

always @(posedge clk) 
begin
    if(reset)
        COUNT = 0;
    else
    COUNT= COUNT+1;
end

endmodule  