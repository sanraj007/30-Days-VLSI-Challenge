module simple_cpu(
    input clk,
    input rst,
    input [3:0] A_in,
    input [3:0] B_in,
    output [3:0] result
);

wire [3:0] A_reg, B_reg;
wire [3:0] alu_out;
wire [1:0] sel;

control_unit CU (.clk(clk),.rst(rst),.sel(sel));

register regA (.clk(clk),.rst(rst),.data_in(A_in),
               .data_out(A_reg));

register regB (.clk(clk),.rst(rst),.data_in(B_in),
               .data_out(B_reg));

alu ALU1 (.A(A_reg),.B(B_reg),.sel(sel),
          .result(alu_out));

register regOut (.clk(clk),.rst(rst),.data_in(alu_out),
                 .data_out(result));

endmodule