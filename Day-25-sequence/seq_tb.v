`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2026 00:20:45
// Design Name: 
// Module Name: seq_tb
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


module seq_tb(

    );
reg clk, rst, x;
wire y;
seq uut (clk, rst, x, y);

always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    x = 0;

    #10 rst = 0;
    x = 1; #10;
    x = 0; #10;
    x = 1; #10; 

    x = 1; #10;
    x = 0; #10;
    x = 1; #10; 

    #20 $finish;
end

endmodule
