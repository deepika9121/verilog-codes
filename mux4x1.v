`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:B DEEPIKA 
// Design Name: 4x1 mux
// Module Name: mux4x1 
//////////////////////////////////////////////////
module mux4x1struct(input [1:0]s,[3:0]i,output wire out  );
wire [1:0]sb;wire[3:0]t;
not u1(sb[0],s[0]);
not u5(sb[1],s[1]);
and u2(t[0],i[0],sb[1],sb[0]);
and u6(t[1],i[1],sb[1],s[0]);
and u7(t[2],i[2],s[1],sb[0]);
and u8(t[3],i[3],s[1],s[0]);
or u3(out,t[0],t[1],t[2],t[3]);
endmodule
