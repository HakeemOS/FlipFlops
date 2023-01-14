`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hakeem S.
// 
// Create Date: 01/14/2023 09:37:49 AM
// Design Name: 
// Module Name: T_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: T Flip Flop testbenchs
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module T_tb();

    reg CLK, T, EN, RESET;  
    wire Q; 

    TFF_s U4(Q, T, EN, RESET, CLK); 

    always #5 CLK = ~CLK; 

    initial begin

        CLK = 0; 
        EN = 1'b0;
        RESET = 1'b1; 
        T = 1'b0; 

        #50
        EN = 1'b1;
        T = 1'b0; 

        #50; 
        RESET = 1'b0;

        #50
        T = 1'b1;   

        #150
        RESET = 1'b1;

        #50
        RESET = 1'b0; 

        #50
        T = 1'b0;

        #50
        T = 1'b1;

        #50 
        EN = 1'b0;
        
        #50
        EN = 1'b1; 

    end

endmodule
