module RCA_4bit_tb();
reg[3:0]a,b;
reg c;
wire[4:0]s;
RCA_4bit RCA_INST(a,b,c,s);
initial begin
$monitor($time,"a=%d,b=%d,s=%d",a,b,s);
a=4'd10;b=4'd2;c=1'b0;
#10 a=4'd15;b=4'd15;
#10 a=4'd12;b=4'd12;
#10 a=4'd13;b=4'd13;
#10 a=4'd14;b=4'd14;
#10 $stop;
end
endmodule
