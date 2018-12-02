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
    output [1:0]Overflow,
    output [32:0]OverflowCheck,
    output [31:0] Beta
    );
    wire [32:0] OverflowCheck;
    wire [31:0] ov;
    wire[31:0] ba;
    integer OFC;
    integer s;
    integer C;
    assign Sum = A-B;
    assign Beta = ~B - 1;
    assign OverflowCheck = A+Beta;
    assign ov = A+Beta;
 always@(*) begin
            if (Sum == 32'b00000000000000000000000000000000 )
                s = 1;
            else
                s = 0;
            end
  always@(*) begin
        if (OverflowCheck[32] == 1'b1 )
            C = 1;
        else
            C = 0;
        end
    always@(*) begin
            if (A[31] == B[31])begin
                if (A[31] != ov[31] )
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
