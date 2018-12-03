`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 00:34:56
// Design Name: 
// Module Name: ALU32bit
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


module ALU32bit(
    input MUXsel1,
    input [31:0] OA,OB,
    input [3:0] ALUopsel,
    output [31:0] ALUresult,
    output Overflow,
    output Equal,
    output Carry
    );
    wire [31:0] f0000;//NOP
    wire [31:0] f0001;//ADD
    wire oa,ca;
    wire [31:0] f0010;//SUB
    wire es,os,cs;
    wire [31:0] f0101;//AND
    wire [31:0] f0110;//OR 
    wire [31:0] f0111;//NOT
    wire [31:0] f1000;//XOR
    wire ex;
    wire [31:0] f1001;//SLL
    wire osl;
    wire [31:0] f1011;//MOV
    
    reg [31:0] result,MOVA;
    reg o,e,c;
    adder ADD(.A(OA),.B(OB),.Sum(f0001),.Carry(ca),.Overflow(oa));
    sub SUB(.A(OA),.B(OB),.Sum(f0010),.Equal(es),.Carry(cs),.Overflow(os));
    andder AND(.a(OA),.b(OB),.andder(f0101));
    CS151_Or OR(.a(OA),.b(OB),.out(f0110));
    CS151_not NOT(.a(OA),.out(f0111));
    CS151_XOR XOR(.a(OA),.b(OB),.out(f1000),.equal(ex));
    CS151_SHIFT SLL(.a(OA),.b(OB),.out(f1001),.overflow(osl));
    CS151_MOV MOV(.a(MOVA),.out(f1011));
    
    assign ALUresult = result;
    assign Overflow = o;
    assign Equal = e;
    assign Carry = c;
    always @(*) begin
        case(ALUopsel)
        4'b0000:{result,e,o,c} = {32'b0,1'b0,1'b0,1'b0};
        4'b0001:{result,e,o,c} = {f0001,1'b0,oa,ca};
        4'b0010:{result,e,o,c} = {f0010,es,os,cs};
        4'b0101:{result,e,o,c} = {f0101,1'b0,1'b0,1'b0};
        4'b0110:{result,e,o,c} = {f0110,1'b0,1'b0,1'b0};
        4'b0111:{result,e,o,c} = {f0111,1'b0,1'b0,1'b0};
        4'b1000:{result,e,o,c} = {f1000,ex,1'b0,1'b0}; 
        4'b1001:{result,e,o,c} = {f1001,1'b0,osl,1'b0};
        4'b1011:begin {result,e,o,c} = {f1011,1'b0,1'b0,1'b0};MOVA = MUXsel1 ? OB:OA; end
        endcase
    end
     
endmodule
