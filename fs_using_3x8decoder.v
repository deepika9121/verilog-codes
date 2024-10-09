`timescale 1ns / 1ps
/////////////////////////
// Engineer: B DEEPIKA
// Design Name: fs_using_3x8decoder
// Module Name: fs_using_3x8decoder
////////////////////////////////////


module fs_using_3x8decoder(input a,b,c,output wire diff, borrow);
wire [7:0]out;
assign out[0]=~a&~b&~c;
assign out[1]=~a&~b&c;
assign out[2]=~a&b&~c;
assign out[3]=~a&b&c;
assign out[4]=a&~b&~c;
assign out[5]=a&~b&c;
assign out[6]=a&b&~c;
assign out[7]=a&b&c;
assign diff=out[1]|out[2]|out[4]|out[7];
assign borrow=out[1]|out[2]|out[3]|out[7];
endmodule