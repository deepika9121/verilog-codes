`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: basic gates using 2x1 mux
// Module Name: basicgates_using_2x1mux
///0///////////////////////////
module basicgates_using_2x1mux(input a,b,output buffer,inverter,
andout,nandout,orout,norout,exorout,exnorout);

mux2x1 u1(a,0,1,buffer);
mux2x1 u2(a,1,0,inverter);
mux2x1 u3(b,0,a,andout);
mux2x1 u4(b,a,1,orout);

mux2x1 u5(a,1,~b,nandout);
mux2x1 u6(a,~b,0,norout);
mux2x1 u7(b,a,~a,exorout);
mux2x1 u8(b,~a,a,exnorout);

endmodule

module mux2x1(input sel,i0,i1,output reg out);
always@*
begin
out=sel?i1:i0;
end
endmodule
