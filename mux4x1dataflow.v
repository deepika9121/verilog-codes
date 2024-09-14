`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Module Name: mux4x1dataflow
///////////////////////////////////////////////////


module mux4x1dataflow(input [1:0]s,[3:0]i,output wire out);
assign out=(~s[1]&~s[0]&i[0])|(~s[1]&s[0]&i[1])|(s[1]&~s[0]&i[2])|(s[1]&s[0]&i[3]);
endmodule
