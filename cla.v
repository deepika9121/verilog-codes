`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: carry look ahead adder
// Module Name: cla 
//////////////////////////////////////////////////////////////////////////////////
module cla(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0] s;
output cout;
wire [3:0]c;
wire p0,p1,p2,p3,g0,g1,g2,g3;
assign p0=a[0]^b[0];
assign p1=a[1]^b[1];
assign p2=a[2]^b[2];
assign p3=a[3]^b[3];

assign g0=a[0]&b[0];
assign g1=a[1]&b[1];
assign g2=a[2]&b[2];
assign g3=a[3]&b[3];

assign c[0]=g0|(p0&cin);
assign c[1]=g1|(p1&g0)|(p1&p0&cin);
assign c[2]=g2|(p2&g1)|(p2&p1&g0)|(p2&p1&p0&cin);
assign c[3]=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);
 assign s[0]=p0^cin;
 assign s[1]=p1^c[0];
 assign s[2]=p2^c[1];
assign s[3]=p3^c[2];
 assign cout=c[3];
endmodule
