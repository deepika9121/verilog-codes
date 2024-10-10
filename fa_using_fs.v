`timescale 1ns / 1ps
/////////////
// Engineer: B DEEPIKA
// Design Name:  fa_using_fs
// Module Name: fa_using_fs
///////////////////////////////////////


module fa_using_fs(input a,b,c,output wire sum,carry);
wire out1,out2,out3,out4,out5,out6,out7,out8;
fs u1(a,b,c,sum,out1);
fs u2(a,b,0,out2,out3);
fs u3(1,out2,c,out4,out5);
fs u4(1,a,b,out6,out7);
fs u5(0,out5,out7,out8,carry);

endmodule
module fs(input a,b,c,output wire diff,borrow);
assign diff=a^b^c;
assign borrow=(~a&b)|(b&c)|(c&~a);
endmodule