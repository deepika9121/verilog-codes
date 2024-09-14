`timescale 1ns / 1ps
/////////////////////////////////////////////////
// Engineer: B DEEPIKA
// Design Name: 8x1 mux using 4x1 mux
// Module Name: mux_8x1_using_4x1mux_2x1
///////////////////////////////////////////////

module mux8x1_using4x1_2x1(input i0,i1,i2,i3,i4,i5,i6,i7,input s2,s1,s0,output wire out);
wire t1,t2;
muxx4x1 w1(i0,i1,i2,i3,s1,s0,t1);
muxx4x1 w2(i4,i5,i6,i7,s1,s0,t2);
muuxx2x1 w3(t1,t2,s2,out);
endmodule
module muxx4x1(input i0,i1,i2,i3,s1,s0,output out);
assign out=s1?(s0?i3:i2):(s0?i1:i0);
endmodule

module muuxx2x1(input in0,in1,input sel,output out);
assign out=sel?in1:in0;
endmodule
