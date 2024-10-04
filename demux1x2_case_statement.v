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
        out=2'b01;
      
    end
1'b1:
    begin
        out=2'b10;
    end 
    default :out=2'bxx;
endcase
end
endmodule
