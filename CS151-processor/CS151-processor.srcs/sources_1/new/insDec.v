`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 20:26:41
// Design Name: 
// Module Name: instruction
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


module insDec(
    input [31:0] ins,
    output RI,
    output [5:0] rs,
    output [5:0] rd,
    output [3:0] func,
    output [5:0] rt,
    output [8:0] imm
    );
    assign RI = ins[31];
    assign rs = ins[30:25];
    assign rd = ins[24:19];
    assign func = ins[18:15];
    assign rt = ins[14:9];
    assign imm = ins[8:0];
endmodule
