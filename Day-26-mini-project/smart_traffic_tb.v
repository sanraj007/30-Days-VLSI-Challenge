`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2026 21:56:42
// Design Name: 
// Module Name: smart_traffic_tb
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
module smart_traffic_tb(

    );
reg clk, rst;
reg traffic_A, traffic_B;
reg emergency_A, emergency_B;
wire [1:0] light_A, light_B;
smart_traffic uut (clk, rst,traffic_A, traffic_B,emergency_A, emergency_B,
    light_A, light_B
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;

    traffic_A = 0;
    traffic_B = 0;
    emergency_A = 0;
    emergency_B = 0;
    #10 rst = 0;
    traffic_A = 1; #50;
    traffic_A = 0; #50;
    
    traffic_B = 1; #50;

    emergency_A = 1; #30;
    emergency_A = 0;

    #100 $finish;
end

endmodule
