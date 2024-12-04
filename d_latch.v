`timescale 1ns / 1ps
////////////
// Engineer: B DEEPIKA
// Module Name: d_latch

module d_latch(input clk,input d,output reg q,output qbar );
always@*
begin
if(clk)
 q=d;
 else 
 q=q;
 end
 assign qbar=~q;
endmodule
