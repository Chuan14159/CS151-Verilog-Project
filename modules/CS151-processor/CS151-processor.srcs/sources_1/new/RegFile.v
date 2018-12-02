`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 23:05:19
// Design Name: 
// Module Name: RegFile
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


module RegFile64x32(
    input reset,
    input clk,
    input WE1,
    input [5:0] RA1,
    input [5:0] RA2,
    input [5:0] WA,
    input [31:0] WD,
    output [31:0] RD1,
    output [31:0] RD2
    );
    
    reg [31:0] RF[63:0];
    
    assign RD1 = RF[RA1];
    assign RD2 = RF[RA2];
    
    integer i;
    always @(posedge clk) begin
        if (reset) begin
            for (i = 0; i < 64; i = i + 1) begin
                RF[i] <= 0;
            end
        end else begin
            if(WE1) RF[WA] <= WD;
        end
    end
endmodule
