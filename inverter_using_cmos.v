`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: inverter uisng cmos
// Module Name: inverter_using_cmos
//////////////////////////////////////////////
module inverter_using_cmos(input a,output out);

supply1 vdd;
supply0  gnd;
pmos u1(out,vdd,a);
nmos u2(out,gnd,a);
endmodule
