`timescale 1ns / 1ps
//////////////// 
// Engineer: B DEEPIKA
// Module Name: t_latch
///////////////////////////
module t_latch(input clk,input t,output reg q,output qbar );
always@*
begin
if(clk)
 begin
 case(t)
 1'b0:q=q;
 1'b1:q=~q;
 endcase
 end
 else 
 q=q;
 end
 assign qbar=~q;
endmodule