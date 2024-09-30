`timescale 1ns / 1ps 
// Engineer: B DEEPIKA
// Design Name: demux 1x4 ifelse statements
// Module Name: demux_1x4_ifelse
/////////////////////////////////////
module demux_1x4_ifelse(input in,[1:0]sel,output reg[3:0]out);
always@*
begin
if(sel==2'b00)
    begin 
    out=4'b0001
    end
else if(sel==2'b01)
    begin
    out=4'b0010;
    end 
else if(sel==2'b10)
    begin 
    out=4'b0100;
    end
else if(sel==2'b11)
    begin
out=4'b1000;
    end 
else
    out=4'bxxxx;
endmodule
