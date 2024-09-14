`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 4bit adder simple
// Module Name: multibit_adder
//////////////////////////////////////////////////////////////////////////////////
module multibit_adder(a,b,cin,s,c);
input [3:0]a,b;
input cin;
output [3:0]s;
output c;
assign {c,s}=a+b+cin;
endmodule
