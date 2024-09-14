`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: full subtractor using half subtractor
// Module Name: fullsubusinghalfsub


module fullsubusinghalfsub(input a,b,c,output wire sub,borrow );
wire w1,w2,t;
halfsub u1(a,b,w1,w2);
halfsub u2(w1,c,sub,t);
or u3(borrow,t,w2);
endmodule

module halfsub(input a,b,output wire su,bo );
assign su=a^b;
assign bo=(~a)&b;
endmodule



