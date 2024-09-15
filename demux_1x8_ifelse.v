`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x8 ielse statements
// Module Name: demux_1x8_ifelse

module demux_1x8_ifelse(input in,[2:0]sel,output reg[7:0]out);
always@*
begin
if(sel==3'b000)
    begin 
    out[0]=in;
    out[1]=0;out[2]=0;out[3]=0; out[4]=0;out[5]=0;out[6]=0;out[7]=0;
    end
else if(sel==3'b001)
    begin
    out[1]=in;
    out[0]=0;out[2]=0;out[3]=0; out[4]=0;out[5]=0;out[6]=0;out[7]=0;
    end 
else if(sel==3'b010)
    begin 
    out[2]=in;
    out[1]=0;out[0]=0;out[3]=0; out[4]=0;out[5]=0;out[6]=0;out[7]=0;
    end
else if(sel==3'b011)
    begin
    out[3]=in;
    out[1]=0;out[2]=0;out[0]=0; out[4]=0;out[5]=0;out[6]=0;out[7]=0;
    end 
else if(sel==3'b100)
    begin 
    out[4]=in;
    out[1]=0;out[2]=0;out[3]=0; out[0]=0;out[5]=0;out[6]=0;out[7]=0;
    end
else if(sel==3'b101)
    begin
    out[5]=in;
    out[0]=0;out[2]=0;out[3]=0; out[4]=0;out[1]=0;out[6]=0;out[7]=0;
    end 
else if(sel==3'b110)
    begin 
    out[6]=in;
    out[1]=0;out[0]=0;out[3]=0; out[4]=0;out[5]=0;out[2]=0;out[7]=0;
    end
else if(sel==3'b111)
    begin
    out[7]=in;
    out[1]=0;out[2]=0;out[0]=0; out[4]=0;out[5]=0;out[6]=0;out[3]=0;
    end 
else
out[3:0]=4'bxxxx;

end
endmodule
