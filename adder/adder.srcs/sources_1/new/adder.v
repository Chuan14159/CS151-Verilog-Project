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
    input [5:0]A,
    input [5:0]B,
    output [5:0]Sum,
    output [1:0]Carry,
    output [1:0]Overflow
    );
wire [6:0] OverflowCheck;
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
        if (A[5] == B[5])begin
            if (A[5] != Sum[5] )
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
