`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x4 case statements
// Module Name: demux_1x4_case
////////////////////////////////////////
module demux_1x4_case(input in,[1:0]sel,output reg[3:0]out);
always@*
begin
case(sel)
2'b00:
    begin 
        out=4'b0001;
    
    end
2'b01:
    begin
    out=4'b0010;
    end
2'b10:
    begin 
    out=4'b0100;
    end
2'b11:
    begin
    out=4'b1000;
    end  
    default :out=4'bxxxx;
endcase
end
endmodule
