`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: basicgates_using1x2demux
// Module Name: basic_gates_using1x2demux
///////////////////////////////


module basic_gates_using1x2demux(input b,a,output inv,buffer,andout,orout,nandout,norout,exorout,exnorout);
wire out1,bbar,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19;
//inverter buffer
demux_1x2_dataflow  u1( 1,a,inv,buffer);
//and gate
demux_1x2_dataflow  u2( b,a,out1,andout);
//or gate
demux_1x2_dataflow  u3( 1,b,bbar,out2);
demux_1x2_dataflow  u4( bbar,a,out3,out4);
demux_1x2_dataflow  u5( 1,out3,orout,out5);
//nand gate
demux_1x2_dataflow  u6( b,a,out6,out7);
demux_1x2_dataflow  u7( 1,out7,nandout,out8);
//nor gate
demux_1x2_dataflow  u8( 1,a,out9,out10);
demux_1x2_dataflow  u9( out9,b,norout,out11);
//exor  exnor
demux_1x2_dataflow  u10( b,a,out12,out13);
demux_1x2_dataflow  u11( 1,out12,out14,out15);
demux_1x2_dataflow  u12( a,b,out16,out17);
demux_1x2_dataflow  u13( out14,out16,exnorout,out18);
demux_1x2_dataflow  u14( 1,exnorout,exorout,out19);
endmodule

module demux_1x2_dataflow( input in,sel,output out0,out1);
assign out0=in&~sel;
assign out1=in&sel;
endmodule
