`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 03:09:08 PM
// Design Name: 
// Module Name: CS151_SHIFT
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


module CS151_SHIFT(
    input [5:0]a,
    input [5:0]b,
    output [5:0]out,
    output overflow
   // output [6:0]overflowcheck
    );
assign out = a<<b;
integer OFC;
always@(*) begin
            if (a[5] != out[5] )
                OFC = 1;
            else
                OFC = 0;
            end
assign overflow = OFC;
endmodule
