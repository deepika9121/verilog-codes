`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: basic design for halfadder
// Module Name: basic_halfadder
// 
//////////////////////////////////////////////////////////////////////////////////
module basic_halfadder(input a,b,output sum ,carry);
assign sum=a^b;
assign carry=(a&b);
endmodule