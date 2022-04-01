
module testbench (i, o);

input i;
output o;

reg clk, rst;
wire [4:0] RD, RS1, RS2;
wire [11:0] Imm;
wire [31:0] instr_test;
reg [7:0] counter;

toplevel dut0 (.rst(rst), .clk(clk), .r_d(RD), .rs_1(RS1), .rs_2(RS2), .IMM(Imm), .instr_test(instr_test));

initial begin 

clk = 1'b0;
rst = 1'b1;
counter =8'b0;

#1
rst=1'b0;
end

always begin

 
#5 clk = ~clk;


counter = counter + 1;

if(counter > 20) begin

$stop;
end

end

endmodule
