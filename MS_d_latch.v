`timescale 1ns / 1ps
///////////////////
// Engineer: B DEEPIKA 
// Module Name: MS_d_latch
///////////////////////


module MS_d_latch(input clk,input d,output q,qbar);
wire qm,qbarm;
d_latch u1(.clk(clk),.d(d),.q(qm),.qbar());
d_latch u2(.clk(~clk),.d(qm),.q(q),.qbar(qbar));
endmodule
