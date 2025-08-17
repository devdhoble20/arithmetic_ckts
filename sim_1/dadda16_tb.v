`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 14:55:25
// Design Name: 
// Module Name: dadda16_tb
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


module dadda16_tb();
    reg [15:0] a,b;
    wire [31:0] m;
    
    dadda16 uut (a, b, m);
    
    initial begin
    a=1500;
    b=198;
    #10;
    
    a=60000;
    b=60000;
    #10;
    
    a=5445;
    b=564;
    #10;
    
    a=154;
    b=10786;
    #10;
    
    a=4095;
    b=4095;
    #10;
    
    $finish;
    end
endmodule
