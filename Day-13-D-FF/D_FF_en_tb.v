`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2026 20:22:54
// Design Name: 
// Module Name: D_FF_en_tb
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


module D_FF_en_tb(

    );
reg D,clk,en;
wire Q;

D_FF_en uut (D,clk,en,Q);

always #5 clk = ~clk;

initial begin
    clk = 0;
    en = 0;
    D = 0;

    D = 1; en = 0; #10;
    D = 0; en = 0; #10;

    en = 1; D = 1; #10;
    D = 0; #10;

    en = 0; D = 1; #10;

    #20 $finish;
end

endmodule
