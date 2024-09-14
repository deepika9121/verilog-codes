`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 8x1 mux using structural
// Module Name: structural_8x1
/////////////////////////////////////////


module structural_8x1(input[7:0]i,[2:0]s,output out);
wire [7:0]w;
wire [2:0]sb;
not r1(sb[0],s[0]),
    r2(sb[1],s[1]),
    r3(sb[2],s[2]);
and u0(w[0],i[0],sb[2],sb[1],sb[0]),
    u1(w[1],i[1],sb[2],sb[1],s[0]),
    u2(w[2],i[2],sb[2],s[1],sb[0]),
    u3(w[3],i[3],sb[2],s[1],s[0]),
    u4(w[4],i[4],s[2],sb[1],sb[0]),
    u5(w[5],i[5],s[2],sb[1],s[0]),
    u6(w[6],i[6],s[2],s[1],sb[0]),
    u7(w[7],i[7],s[2],s[1],s[0]);
or w0(out,w[7],w[6],w[5],w[4],w[3],w[2],w[1],w[0]);

endmodule
