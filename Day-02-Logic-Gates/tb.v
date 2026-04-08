`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 23:27:10
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg a,b;
    wire y1,y2,y3,y4,y5,y6;
    gates_dataflow d1(a,b,y1,y2);
    gates_behavioral d2(a,b,y3,y4);
    gates_gatelevel d3(a,b,y5,y6);
initial begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $finish;
end

endmodule
