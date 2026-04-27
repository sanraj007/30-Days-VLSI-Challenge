`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2026 22:06:26
// Design Name: 
// Module Name: FSM_101_tb
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


module FSM_101_tb(

    );
reg clk,rst,x;
wire y;

FSM_101 uut (clk, rst, x, y);

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
