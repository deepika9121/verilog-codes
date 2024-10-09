`timescale 1ns / 1ps
///////
// Engineer: B DEEPIKA
// Design Name:  fs_using_hs1
// Module Name: fs_using_hs1
///////////////////////////////////////


module fs_using_hs1(input a,b,c,output wire diff, borrow);
wire out1,out2,out3;
//method2
//borrow=a(a~^b)|~ab;
hs u1(a,b,out1,out2);
hs u2(out1,c,diff,out3);
or u3(borrow,out3,out2);
endmodule

module hs(input a,b,output wire diff,borrow);
assign diff=a^b;
assign borrow=~a&b;
endmodule
