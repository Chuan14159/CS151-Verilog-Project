`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 22:43:46
// Design Name: 
// Module Name: Controller_tb
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


module Controller_tb();

    reg [31:0] ins;
    wire ALUopsel;
    wire MUXsel1;
    wire [5:0] rs;
    wire [5:0] rt;
    wire [5:0] rd;
    wire [14:0] imm;
    wire WE1;
    Controller Ctrl(.ins(ins),.ALUopsel(ALUopsel),.MUXsel1(MUXsel1),.rs(rs),.rt(rt),.rd(rd),.imm(imm),.WE1(WE1));
    initial begin
        assign ins = 32'b10001011011100010110100111000111; #20
        assign ins = 32'b00101010100101010101010101010101; #20
        assign ins = 32'b10101010101000110101010101010101; #20
        $finish;
    end
endmodule
