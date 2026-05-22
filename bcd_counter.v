module bcd_counter (
input clk,
input rst,
output reg [3:0] bcd_out
);
always @(posedge clk) begin
if (rst) begin
bcd_out <= 4'b0000;
end
else begin
if (bcd_out == 4'b1001) begin
bcd_out <= 4'b0000; 
end
else begin
bcd_out <= bcd_out + 1'b1;
end
end
end
endmodule
