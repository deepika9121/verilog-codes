`timescale 1ns / 1ps
/////////////////////////////////
// Engineer: B DEEPIKA
// Design Name: fulladder using 4x1 mux
// Module Name: fulladderusing4x1mux
/////////////////////////////////////////


module fulladderusing4x1mux(input a,b,c,output sum,carry  );

mux4x1  s1(c,~c,~c,c,a,b,sum);
mux4x1  c1(0,c,c,1,a,b,carry);
endmodule

module mux4x1(input i0,i1,i2,i3,s1,s0,output reg out);
always@*
begin
out=s1?(s0?i3:i2):(s0?i1:i0);
end
endmodule