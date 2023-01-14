`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hakeem S.
// 
// Create Date: 01/13/2023 11:32:17 AM
// Design Name: 
// Module Name: SRFF_s
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: SR "Flip Flop" with enable and async reset
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SRFF_s(q, sr, en, reset, clk);

    output reg q; 

    input [1:0] sr;
    input en, clk, reset;

    always @(posedge clk, posedge reset ) begin
        if (reset) 
            q = 1'b0;                   //async reset  
        else begin
            if(en)
                case (sr)
                    2'b01 : q = 1'b0;   //Reset
                    2'b10 : q = 1'b1;   //Set
                    2'b11 : q = q;      //Hold
                    2'b00 : q = 1'bz;   //invalid state 
                endcase
        end
    end

endmodule
