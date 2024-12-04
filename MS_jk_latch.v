`timescale 1ns / 1ps
////////////////
// Engineer: B DEEPIKA 
// Module Name: MS_sr_latch
////////////////////////

module MS_jk_latch(input clk,input j,k,output q,qbar);
wire qm,qbarm;
jk_latch u1(.clk(~clk),.j(j),.k(k),.q(qm),.qbar(qbarm));
jk_latch u2(.clk(clk),.j(qm),.k(qbarm),.q(q),.qbar(qbar));
endmodule