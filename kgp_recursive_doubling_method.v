
`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name:  kgp_recursive_doubling_method
// Module Name: kgp_recursive_doubling_method
////////////////
module kgp_recursive_doubling_method(input [7:0]a,b,input cin,output wire
[8:0]sum);
wire [1:0]temp1 [8:0];
wire [1:0]temp2 [8:0];
wire [1:0]temp3 [8:0];
wire [1:0]temp4 [8:0];
wire temp5 [8:0];
//step--1
assign temp1[0]={cin,cin};
assign temp1[1]={a[0],b[0]};
assign temp1[2]={a[1],b[1]};
assign temp1[3]={a[2],b[2]};
assign temp1[4]={a[3],b[3]};
assign temp1[5]={a[4],b[4]};
assign temp1[6]={a[5],b[5]};
assign temp1[7]={a[6],b[6]};
assign temp1[8]={a[7],b[7]};

//step2   ----> compare 1 adjacent bit   --->leave 1bit

assign temp2[0]=temp1[0];
tablee u1(temp1[0],temp1[1],temp2[1]);
tablee u2(temp1[1],temp1[2],temp2[2]);
tablee u3(temp1[2],temp1[3],temp2[3]);
tablee u4(temp1[3],temp1[4],temp2[4]);
tablee u5(temp1[4],temp1[5],temp2[5]);
tablee u6(temp1[5],temp1[6],temp2[6]);
tablee u7(temp1[6],temp1[7],temp2[7]);
tablee u8(temp1[7],temp1[8],temp2[8]);
//step3    ----> compare adjacent bit   --->leave 2 bit 
assign temp3[0]=temp2[0];
assign temp3[1]=temp2[1];
tablee w1(temp2[0],temp2[2],temp3[2]);
tablee w2(temp2[1],temp2[3],temp3[3]);
tablee w3(temp2[2],temp2[4],temp3[4]);
tablee w4(temp2[3],temp2[5],temp3[5]);
tablee w5(temp2[4],temp2[6],temp3[6]);
tablee w6(temp2[5],temp2[7],temp3[7]);
tablee w7(temp2[6],temp2[8],temp3[8]);
//step4    ----> compare adjacent bit   --->leave 4 bit 
assign temp4[0]=temp3[0];
assign temp4[1]=temp3[1];
assign temp4[2]=temp3[2];
assign temp4[3]=temp3[3];
tablee z1(temp3[0],temp3[4],temp4[4]);
tablee z2(temp3[1],temp3[5],temp4[5]);
tablee z3(temp3[2],temp3[6],temp4[6]);
tablee z4(temp3[3],temp3[7],temp4[7]);
tablee z5(temp3[4],temp3[8],temp4[8]);

//and operation

assign temp5[0]=temp4[0][1]&temp4[0][0];
assign temp5[1]=temp4[1][1]&temp4[1][0];
assign temp5[2]=temp4[2][1]&temp4[2][0];
assign temp5[3]=temp4[3][1]&temp4[3][0];
assign temp5[4]=temp4[4][1]&temp4[4][0];
assign temp5[5]=temp4[5][1]&temp4[5][0];
assign temp5[6]=temp4[6][1]&temp4[6][0];
assign temp5[7]=temp4[7][1]&temp4[7][0];
assign temp5[8]=temp4[8][1]&temp4[8][0];

xor v1(sum[0],a[0],b[0],temp5[0]);
xor v2(sum[1],a[1],b[1],temp5[1]);
xor v3(sum[2],a[2],b[2],temp5[2]);
xor v4(sum[3],a[3],b[3],temp5[3]);
xor v5(sum[4],a[4],b[4],temp5[4]);
xor v6(sum[5],a[5],b[5],temp5[5]);
xor v7(sum[6],a[6],b[6],temp5[6]);
xor v8(sum[7],a[7],b[7],temp5[7]);
buf v9(sum[8],temp4[8]);
endmodule

module tablee(input  [1:0] past,present,output reg [1:0] out);
reg [3:0] tablee;
always@*
begin
tablee={past,present};
case(tablee)
4'b0000:out=2'b00; //k-k=k
4'b0001:out=2'b00;//k-p=k
4'b0010:out=2'b00;//k-p=k
4'b0011:out=2'b11;//k-g=g

4'b0100:out=2'b00;//p-k=k
4'b0101:out=2'b01;//p-p=p
4'b0110:out=2'b10;//p-p=p
4'b0111:out=2'b11;//p-g=g

4'b1000:out=2'b00;//p-k=k
4'b1001:out=2'b01;//p-p=p
4'b1010:out=2'b10;//p-p=p
4'b1011:out=2'b11;//p-g=g

4'b1100:out=2'b00;//g-k=k
4'b1101:out=2'b11;//g-p=g
4'b1110:out=2'b11;//g-p=g
4'b1111:out=2'b11;//g-g=g
default:out=2'b00;
endcase
end
endmodule
