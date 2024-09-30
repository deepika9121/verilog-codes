`timescale 1ns / 1ps 
// Engineer: B DEEPIKA
// Design Name: demux 1x8 case statements
// Module Name: demux_1x8_case
/////////////////////////////////////////////


module demux_1x8_case(input in,[2:0]sel,output reg[7:0]out);
always@*
begin
case(sel)
3'b000:
    begin 
        out=8'b0000_0001;
    end
3'b001:
    begin
    out=8'b0000_0010;
      end
3'b010:
    begin 
    out=8'b0000_0100;
    end
3'b011:
    begin
    out=8'b0000_1000;
    end  
3'b100:
    begin 
    out=8'b0001_0000;
    end
3'b101:
    begin
    out=8'b0010_0000;
    end
3'b110:
    begin 
    out=8'b0100_0000;
    end
3'b111:
    begin
    out=8'b1000_0000;
    end  
    default :out=8'bxxxx_xxxx;
endcase
end
endmodule

