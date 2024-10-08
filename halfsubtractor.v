`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: halfsubtractor
// Module Name: halfsubtractor
//////////////////////////


module halfsubtractor(input a,b,output wire diff,borrow );
assign diff=a^b;
assign borrow=~a&b;
endmodule
