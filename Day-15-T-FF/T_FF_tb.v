`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2026 11:09:43
// Design Name: 
// Module Name: T_FF_tb
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

module T_FF_tb;

reg T, clk, rst;
wire Q, Qbar;

T_FF uut (T, clk, rst,Q, Qbar);

always #5 clk =~clk;

initial begin
    clk = 0;
    rst = 1;
    T = 0;

    #10 rst = 0; 

    T = 0; #10;
    T = 1; #20;
    T = 0; #10;
    T = 1; #20;
    #20 $finish;
end

endmodule