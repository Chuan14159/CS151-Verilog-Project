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
   input [31:0]A,
    input [31:0]B,
    output [31:0]Sum,
    output [1:0]Equal,
    output [1:0]Carry,
    output [1:0]Overflow
    );
    wire [32:0] OverflowCheck;
    integer OFC;
    integer s;
    integer C;
    assign Sum = A-B;
    reg [31:0] Beta;
    assign Beta = ~B;
    assign Beta[0] = 1'b0;

 always@(*) begin
            if (Sum == 32'b00000000000000000000000000000000 )
                s = 1;
            else
                s = 0;
            end
  always@(*) begin
        if (OverflowCheck !== Sum )
            C = 1;
        else
            C = 0;
        end
    always@(*) begin
            if (A[31] != B[31])begin
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
    assign Equal = s;
    
endmodule
