`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2026 22:11:53
// Design Name: 
// Module Name: FA_Tb
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


module FA_Tb(

    );
    reg a,b,cin;
    wire sum,cy;
    Full_Adder uut(a,b,cin,sum,cy);
    initial begin
    $display("A B Cin | Sum Cout");
    $monitor("%b %b %b |%b %b",a,b,cin,sum,cy);
    a=0;b=0;cin=0; #10;
    a=0;b=0;cin=1; #10;
    a=0;b=1;cin=0; #10;
    a=0;b=1;cin=1; #10;
    a=1;b=0;cin=0; #10;
    a=1;b=0;cin=1; #10;
    a=1;b=1;cin=0; #10;
    a=1;b=1;cin=1; #10;
$finish;
    end
endmodule
