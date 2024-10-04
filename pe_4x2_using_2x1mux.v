`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: priority encoder 4x2 using 2x1 mux
// Module Name: pe_4x2_using_2x1mux
//////////////////////////////////////


module pe_4x2_using_2x1mux(input [3:0]in,output [1:0]out,output valid );
wire o2,o3;
conditional  u1(in[3],1,in[2],out[1]);
conditional u2(in[0],1,in[1],o3);
conditional  u3(out[1],1,o3,valid);
conditional  u4(in[1],0,in[2],o2);
conditional u5(o2,1,in[3],out[0]);
endmodule

module conditional(input i0,i1,s,output wire o);
assign o=s?i1:i0;
endmodule
