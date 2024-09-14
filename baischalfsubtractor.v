`timescale 1ns / 1ps
// Engineer: 
// Design Name: 
// Module Name: baischalfsubtractor
/////////////////////////////////////////////


module baischalfsubtractor(input a,b,cin,output diff ,borrow);
assign diff=a^b^cin;
assign borrow=(~a&b)|(cin&(a~^b));
endmodule
