`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2026 21:14:25
// Design Name: 
// Module Name: simple_cpu_tb
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
module simple_cpu_tb(
    );
reg clk, rst;
reg [3:0] A_in, B_in;
wire [3:0] result;

simple_cpu uut (
    .clk(clk),
    .rst(rst),
    .A_in(A_in),
    .B_in(B_in),
    .result(result)
);
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    A_in = 4'b0101; 
    B_in = 4'b0011;

    #10 rst = 0;

    #100;

    $finish;
end
initial begin
    $monitor("time=%0t | sel=%b | A=%b | B=%b | result=%b",
              $time, uut.CU.sel, A_in, B_in, result);
end

endmodule
