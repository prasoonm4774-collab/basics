module 4bit_up_down_counter (
input clk,          
input rst,
input up_down,          
output reg [3:0] q  
);
always @(posedge clk) begin
if (rst) begin  
q <= 4'b0000;  
end 
else if (up_down) 
begin
q <= q + 1'b1; 
end
else begin
q <= q - 1'b1; 
end
end
endmodule
