`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 12:14:25 PM
// Design Name: 
// Module Name: adder
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


module adder(
    input [31:0]A,
    input [31:0]B,
    output [31:0]Sum,
    output [1:0]Carry,
    output [1:0]Overflow
    );
wire [32:0] OverflowCheck;
integer OFC;
assign Sum = A+B;
assign OverflowCheck = A+B;
integer C;
always@(*) begin
    if (OverflowCheck !== Sum )
        C = 1;
    else
        C = 0;
    end
always@(*) begin
        if (A[31] == B[31])begin
            if (A[31] != Sum[31] )
                OFC = 1;
            else
                OFC = 0;
            end
        else
            OFC = 0;
        end
assign Overflow = OFC;
assign Carry = C;
endmodule
