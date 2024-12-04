`timescale 1ns / 1ps
////////////////
// Engineer: B DEEPIKA 
// Module Name: MS_sr_latch
////////////////////////


module MS_sr_latch(input clk,input s,r,output q,qbar);
wire qm,qbarm;
sr_latch u1(.clk(~clk),.s(s),.r(r),.q(qm),.qbar(qbarm));
sr_latch u2(.clk(clk),.s(qm),.r(qbarm),.q(q),.qbar(qbar));
endmodule
