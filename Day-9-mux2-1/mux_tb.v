`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2026 22:56:11
// Design Name: 
// Module Name: mux_tb
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
module mux_tb( );
    reg a,b,sel;
    wire y;

df_mux uut (
    a,b,sel,y);

initial begin
    a=0;b=1;sel=0; #10;
    a=0;b=1;sel=1; #10;
    a=1;b=0;sel=0; #10;
    a=1;b=0;sel=1; #10;
    #10 $finish;
end
endmodule
