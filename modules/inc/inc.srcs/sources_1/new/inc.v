`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2018 03:51:25 PM
// Design Name: 
// Module Name: inc
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


module inc(
    input clk,
    input [5:0]a,
    output reg [5:0]out
    );
always @(posedge clk) begin
    out <= a + 1;
end
endmodule
