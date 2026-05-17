module FA(a,b,cin,sum,cout);
input a,b,cin;
output sum;
output cout;
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (cin & a);
endmodule
module RCA_4bit(a,b,c,s);
input [3:0] a,b;
input c;
output [4:0]s;
wire c0,c1,c2;
FA FA0(a[0],b[0],c,s[0],c0);
FA FA1(a[1],b[1],c0,s[1],c1);
FA FA2(a[2],b[2],c1,s[2],c2);
FA FA3(a[3],b[3],c2,s[3],s[4]);
endmodule


