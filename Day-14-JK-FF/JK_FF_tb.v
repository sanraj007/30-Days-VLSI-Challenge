`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2026 19:25:09
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb(

    );

reg j,k,clk;
wire Q,Qbar;

JK_FF uut (j,k,clk,Q,Qbar);

always #5 clk = ~clk;

initial begin
    clk = 0;

    j=0; k=0; #10;
    j=1; k=0; #10;
    j=0; k=1; #10;
    j=1; k=1; #20;

    #20 $finish;
end

endmodule
