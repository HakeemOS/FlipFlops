`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hakeem S.
// 
// Create Date: 01/13/2023 01:52:49 PM
// Design Name: 
// Module Name: D_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: D Flip Flop testbench
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module D_tb();

    reg CLK, RESET, EN, D; 
    wire Q; 

    DFF_s U3(Q, D, RESET, EN, CLK); 

    always #5 CLK = ~CLK; 

    initial begin

        CLK = 0;
        RESET = 1; 
        EN = 0;
        D = 1; 
        #100
        RESET = 0; 
        EN = 0; 
        D = 1;

        #100
        RESET = 0; 
        EN = 1; 
        D = 1; 

        #100
        RESET = 0;
        EN = 1;
        D = 0; 

        #50
        D = 1; 

        #50
        RESET = 1; 
        
    end

endmodule
