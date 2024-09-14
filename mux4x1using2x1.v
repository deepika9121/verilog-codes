`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Module Name: mux4x1using2x1
////////////////////////////
module mux2x1(input sel,i0,i1,output reg out);
always@*
begin
out=sel?i1:i0;
end
endmodule

module mux4x1using2x1(input [1:0]sel,[3:0]i,output wire out);
wire w1,w2;
mux2x1 u1( sel[0],i[0],i[1],w1);
mux2x1 u2( sel[0],i[2],i[3],w2);
mux2x1 u3( sel[1],w1,w2,out);
endmodule






