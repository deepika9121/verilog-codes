`timescale 1ns / 1ps
/////////////////////////////////
// Engineer: B DEEPIKA
// Design Name: 7x1 mux using 2x1 mux
// Module Name: mux_7x1_using_2x1mux
///////////////////////////////////////////////

module mux7x1using2x1(input i0,i1,i2,i3,i4,i5,i6,input s2,s1,s0,output wire out);
wire t1,t2,t3,t4,t5;
muuxx2x1 w1(i0,i1,s0,t1);
muuxx2x1 w2(i2,i3,s0,t2);
muuxx2x1 w3(i4,i5,s0,t3);
muuxx2x1 w4(t1,t2,s1,t4);
muuxx2x1 w5(t3,i6,s1,t5);
muuxx2x1 w6(t4,t5,s2,out);
endmodule


module muuxx2x1(input in0,in1,input sel,output out);
assign out=sel?in1:in0;
endmodule