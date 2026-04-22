`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2026 21:26:37
// Design Name: 
// Module Name: counter_tb
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


module counter_tb(

    );
reg clk, rst, mode;
wire [3:0]count;

counter uut (clk,rst,mode,count);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    mode = 1;  
    #10 rst = 0;
    #50;
    
    mode = 0;
    #50;
    
    mode = 1;
    #50;

    $finish;
end

endmodule
