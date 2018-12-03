`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 00:19:41
// Design Name: 
// Module Name: CS151-Processor
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


module CS151_Processor(
    input reset,
    input clk,
    input [5:0] addrin,addrout,
    output [31:0] ALUresult,
    output overflow,
    output equal,
    output carry
    //test
    //output [31:0] instruction,             
    //output [3:0] ALUopsel,
    //output MUXsel1,             
    //output [5:0] rs,            
    //output [5:0] rt,           
    //output [5:0] rd,          
    //output [14:0] imm,         
    //output WE1,                  
    //output [31:0] RD2,ext_imm,OA,OB
    );
    
    wire [31:0] instruction;
    wire [3:0] ALUopsel;   
    wire MUXsel1;    
    wire [5:0] rs;
    wire [5:0] rt;
    wire [5:0] rd;
    wire [14:0] imm;
    wire WE1;      
    wire [31:0] RD2,ext_imm,OA,OB;
    integer inc = 1;
    PC CLK(.clk(clk),.addrin(addrin),.addrout(addrout));
    inc6bit INC(.A(addrout),.out(addrin));
    insMem IM(.addr(addrout),.RD(instruction));
    Controller CTRL(.ins(instruction),.ALUopsel(ALUopsel),.MUXsel1(MUXsel1),.rs(rs),.rt(rt),.rd(rd),.imm(imm),.WE1(WE1));
    RegFile64x32 RF(.reset(reset),.clk(clk),.WE1(WE1),.RA1(rs),.RA2(rt),.WA(rd),.WD(ALUresult),.RD1(OA),.RD2(RD2));
    sign_extend SE(.a(imm),.out(ext_imm));
    Mux2_1 MUX1(.cntrl(MUXsel1),.a(ext_imm),.b(RD2),.out(OB));
    ALU32bit ALU(.OA(OA),.OB(OB),.ALUopsel(ALUopsel),.MUXsel1(MUXsel1),.ALUresult(ALUresult),.Overflow(overflow),.Equal(equal),.Carry(carry));
endmodule
