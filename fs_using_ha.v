`timescale 1ns / 1ps
////////////////////
// Engineer: B DEEPIKA
// Design Name: fs_using_ha
// Module Name: fs_using_ha
///////////////////////////////


module fs_using_ha(input a,b,c,output wire diff, borrow);
wire o1,o2,o3,o4,o5,o6,o7;
ha u1(b,c,o1,o2);
ha u2(o1,a,diff,o3);
ha u3(a,1,o4,o5);
ha u4(o1,o4,o6,o7);
or u5(borrow,o2,o7);

endmodule
module ha(input a,b,output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule