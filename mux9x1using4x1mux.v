`timescale 1ns / 1ps
/////////////////////////////////
// Engineer: B DEEPIKA
// Design Name: 9x1 mux using 4x1 mux
// Module Name: mux_9x1_using_4x1mux
///////////////////////////////////////////////
module mux9x1using4x1mux(input i0,i1,i2,i3,i4,i5,i6,i7,i8,input s3,s2,s1,s0,output wire out);
wire t1,t2,t3;
muxx4x1 w5(i0,i1,i2,i3,s1,s0,t1);
muxx4x1 w6(i4,i5,i6,i7,s1,s0,t2);
muuxx2x1 w7(t1,t2,s2,t3);
muuxx2x1 w8(t3,i8,s3,out);
endmodule
module muuxx2x1(input in0,in1,input sel,output out);
assign out=sel?in1:in0;
endmodule
module muxx4x1(input i0,i1,i2,i3,s1,s0,output out);
assign out=s1?(s0?i3:i2):(s0?i1:i0);
endmodule