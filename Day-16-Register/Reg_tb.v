`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2026 19:26:36
// Design Name: 
// Module Name: Reg_tb
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


module Reg_tb(

    );
    reg [3:0]D;
    reg clk,rst;
    wire [3:0]Q;
    Register uut(D,clk,rst,Q);
    always #5 clk=~clk;
    initial begin
    clk=0;
    rst=1;
    #10 rst =0;
    D=4'b0011;#10;
    D=4'b0101;#10;
    D=4'b1111;#10;
    D=4'b1011;#10;
    #20 $finish;
    end
    
endmodule
