`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: bcd excess3 conversion
// Module Name: bcd_excess3 
//////////////////////////////////
module bcd_excess3(input [3:0]b,output [3:0]e);
assign
e[3]=b[3]|(b[2]&b[1])|(b[2]&b[0]),
e[2]=(b[2]&~b[1]&~b[0])|(~b[2]&b[0])|(~b[2]&b[1]),
e[1]=(~b[1]&~b[0])|(b[1]&b[0]),
e[0]=~b[0];
endmodule
