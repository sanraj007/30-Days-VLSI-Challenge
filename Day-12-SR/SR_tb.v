`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2026 22:03:16
// Design Name: 
// Module Name: SR_tb
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


module SR_tb(

    );
reg S,R,clk;
wire Q,Qbar;

SR uut (S,R,clk,Q,Qbar);

always #5 clk =~clk;

initial begin
    clk = 0;

    S=0;R=0; #10;
    S=1;R=0; #10;
    S=0;R=1; #10;
    S=1;R=1; #10;

    #20 $finish;
end

endmodule
