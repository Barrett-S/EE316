`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2019 05:30:09 PM
// Design Name: 
// Module Name: tb_rising_edge_detector
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


module tb_rising_edge_detector;

reg clk;
reg signal;
reg reset;
wire outedge;

rising_edge_detector uut (
    .clk(clk),
    .signal(signal),
    .reset(reset),
    .outedge(outedge)
);

initial 
begin

clk = 0;
signal = 0;
reset = 0;

#50;

signal = 1;

#50;

signal = 0;

#50;

signal = 1;

#50;

reset = 1;

#50;

reset = 0;

#50;

signal = 1;

#50;

signal = 0;

#50;

signal = 1;

#50;

signal =0;

#50;

reset = 1;

#50;

reset = 0;

#50;

signal = 0;

#50;

signal=1;

#50;

signal=0;

#50;

end

always
#5 clk = ~clk;

endmodule
