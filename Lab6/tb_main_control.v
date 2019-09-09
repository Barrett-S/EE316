`timescale 10ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2019 05:09:41 PM
// Design Name: 
// Module Name: tb_main_control
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


module tb_main_control;
reg clk;
reg reset;
reg signal_start;
reg[9:0] sw;
wire[3:0] an;
wire[6:0] sseg;
wire dp;

main_control uut(
    .clk(clk),
    .reset(reset),
    .signal_start(signal_start),
    .sw(sw),
    .an(an),
    .sseg(sseg),
    .dp(dp)
);


initial begin

clk = 0;
sw[9:0] = 0;
reset = 0;
signal_start = 0;

#10;
reset = 1;
#50;
reset = 0;
#60;
sw[8] = 1;
sw[7]=1;
sw[2]=1;
reset=1;
#60;
reset=0;
#60;
signal_start = 1;
#50;
sw[9] = 1;
sw[8] = 0;
signal_start = 0;
#50;
reset = 1;
#50;
reset = 0;
#400;
signal_start=1;
#400;
end

initial begin
clk=0;
forever #2 clk = ~clk;
end
endmodule

