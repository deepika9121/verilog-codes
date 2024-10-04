`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: fa using 8x1mux
// Module Name: fa_using_8x1mux
// 
//////////////////////////////////////////////////////////////////////////////////


module fa_using_8x1mux(input [2:0]in,output sum,carry );
case_statement_8x1 u1(0,1,1,0,1,0,0,1,in,sum);
case_statement_8x1 u2(0,0,0,1,0,1,1,1,in,carry);
endmodule
module case_statement_8x1(input i0,i1,i2,i3,i4,i5,i6,i7,input [2:0]s,output reg out);
always@*
begin
case(s)
3'b000:out=i0;
3'b001:out=i1;
3'b010:out=i2;
3'b011:out=i3;

3'b100:out=i4;
3'b101:out=i5;
3'b110:out=i6; 
3'b111:out=i7;
endcase
end
endmodule

