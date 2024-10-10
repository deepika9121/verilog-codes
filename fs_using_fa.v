`timescale 1ns / 1ps
/////////////
// Engineer: B DEEPIKA
// Design Name: fs_using_fa
// Module Name: fs_using_fa

module fs_using_fa(input a,b,c,output wire diff,borrow);
wire out1,out2,out3,out4,out5,out6,out7,out8;
fa u1(a,b,c,diff,out1);
fa u2(a,0,1,out2,out3);
fa u3(b,c,0,out4,out5);
fa u4(out2,out4,0,out6,out7);
fa u5(out7,out5,1,out8,borrow);

endmodule
module fa(input a,b,c,output wire sum,carry);
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule