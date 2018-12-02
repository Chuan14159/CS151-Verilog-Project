`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 01:46:51 PM
// Design Name: 
// Module Name: sub_tb
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


module sub_tb;
    wire [31:0]Sum;
    wire Equal;
    wire Carry; 
    wire Overflow;
    wire[32:0]OverflowCheck;
    wire [31:0] Beta;
    reg [31:0]A;
    reg [31:0]B;
    
    sub inst1(.A(A),.B(B),.Beta(Beta),.Sum(Sum),.Equal(Equal),.Carry(Carry),.Overflow(Overflow),.OverflowCheck(OverflowCheck));
    
    initial begin
    
    A= 32'b000000; B=32'b111111;
    #10 A= 32'b111111; B=32'b111111;
    #10 A= 32'b10000000000000000000000000000000; B=32'b01;
    #10 A= 32'HFFFF; B=32'H1;
    #10 A= 32'H0; B=32'H0014;
    #10 A= 32'H0; B=32'H000F;
    #10 A= 32'H0; B=32'H0004;
    #10 A= 32'HF; B=32'HF;
    #10 A= 32'H0; B=32'H0;
    $finish;
    end
  
endmodule
