`timescale 1ns / 1ps
////////////////////
// Engineer: B DEEPIKA
// Module Name: d_ff_sr_ff
///////////
module d_ff_sr_ff(input clk,input reset ,input s,input r,output reg q,output wire qbar);
reg d;
always@(posedge clk)
begin
    if(reset)
        begin
        q<=1'b0;
        end
    else
        begin
        d=s|(~r&q);
        q<=d;
        end
end
assign qbar=~q;  
endmodule
