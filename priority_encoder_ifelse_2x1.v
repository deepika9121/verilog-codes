`timescale 1ns / 1ps
/////////////////////////////////////
// Engineer: B DEEPIKA
// Design Name: priority encoder 2x1 using ifelse
// Module Name: priority_encoder_ifelse_2x1
/////////////////////////////////////////////


module priority_encoder_ifelse_2x1(input [1:0]in,output reg  out,wire valid);
always@*
begin
if(in[1])
out=1;
else 
out=0;
end
assign valid=in[0]|in[1];
endmodule
