`timescale 1ns / 1ps
// Engineer:  B DEEPIKA
// Design Name: 8x1 mux using 2x1
// Module Name: mux_8x1_using_2x1
//////////////////////////////////////////////
module mux_8x1_using_2x1(input [7:0]i,input [2:0]s,output out);
wire w1,w2,w3,w4,w5,w6;
mux2x1 u1(i[0],i[1],s[0],w1);
mux2x1 u2(i[2],i[3],s[0],w2);
mux2x1 u3(i[4],i[5],s[0],w3);
mux2x1 u4(i[6],i[7],s[0],w4);
mux2x1 u5(w1,w2,s[1],w5);
mux2x1 u6(w3,w4,s[1],w6);
mux2x1 u7(w5,w6,s[0],out);
endmodule

module mux2x1(input in0,in1,sel,output out);
assign out=sel?in1:in0;
endmodule