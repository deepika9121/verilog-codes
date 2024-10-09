`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: fs_using_2x1mux
// Module Name: fs_using_2x1mux

module fs_using_2x1mux(input a,b,c,output wire diff, borrow);
wire out1, out2,out3,out4,out5;
mux2x1 u1(1,0,c,out1);
mux2x1 u2(c,out1,b,out2);
mux2x1 u3(1,0,out2,out3);
mux2x1 u4(out2,out3,a,diff);
mux2x1 u5(out2,0,a,out4);
mux2x1 u6(0,c,b,out5);
mux2x1 u7(out4,1,out5,borrow);
endmodule

module mux2x1(input i0,i1,sel,output reg out);
always@*
begin
out=sel?i1:i0;
end
endmodule

