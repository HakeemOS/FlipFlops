`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hakeem S.
// 
// Create Date: 01/13/2023 11:32:17 AM
// Design Name: 
// Module Name: DFF_s
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: D Flip Flop with enable and async reset 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DFF_s(q, d, reset, en, clk); 
    
    output reg q; 

    input d, en, reset, clk; 
    
    always @(posedge clk, posedge reset) begin
        if (reset) 
            q <= 1'b0;                  //async reset
        else begin 
            if (en)
                q <= d;                 
        end    
    end  
    
endmodule
