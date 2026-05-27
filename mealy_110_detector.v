module mealy_110_detector (
input clk,
input rst,
input x,
output reg y
);
parameter
S0 = 2'b00,
S1 = 2'b01,
S2 = 2'b10;
reg [1:0] state, next_state;
always @(posedge clk or posedge rst) begin
if (rst)
state <= S0;
else
state <= next_state;
end
always @(*) begin
case(state)
S0:
begin
if (x == 1)
next_state = S1;
else
next_state = S0;
end
S1:
begin
if (x == 1)
next_state = S2;
else
next_state = S0;
end
S2:
begin
if (x == 0)
next_state = S0;
else
next_state = S2;
end
default: next_state = S0;
endcase
end
always @(*) begin
if (state == S2 && x == 0)
y = 1;
else
y = 0;
end
endmodule
