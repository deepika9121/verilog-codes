`timescale 1ns / 1ps
////
// Engineer: B DEEPIKA
// Design Name: full adder using 2x1mux
// Module Name: fa_2x1mux

module fa_2x1mux(input a,b,c,output sum,carry );
wire bbar,x,out1,xbar,out2;
mux2x1 u1(1,0,b,bbar);
mux2x1 u2(b,bbar,a,x);
mux2x1 u3(0,x,c,out1);
mux2x1 u4(1,0,x,xbar);
mux2x1 u5(x,xbar,c,sum);
mux2x1 u6(0,b,a,out2);
mux2x1 u7(out1,1,out2,carry);
  
endmodule
module mux2x1(input i0,i1,sel,output reg out);
always@*
begin
out=sel?i1:i0;
end
endmodule
