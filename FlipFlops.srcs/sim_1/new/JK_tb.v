`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hakeem S.
// 
// Create Date: 01/13/2023 01:23:17 PM
// Design Name: 
// Module Name: JK_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: JK Flip Flop testbench
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module JK_tb();

    reg CLK, EN, RESET;
    reg [1:0] JK;  
    wire Q; 

    JKFF_s U2(Q, JK, EN, RESET, CLK); 

    always #5 CLK = ~CLK; 

    initial begin

        CLK = 0; 
        EN = 1'b0;
        JK = 2'b01; 
        RESET = 1'b0; 

        #50
        EN = 1'b1;
        JK = 2'b01; 

        #50
        JK = 2'b11;   

        #50
        JK = 2'b01;

        #50
        JK = 2'b10; 

        #50
        JK = 2'b10; 

        #50
        EN = 1'b0; 

        #50 
        JK = 2'b11; 

        #50
        EN = 1'b1; 

        #100
        RESET = 1'b1;

        #50
        RESET = 1'b0; 

        #50
        JK = 2'b10; 

        #50
        JK = 2'b00; 

    end
    
endmodule
