`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 1x2 decoder using ifelse statements
// Module Name: decoder1x2_ifelse
//////////////////////////////////////////////////////////////


module decoder1x2_ifelse(input in,output reg [1:0]out );
always@*
begin
if(in==1'b0) out=2'b01;
else out=2'b10;
end
endmodule

