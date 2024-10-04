`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: or nor gate using cmos
// Module Name: or_nor_gates_using_cmos
///////////////////////////////////////////////////////


module or_nor_gates_using_cmos(input a,b,output or_out,nor_out);
wire w;
supply1 vdd;
supply0  gnd;
pmos u1(w,vdd,a);
pmos u2( nor_out,w,b);
nmos u3(nor_out,gnd,a);
nmos u4(nor_out,gnd,b);

pmos u5(or_out,vdd,nor_out);
nmos u6(or_out,gnd,nor_out);
endmodule
