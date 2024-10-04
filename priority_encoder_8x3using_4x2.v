`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: priority_encoder_8x3using_4x2
// Module Name: priority_encoder_8x3using_4x2
/////////////////////

module priority_encoder_8x3using_4x2(input [7:0]in,output [2:0]out,output valid);
wire [1:0]olsb,omsb;
wire en,enb;
wire valid0,valid1;
 priority_encoder4x2_dataflow  u1(in[3:0],valid0);     
 priority_encoder4x2_dataflow u2(in[7:4], valid1);
assign en=valid1;
assign enb=~en;
priority_encoder4x2_dataflow_en u3(in[3:0],enb,olsb[1:0], valid0);     
priority_encoder4x2_dataflow_en  u4(in[7:4],en,omsb[1:0], valid1);
assign out[2]=valid1;
assign out[1]=omsb[1]|olsb[1];
assign out[0]=omsb[0]|olsb[0];
assign valid=valid1|valid0;

endmodule
module priority_encoder4x2_dataflow(input [3:0]in,output valid);
assign valid=in[0]|in[1]|in[2]|in[3];
endmodule

module priority_encoder4x2_dataflow_en(input [3:0]in,input en,output [1:0] out,output valid);
assign out[1]=en&(in[2]|in[3]); 
assign out[0]=en&(in[3]|(~in[2]&in[1]));
assign valid=in[0]|in[1]|in[2]|in[3];
endmodule
