module mux8x1_tb();
reg[7:0]I;
reg[2:0]S;
wire Y;
mux_8x1 MUX_INST(I,S,Y);
initial begin 
$monitor($time,"I=%b,S=%b,Y=%b",I,S,Y);
I=4'b1011;S=3'b000;
#10 S =3'b001;
#10 S=3'b010;
#10 S=3'b110;
#10 I=4'b0011;S=3'b000;
#10 S=3'b011;#10 S=3'b100;
#10 S=3'b111;
#10 $stop;
end
endmodule
