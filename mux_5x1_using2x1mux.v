`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 5x1 mux using 2x1 mux
// Module Name: mux_5x1_using_2x1mux
///////////////////////////////////////////////
module mux_5x1_using2x1mux(input [4:0]i,input [2:0]s,output wire out);
wire t1,t2,t3;
mux2x1 w1(i[0],i[1],s[0],t1);
mux2x1 w2(i[2],i[3],s[0],t2);
mux2x1 w3(t1,t2,s[1],t3);
mux2x1 w4(t3,i[4],s[2],out);
endmodule
module mux2x1(input in0,in1,sel,output out);
assign out=sel?in1:in0;
endmodule