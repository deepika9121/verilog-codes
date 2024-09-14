`timescale 1ns / 1ps
/////////////////////////////////
// Engineer: B DEEPIKA
// Design Name: 9x1 mux using 2x1 mux
// Module Name: mux_9x1_using_2x1mux
///////////////////////////////////////////////
module mux9x1using2x1mux(input i0,i1,i2,i3,i4,i5,i6,i7,i8,input s3,s2,s1,s0,output wire out);
wire t1,t2,t3,t4,t5,t6,t7;
muuxx2x1 w1(i0,i1,s0,t1);
muuxx2x1 w2(i2,i3,s0,t2);
muuxx2x1 w3(i4,i5,s0,t3);
muuxx2x1 w4(i6,i7,s0,t4);
muuxx2x1 w5(t1,t2,s1,t5);
muuxx2x1 w6(t3,t4,s1,t6);
muuxx2x1 w7(t5,t6,s2,t7);
muuxx2x1 w8(t7,i8,s3,out);
endmodule
module muuxx2x1(input in0,in1,input sel,output out);
assign out=sel?in1:in0;
endmodule
