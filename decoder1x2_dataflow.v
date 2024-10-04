`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 1x2 decoder using dtaflow
// Module Name: decoder1x2_dataflow
///////////////////////////////////////////////


module decoder1x2_dataflow(input in,output wire [1:0]out );
assign out[1]=in;
assign out[0]=~in; 
endmodule
