`timescale 1ns / 1ps
//////////////////
// Engineer: B DEEPIKA
// Design Name: full subtractor
// Module Name: fullsubtractor
////////////////////////////////
module fullsubtractor(input a,b,c,output wire diff,borrow );
assign diff=a^b^c;
//assign borrow=(b&c)|((b^c)&~a);
assign borrow=(~a&b)|(c&(a~^b));
endmodule
