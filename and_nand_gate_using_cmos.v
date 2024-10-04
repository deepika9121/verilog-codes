`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: and and nand gate using cmos
// Module Name: and_nand_gate_using_cmos
module and_nand_gate_using_cmos(input a,b,output and_out,nand_out);
wire w;
supply1 vdd;
supply0  gnd;
pmos u1(nand_out,vdd,a);
pmos u2(nand_out,vdd,b);
nmos u3(nand_out,w,a);
nmos u4(w,gnd,b);

pmos u5(and_out,vdd,nand_out);
nmos u6(and_out,gnd,nand_out);
endmodule

