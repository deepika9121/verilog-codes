`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x8 ielse statements
// Module Name: demux_1x8_ifelse

module demux_1x8_ifelse(input in,[2:0]sel,output reg[7:0]out);
always@*
begin
if(sel==3'b000)
    begin 
       out=8'b0000_0001;
    end
else if(sel==3'b001)
    beginout=8'b0000_0010;
    end 
else if(sel==3'b010)
    begin 
    out=8'b0000_0100;
    end
else if(sel==3'b011)
    begin
    out=8'b0000_1000;
    end 
else if(sel==3'b100)
    begin 
    out=8'b0001_0000;
    end
else if(sel==3'b101)
    begin
    out=8'b0010_0000;
    end 
else if(sel==3'b110)
    begin 
    out=8'b0100_0000;
    end
else if(sel==3'b111)
    begin
    out=8'b1000_0000;
    end 
else
    out=8'bxxxx_xxxx;

end
endmodule
