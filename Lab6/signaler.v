`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2019 06:44:10 PM
// Design Name: 
// Module Name: signaler
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


module signaler(
    input signal_start,
    input reset,
    output reg isActive
    );
    
    reg buff;
    
    initial begin
        buff=1;
        isActive=0;
    end
    
    
    always @(posedge signal_start or posedge reset) begin
        if (reset)
            isActive <= 0;
        else begin
            isActive <= buff;
            buff <= ~buff;
        end
    end
endmodule
