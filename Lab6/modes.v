`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2019 03:49:49 PM
// Design Name: 
// Module Name: modes
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


module modes(
    input clk,
    input reset,
    input isActive,
    input[9:0] sw,
    input[3:0] in0,
    input[3:0] in1,
    input[3:0] in2,
    input[3:0] in3,
    output reg[3:0] out0,
    output reg[3:0] out1,
    output reg[3:0] out2,
    output reg[3:0] out3
    );
reg[2:0] mode;

always @ (posedge clk) begin
    begin
    case({sw[9],sw[8]})
    2'b00 : mode <=0;
    2'b01 : mode <=1;
    2'b10 : mode <=2;
    2'b11 : mode <=3;
    default : mode <=0;
    endcase
    end
    if(mode==0 && reset)begin
        out0=4'd0; out1=4'd0;out2=4'd0;out3=4'd0;
    end
    if((mode==1||mode==3) && reset)begin
        out0=4'd0; out1=4'd0;out2=sw[3:0];out3=sw[7:4];
        if(out2>9) out2=9;
        if(out3>9) out3=9;
    end
    if(mode==2 && reset)begin
        out0=4'd9; out1=4'd9;out2=4'd9;out3=4'd9;
    end
    if((mode==0 || mode==1) && isActive)begin
        if(out1==4'd9 && out2==4'd9 && out3==4'd9) begin
            out0=4'd9; 
        end
        
        if(out0==4'd10) begin
            out0=4'd0; out1=out1+1;
        end else if(out0==4'd9 && out3==4'd9 && out1==4'd9 &&out2==4'd9) begin
            out0<=4'd9; out2<=4'd9;
            end else begin
            out0<=out0+1;
            end
        
        
        if(out1==4'd10) begin
            out1=4'd0; out2=out2+1;
        end
        if(out2==4'd10) begin
            out2=4'd0; 
            if(out3!=4'd9)begin
                out3=out3+1;
            end else begin
                out0=in0; out1=in1; out2=in2;out3=in3; 
            end
        end
    end
    
   if((mode==2 || mode==3) && isActive)begin 
        if(out0==4'd9 && out1==4'd9 && out2==4'd9 && out3==4'd9)begin
        out0<=4'd15;
        end
        
        if(out0==4'd15) begin
            out0=4'd9; out1=out1-1; 
        end else if(out0==4'd0 && out3==4'd0 && out1==4'd0 && out2==4'd0) begin
            out0<=4'd0;
            end else begin
            out0<=out0-1;
            end
        
        
        if(out1==4'd15) begin
            out1=4'd9; out2=out2-1;
        end
        if(out2==4'd15) begin
            out2=4'd9; 
            if(out3!=4'd0)begin
                out3=out3-1;
            end else if(out2==4'd0 && out1==4'd0) begin
                out0=in0; out1=in1; out2=in2;out3=in3; 
            end
        end
    end
    
    
        
        
end

endmodule
