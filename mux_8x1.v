module mux_8x1(I,S,Y);
input [7:0]I;
input [2:0]S;
output Y;
wire Y1,Y2;
Mux_4x1 MUXA({I[3],I[2],I[1],I[0]},S[1:0],Y1);
Mux_4x1 MUXB({I[7],I[6],I[5],I[4]},S[1:0],Y2);
mux2x1 MUXC(Y1,Y2,S[2],Y);
endmodule
