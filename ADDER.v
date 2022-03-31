
module ADDER (clk, rst, PC_in_4, PC_out_4);

input clk, rst;
input [3:0] PC_in_4;
output reg [7:0] PC_out_4;


always @ (posedge clk) begin

if (rst) begin

PC_out_4 <= 8'b0;
end

else begin 
PC_out_4 <= PC_in_4+8'd4;
end

end

endmodule
