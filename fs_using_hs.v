`timescale 1ns / 1ps
///////////////////
// Engineer: B DEEPIKA
// Design Name: fs_using_hs
// Module Name: fs_using_hs
/////////////////////////////////


module fs_using_hs(input a,b,c,output wire diff, borrow );
//method1
//borrow=~a(b^c)|(bc)
wire out1,out2,out3,out4;
hs u1(b,c,out1,out2);
hs u2(a,out1,diff,out3);
and u3(out4,b,c);
or u4(borrow,out3,out4);
endmodule

module hs(input a,b,output wire diff,borrow);
assign diff=a^b;
assign borrow=~a&b;
endmodule
