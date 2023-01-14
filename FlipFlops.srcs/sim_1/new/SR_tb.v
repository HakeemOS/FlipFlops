`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hakeem S. 
// 
// Create Date: 01/13/2023 12:32:36 PM
// Design Name: 
// Module Name: SR_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: SR "Flip FLop" testbench 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SR_tb();

    reg CLK, EN, RESET;
    reg [1:0] SR;  
    wire Q; 

    SRFF_s U1(Q, SR, EN, RESET, CLK); 

    always #5 CLK = ~CLK; 

    initial begin

        CLK = 0; 
        EN = 1'b0;
        SR = 2'b01; 
        RESET = 1'b0;

        #50
        EN = 1'b1;
        SR = 2'b01; 

        #50
        SR = 2'b11;

        #50
        SR = 2'b10;

        #50
        SR = 2'b11;

        #50
        RESET = 1'b1;

        #50
        RESET = 1'b0; 

        #50
        EN = 1'b0;

        #50
        SR = 2'b00;

        #50
        SR = 2'b11;

        #50
        EN = 1'b1;

        #50 
        SR = 2'b10;

        #100
        SR = 2'b00;

    end

endmodule
