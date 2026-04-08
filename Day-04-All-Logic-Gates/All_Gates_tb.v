`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2026 20:36:01
// Design Name: 
// Module Name: All_Gates_tb
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


module All_Gates_tb(

    );
    reg a,b;
    wire y_not,y_and,y_or,y_nand,y_nor,y_xor,y_xnor;
    All_Gates uut (a,b,y_not,y_and,y_or,y_nand,y_nor,y_xor,y_xnor);
    initial begin
    a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10 $finish;
    end
endmodule
