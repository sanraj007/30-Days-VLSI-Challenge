`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2026 19:52:27
// Design Name: 
// Module Name: D_FF_tb
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


module D_FF_tb(

    );
    reg D,clk;
    wire Q;
    D_FF_basic uut(D,clk,Q);
    always #5 clk=~clk;
    initial begin 
    clk=0;
    D=0; #10;
    D=1; #10;
    D=0; #10;
    $finish;
    end
endmodule
