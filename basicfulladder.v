`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: basic full adder
// Module Name: basicfulladder
module basicfulladder(input a,b,cin,output sum ,carry);
assign sum=a^b^cin;
assign carry=(a&b)|(b&cin)|(cin&a);
endmodule
