`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 22:54:09
// Design Name: 
// Module Name: shift_reg_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_reg_tb(
    );
reg clk,rst,s_in;
wire [3:0] Q;

shift_reg uut (clk,rst,s_in,Q);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    s_in = 0;
    #10 rst = 0;

    s_in = 1; #10;
    s_in = 0; #10;
    s_in = 1; #10;
    s_in = 1; #10;

    #20 $finish;
end

endmodule
