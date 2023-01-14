`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hakeem S. 
// 
// Create Date: 01/13/2023 11:32:17 AM
// Design Name: 
// Module Name: TFF_s
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: T Flip FLop with enable and async reset 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TFF_s(q, t, en, reset, clk);
    
    output reg q; 
    
    input t, en, reset, clk; 
        
    always @(posedge clk, posedge reset) begin
        if (reset) 
            q = 1'b0;               //async reset 
        else begin
            if (~en) 
                q = q;              //Hold if not enabled 
            else begin
                if(t)
                q = ~q;             //T = 1, Toggle 
                else
                q = q;              //T = 0, Hold 
            end                 
        end            
    end   

endmodule
