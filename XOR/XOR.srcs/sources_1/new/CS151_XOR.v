`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 02:56:13 PM
// Design Name: 
// Module Name: CS151_XOR
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


module CS151_XOR(
    input [31:0]a,
    input [31:0]b,
    output [31:0]out,
    output equal
    );
assign out = a^b;
integer e;
always@(*) begin
    if (out == 32'b00000000000000000000000000000000)
        e = 1;
    else
        e = 0;
    end  
assign equal = e;
endmodule
