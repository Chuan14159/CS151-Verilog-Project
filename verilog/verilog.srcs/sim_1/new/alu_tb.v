`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 02:37:35
// Design Name: 
// Module Name: alu_tb
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


module alu_tb(

    );
    reg [31:0] a,b;
    wire [31:0] result;
    reg [3:0] op;
    wire o,e,c;
    ALU32bit alu(.OA(a),.OB(b),.ALUopsel(op),.ALUresult(result),.Overflow(o),.Equal(e),.Carry(c));
    
    initial begin
        {a,b} = {32'h2,32'h3};
        op = 4'b0000; #3
        op = 4'b0001; #3
        op = 4'b0010; #3
        op = 4'b0101; #3
        op = 4'b0110; #3
        op = 4'b0111; #3
        op = 4'b1000; #3
        op = 4'b1001; #3
        op = 4'b1011; #3
        $finish;
    end
endmodule
