
module ADDER (rst, PC_in_4, PC_out_4);

input rst;
input [7:0] PC_in_4;
output reg [7:0] PC_out_4;

/*initial begin

PC_out_4 = 8'b0;
end
*/
always @ (*) begin

if (rst) begin

PC_out_4 <= 8'b0;
end

else begin 
PC_out_4 <= PC_in_4+8'd4;
end

end

endmodule
