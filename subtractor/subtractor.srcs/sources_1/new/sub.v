`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 01:44:34 PM
// Design Name: 
// Module Name: sub
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


module sub(
   input [5:0]A,
    input [5:0]B,
    output [5:0]Sum,
    output [1:0]Equal,
    output [1:0]Carry,
    output [1:0]Overflow
    );
    wire [6:0] OverflowCheck;
    integer OFC;
    integer s;
    assign Sum = A-B;
    assign OverflowCheck = A-B;
    always@(*) begin
            if (Sum == 6'b000000 )
                s = 1;
            else
                s = 0;
            end
    assign Equal = s;
    always@(*) begin
        if (OverflowCheck !== Sum )
            OFC = 1;
        else
            OFC = 0;
        end
    assign Overflow = OFC;
    assign Carry = OFC;
    
endmodule
