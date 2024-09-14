`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 3x1 mux using 2x1 mux
// Module Name: mux_3x1_using_2x1mux
///////////////////////////////////////////////
module mux_3x1_using_2x1mux(input [2:0]i,input [1:0]s,output wire out);
wire w;
mux2x1 w1(i[0],i[1],s[0],w);
mux2x1 w2(w,i[2],s[1],out);
endmodule
module mux2x1(input in0,in1,sel,output out);
assign out=sel?in1:in0;
endmodule