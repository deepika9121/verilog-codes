`timescale 1ns / 1ps
/////////////////////////////////
// Engineer: B DEEPIKA
// Design Name: 7x1 mux using 4x1 mux
// Module Name: mux_7x1_using_4x1mux
///////////////////////////////////////////////
module mux7x1using4x1mux(input i0,i1,i2,i3,i4,i5,i6,input s2,s1,s0,output wire out);
wire t1,t2,t3;
muxx4x1 w1(i0,i1,i2,i3,s1,s0,t1);
muuxx2x1 w2(i4,i5,s0,t2);
muuxx2x1 w3(t2,i6,s1,t3);
muuxx2x1 w4(t1,t3,s2,out);
endmodule

module muxx4x1(input i0,i1,i2,i3,s1,s0,output out);
assign out=s1?(s0?i3:i2):(s0?i1:i0);
endmodule

module muuxx2x1(input in0,in1,input sel,output out);
assign out=sel?in1:in0;
endmodule