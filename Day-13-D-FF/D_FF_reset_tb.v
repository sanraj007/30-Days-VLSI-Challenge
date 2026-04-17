`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2026 20:26:56
// Design Name: 
// Module Name: D_FF_reset_tb
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


module D_FF_reset_tb(

    );
reg D,clk,rst;
wire Q;

D_FF_reset uut (D,clk,rst,Q);

always #5 clk =~clk;

initial begin
    clk = 0;
    rst = 0;
    D = 0;
    
    D = 0; rst = 0; #10;
    D = 1; rst = 0; #10;

    rst = 1; #10;
    
    rst = 0; D = 1; #10;

    D = 0; #10;

    #20 $finish;
end

endmodule
