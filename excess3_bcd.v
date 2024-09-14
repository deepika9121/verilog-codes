`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: excess3 to bcd conversion
// Module Name: excess3_bcd
//////////////////////////////////////////////
module excess3_bcd(input [3:0]e,output [3:0]b);
assign
b[3]=(e[2]&e[3])|(e[3]&e[1]&e[0]),
b[2]=(~e[2]&~e[0])|(~e[2]&~e[1])|(e[2]&e[1]&e[0]),
b[1]=e[1]^e[0],
b[0]=~e[0];
endmodule

