`timescale 1ns / 1ps
///////////
// Engineer: B DEEPIKA
// Design Name: decoder2x4 using ifelsestatements
// Module Name: decoder2x4ifelse
//////////////////////////////////

module decoder2x4ifelse(input [1:0]in,output reg [3:0]out);
always@*
begin
if(in==2'b00)
out=4'b0001;
else if(in==2'b01)
out=4'b0010;
else if(in==2'b10)
out=4'b0100;
else if (in==2'b11)
out=4'b1000;
else
out=4'b0000;
end
endmodule