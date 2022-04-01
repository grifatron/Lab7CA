
module PC(clk, rst, PC_in, PC_out);

input clk, rst;
input [7:0] PC_in;
output reg [7:0] PC_out;

initial begin
PC_out = 8'b0;
end


always @ (posedge clk or posedge rst) begin

if (rst) begin
PC_out = 8'b0;
end

else begin

PC_out = PC_in;


end
 
end


endmodule
