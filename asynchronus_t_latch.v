`timescale 1ns / 1ps
/////////////
// Engineer: B DEEPIKA
// Module Name: asynchronus_t_latch

module asynchronus_t_latch(input clk,input t,input preset,input clear,output reg q,output qbar );
reg q_temp;
always@(preset,clear,q_temp)
begin
if(preset)
q=1'b1;
else if(clear)
q=1'b0;
else
q=q_temp;
 end
always@(clk,t)
begin
if(clk)
 begin
 case(t)
 1'b0:q_temp=q;
 1'b1:q_temp=~q;
 endcase
 end
 else 
 q_temp=q;
 end
 assign qbar=~q;
endmodule