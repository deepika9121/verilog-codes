`timescale 1ns / 1ps
//////////////// 
// Engineer: B DEEPIKA
// Design Name: kgp-adder 16bit
// Module Name: kgp_adder
////////////////////////
module  kgp_adder(input [15:0]a,b,input cin,output wire
[16:0]sum);
wire [1:0]temp1 [16:0];
wire [1:0]temp2 [16:0];
wire [1:0]temp3 [16:0];
wire [1:0]temp4 [16:0];
wire temp5 [16:0];
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
assign temp1[9]={a[8],b[8]};
assign temp1[10]={a[9],b[9]};
assign temp1[11]={a[10],b[10]};
assign temp1[12]={a[11],b[11]};
assign temp1[13]={a[12],b[12]};
assign temp1[14]={a[13],b[13]};
assign temp1[15]={a[14],b[14]};
assign temp1[16]={a[15],b[15]};

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
tablee u9(temp1[8],temp1[9],temp2[9]);
tablee u10(temp1[9],temp1[10],temp2[10]);
tablee u11(temp1[10],temp1[11],temp2[11]);
tablee u12(temp1[11],temp1[12],temp2[12]);
tablee u13(temp1[12],temp1[13],temp2[13]);
tablee u14(temp1[13],temp1[14],temp2[14]);
tablee u15(temp1[14],temp1[15],temp2[15]);
tablee u16(temp1[15],temp1[16],temp2[16]);
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
tablee w8(temp2[7],temp2[9],temp3[9]);
tablee w9(temp2[8],temp2[10],temp3[10]);
tablee w10(temp2[9],temp2[11],temp3[11]);
tablee w11(temp2[10],temp2[12],temp3[12]);
tablee w12(temp2[11],temp2[13],temp3[13]);
tablee w13(temp2[12],temp2[14],temp3[14]);
tablee w14(temp2[13],temp2[15],temp3[15]);
tablee w15(temp2[14],temp2[16],temp3[16]);
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
tablee z6(temp3[5],temp3[9],temp4[9]);
tablee z7(temp3[6],temp3[10],temp4[10]);
tablee z8(temp3[7],temp3[11],temp4[11]);
tablee z9(temp3[8],temp3[12],temp4[12]);
tablee z10(temp3[9],temp3[13],temp4[13]);
tablee z11(temp3[10],temp3[14],temp4[14]);
tablee z12(temp3[11],temp3[15],temp4[15]);
tablee z13(temp3[12],temp3[16],temp4[16]);
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
assign temp5[9]=temp4[9][1]&temp4[9][0];
assign temp5[10]=temp4[10][1]&temp4[10][0];
assign temp5[11]=temp4[11][1]&temp4[11][0];
assign temp5[12]=temp4[12][1]&temp4[12][0];
assign temp5[13]=temp4[13][1]&temp4[13][0];
assign temp5[14]=temp4[14][1]&temp4[14][0];
assign temp5[15]=temp4[15][1]&temp4[15][0];
assign temp5[16]=temp4[16][1]&temp4[16][0];


xor v1(sum[0],a[0],b[0],temp5[0]);
xor v2(sum[1],a[1],b[1],temp5[1]);
xor v3(sum[2],a[2],b[2],temp5[2]);
xor v4(sum[3],a[3],b[3],temp5[3]);
xor v5(sum[4],a[4],b[4],temp5[4]);
xor v6(sum[5],a[5],b[5],temp5[5]);
xor v7(sum[6],a[6],b[6],temp5[6]);
xor v8(sum[7],a[7],b[7],temp5[7]);
xor v9(sum[8],a[8],b[8],temp5[8]);
xor v10(sum[9],a[9],b[9],temp5[9]);
xor v11(sum[10],a[10],b[10],temp5[10]);
xor v12(sum[11],a[11],b[11],temp5[11]);
xor v13(sum[12],a[12],b[12],temp5[12]);
xor v14(sum[13],a[13],b[13],temp5[13]);
xor v15(sum[14],a[14],b[14],temp5[14]);
xor v16(sum[15],a[15],b[15],temp5[15]);
buf v17(sum[16],temp4[16]);
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