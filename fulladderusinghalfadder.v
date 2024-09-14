`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Module Name: fulladderusinghalfadder
//////////////////////////

module fulladderusinghalfadder(input a,b,c,output wire sum,carry );
wire w1,w2,t;
halfadder u1(a,b,w1,w2);
halfadder u2(w1,c,sum,t);
or u3(carry,t,w2);
endmodule

module halfadder(input a,b,output wire s,c );
assign s=a^b;
assign c=a&b;
endmodule


