`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: verilog code for 8x1 mux using conditional statements
// Module Name: conditional_8x1
///////////////////////////////////////////////
module conditional_8x1(input [7:0]i,input [2:0]s,output out);
assign out=s[2]?   (s[1]?
                         (s[0]?(i[7]):(i[6])):(s[0]?(i[5]):(i[4]))):
                   (s[1]?
                         (s[0]?(i[3]):(i[2])):(s[0]?(i[1]):(i[0])));
endmodule


