`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2026 21:22:00
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,rst,mode,
    output reg [3:0] count
    );
    always @(posedge clk or posedge rst)begin
    if(rst)
        count <=4'b0000;
    else begin
        if(mode)
            count <=count +1; 
        else
            count <=count -1; 
    end
end
endmodule
