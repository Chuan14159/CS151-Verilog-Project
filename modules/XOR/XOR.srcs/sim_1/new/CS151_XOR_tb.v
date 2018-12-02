`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 03:01:02 PM
// Design Name: 
// Module Name: CS151_XOR_tb
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


module CS151_XOR_tb;
    wire [31:0]out;
    wire equal;
    reg [31:0]a;
    reg [31:0]b;
    
    CS151_XOR inst1(.a(a),.b(b),.out(out),.equal(equal));
    initial begin
        
        a= 32'b000000; b=32'b111111;
        #10 a= 32'b111111; b=32'b000001;
        #10 a= 32'b111111; b=32'b111111;
        #10 a= 32'H0; b=32'H0014;
        #10 a= 32'H1; b=32'H000F;
        #10 a= 32'b111111; b=32'H0004;
        #10 a= 32'HF; b=32'HF;
        $finish;
        end
endmodule
