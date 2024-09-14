`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: B.Deepika
// Create Date: 08/31/2024 08:57:48 PM
// Design Name: 
// Module Name: mux221 
// Project Name: mux in structural model
//////////////////////////////////////////////////////////////////////////////////
module mux221struct( input i0,i1,s,output wire o);
wire w1,w0,sb;
not u1(sb,s);
and u2(w1,i1,s);
and u3(w0,i0,sb);
or  u4(o,w1,w0);
endmodule
