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


module Controller(
    input [31:0] ins,
    output ALUopsel,
    output MUXsel1,
    output [5:0] rs,
    output [5:0] rt,
    output [5:0] rd,
    output [14:0] imm,
    output WE1
    );
    assign MUXsel1 = ins[31];
    assign rs = ins[30:25];
    assign rd = ins[24:19];
    assign ALUopsel = ins[18:15];
    assign rt = ins[14:9];
    assign imm = ins[14:0];
    assign WE1 = 1;
endmodule
