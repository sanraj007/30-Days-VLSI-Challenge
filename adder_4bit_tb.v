`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2026 20:45:02
// Design Name: 
// Module Name: adder_4bit_tb
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


module adder_4bit_tb(

    );
reg [3:0]A,B;
reg cin;
wire [3:0]sum;
wire cout;

bit4_adder uut (A, B, cin,sum, cout);

initial begin
    A = 4'b0000; B = 4'b0000; cin = 0; #10;
    A = 4'b0011; B = 4'b0101; cin = 0; #10;
    A = 4'b1111; B = 4'b0001; cin = 0; #10;
    A = 4'b1010; B = 4'b0101; cin = 1; #10;

    #20 $finish;
end

endmodule
