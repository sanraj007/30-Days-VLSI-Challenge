`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 21:02:29
// Design Name: 
// Module Name: gates_tb
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


module gates_tb(

    );
    reg a,b;
    wire y1,y2,y3,y4,y5,y6;
    Gates_dataflow d1(a,b,y1,y2);
    Gates_behavioral d2(a,b,y3,y4);
    Gates_gatelevel d3(a,b,y5,y6);
    initial begin
        a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10 $finish;

    end
endmodule
