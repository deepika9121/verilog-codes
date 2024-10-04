`timescale 1ns / 1ps 
// Engineer: B DEEPIKA
// Design Name:  xor_xnor_using_cmos
// Module Name: xor_xnor_using_cmos
module xor_xnor_using_cmos(input a,b,output xor_out,xnor_out);
wire w1,w2,w3,abar,bbar;
supply1 vdd;
supply0  gnd;

pmos v1(abar,vdd,a);
nmos v2(abar,gnd,a);

pmos v3(bbar,vdd,b);
nmos v4(bbar,gnd,b);

pmos u1(w1,vdd,abar);
pmos u2( w1,vdd,b);
pmos u3(xnor_out,w1,a);
pmos u4( xnor_out,w1,bbar);

nmos u5(xnor_out,w2,abar);
nmos u6(xnor_out,w3,bbar);
nmos u7(w2,gnd,b);
nmos u8(w3,gnd,a); 

pmos u9(xor_out,vdd,xnor_out);
nmos u10(xor_out,gnd,xnor_out);
endmodule
