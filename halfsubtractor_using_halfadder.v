`timescale 1ns / 1ps
///// 
// Engineer: B DEEPIKA
// Design Name: halfsubtractor_using_halfadder
// Module Name: halfsubtractor_using_halfadder
////////////////////////


module halfsubtractor_using_halfadder(input a,b,output wire diff,borrow);
wire out1,out2,out3,out4;
ha u1(a,b,diff,out1);
ha u2(a,1,out2,out3);
ha u3(out2,b,out4,borrow);
endmodule
module ha(input a,b,output wire sum,carry);
assign sum=a^b;
assign carry =a&b;
endmodule