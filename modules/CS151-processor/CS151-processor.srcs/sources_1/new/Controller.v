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
    output [3:0] ALUopsel,
    output MUXsel1,
    output [5:0] rs,
    output [5:0] rt,
    output [5:0] rd,
    output [14:0] imm,
    output WE1
    );
    reg [0:5] RA1,RA2;
    assign MUXsel1 = ins[31];
    assign rs = RA1;
    assign rd = ins[24:19];
    assign ALUopsel = ins[18:15];
    assign rt = RA2;
    assign imm = ins[14:0];
    assign WE1 = (ALUopsel!=0);
    
    always@(*) begin
        if(ALUopsel == 4'b1001) begin RA1 = ins[24:19]; RA2 = ins[30:25]; end
        else  begin RA1 = ins[30:25]; RA2 = ins[14:9]; end
    end
endmodule
