`timescale 1ns / 1ps
/////////
// Engineer: B DEEPIKA
// Design Name:  fa_using_hs
// Module Name: fa_using_hs
///////////////////////////////////////


module fa_using_hs(input a,b,c,output wire sum,carry );
wire o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11;
hs1 u1(a,b,o1,o2);
hs1 u2(o1,c,sum,o3);
hs1 u3(a,1,o4,o5);
hs1 u4(o4,b,o6,o7);
hs1 u5(c,1,o8,o9);
hs1 u6(o8,o1,o10,o11);
or u7(carry,o7,o11);
endmodule
module hs1(input a,b,output wire diff,borrow);
assign diff=a^b;
assign borrow=~a&b;
endmodule 