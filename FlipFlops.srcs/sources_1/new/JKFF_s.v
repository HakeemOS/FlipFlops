`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hakeem S.
// 
// Create Date: 01/13/2023 11:32:17 AM
// Design Name: 
// Module Name: JKFF_s
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: JK Flip FLop with enable and async reset 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module JKFF_s(q, jk, en, reset, clk);

    output reg q; 

    input [1:0] jk;
    input en, reset, clk;

    always @(posedge clk, posedge reset) begin
         if (reset) 
                q = 1'b0;                   //async reset 
        else begin
            if(en) 
                case (jk)
                    2'b01 : q = 1'b0;       //Reset
                    2'b10 : q = 1'b1;       //Set
                    2'b11 : q = ~q;         //Toggle 
                    2'b00 : q = q;          //Hold 
                endcase
        end
    end

endmodule
