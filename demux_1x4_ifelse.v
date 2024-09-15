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
    out[0]=in;
    out[1]=0;out[2]=0;out[3]=0;
    end
else if(sel==2'b01)
    begin
    out[1]=in;
    out[0]=0;out[2]=0;out[3]=0;
    end 
else if(sel==2'b10)
    begin 
    out[2]=in;
    out[1]=0;out[0]=0;out[3]=0;
    end
else if(sel==2'b11)
    begin
    out[3]=in;
    out[0]=0;out[2]=0;out[1]=0;
    end 
else
out[3:0]=4'bxxxx;

end
endmodule
