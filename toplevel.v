
module toplevel (rst, clk,r_d, rs_1, rs_2, IMM, instr_test);

input rst, clk;

wire [7:0] PC_O, PC_O_4;
wire [31:0] Intr_O;
output [4:0] rs_1, rs_2, r_d;
output [11:0] IMM;
output [31:0] instr_test;


ADDER dut1 (.rst(rst), .PC_in_4(PC_O), .PC_out_4(PC_O_4));
PC dut0 (.clk(clk), .rst(rst), .PC_in(PC_O_4), .PC_out(PC_O));
Lab6ROM dut2 (.Address(PC_O), .InstOut(Intr_O), .clk(clk));
InstDecoder dut3(.instruction(Intr_O), .rs1(rs_1), .rs2(rs_2), .rd(r_d), .imm(IMM));

assign instr_test = Intr_O;

endmodule
