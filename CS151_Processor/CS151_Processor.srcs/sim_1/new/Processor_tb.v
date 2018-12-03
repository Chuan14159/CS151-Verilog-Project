`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 03:31:51
// Design Name: 
// Module Name: Processor_tb
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


module Processor_tb();

reg reset;
reg clk;
reg [5:0] addr=0;
wire overflow;
wire equal;
wire carry;
wire [31:0] ALUresult;

//test
//wire [31:0] instruction;
//wire [3:0] ALUopsel;   
//wire MUXsel1;    
//wire [5:0] rs;
//wire [5:0] rt;
//wire [5:0] rd;
//wire [14:0] imm;
//wire WE1;      
//wire [31:0] RD2,ext_imm,OA,OB;
//insMem IF(.addr(addr),.RD(instruction));
integer i;
CS151_Processor PC(.reset(reset),.clk(clk),.addr(addr),.ALUresult(ALUresult),.overflow(overflow),.equal(equal),.carry(carry)/*test*,.instruction(),.ALUopsel(ALUopsel)*/);
initial begin

reset = 1; clk = 1;
#5 clk = 0;#5 clk = 1; reset = 0;
for(i = 0; i < 27; i=i+1) begin
    #5 clk = 0; #5 clk = 1; addr = i;
end
#5 clk = 0; #5 $finish;
end
endmodule
