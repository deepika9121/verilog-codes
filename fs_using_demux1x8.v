`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: fs_using_demux1x8
// Module Name: fs_using_demux1x8
///////////////////////////////


module fs_using_demux1x8(input a,b,c,output wire diff, borrow);
//input in=1 and enable en=1;
wire [7:0]out;
assign out[0]=~a&~b&~c;
assign out[1]=~a&~b&c;
assign out[2]=~a&b&~c;
assign out[3]=~a&b&c;
assign out[4]=a&~b&~c;
assign out[5]=a&~b&c;
assign out[6]=a&b&~c;
assign out[7]=a&b&c;
assign diff =out[1]|out[2]|out[4]|out[7];
assign borrow=out[1]|out[2]|out[3]|out[7];
endmodule