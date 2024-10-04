`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Module Name: dec2x4using1x2
// Project Name: decoder 2x4 using 1x2
////////////////////////////


module dec2x4using1x2( input [1:0] in,output wire [3:0]out );
wire [1:0]w;
decoder1x2_dataflow u1(in[1],w[1:0] );
decoder1x2_dataflowen u2( in[0],w[1], out[3:2] );
decoder1x2_dataflowen u3( in[0],w[0],out[1:0] );

endmodule
module decoder1x2_dataflow(input in,output wire [1:0]out );
assign out[1]=in;
assign out[0]=~in; 
endmodule
module decoder1x2_dataflowen(input in,en,output wire [1:0]out );
assign out[1]=en&in;
assign out[0]=en&~in; 
endmodule
