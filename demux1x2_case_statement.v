`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x2 using case statements
// Module Name: demux1x2_case_statement
////////////////////////////////////////////////////////
module demux1x2_case_statement(input in,sel,output reg[1:0]out);
always@*
begin
case(sel)
1'b0:
    begin 
    out[0]=in;
    out[1]=0;
    end
1'b1:
    begin
    out[1]=in;
    out[0]=0;
    end 
default :out[1:0]=2'bxx;
endcase
end
endmodule
