`timescale 1ns / 1ps
//////////////
// Engineer: B DEEPIKA
// Design Name: halfadder_using_halfsubtractor
// Module Name: halfadder_using_halfsubtractor
module halfadder_using_halfsubtractor(input a,b,output wire sum,carry );
wire out1,out2,out3,out4;
hs u1(a,b,sum,out1);
hs u2(a,1,out2,out3);
hs u3(out2,b,out4,carry);
  
endmodule

module hs(input a,b,output wire diff,borrow );
assign diff=a^b;
assign borrow=~a&b;
endmodule
