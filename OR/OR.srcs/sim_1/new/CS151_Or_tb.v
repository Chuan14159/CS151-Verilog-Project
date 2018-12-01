`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 02:10:02 PM
// Design Name: 
// Module Name: CS151_Or_tb
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


module CS151_Or_tb;
    wire [5:0]out;
reg [5:0]a;
reg [5:0]b;

CS151_Or inst1(.a(a),.b(b),.out(out));
initial begin
    
    a= 6'b000000; b=6'b111111;
    #10 a= 6'b111111; b=6'b000001;
    #10 a= 6'b101010; b=6'b010101;
    #10 a= 6'H0; b=6'H0014;
    #10 a= 6'H1; b=6'H000F;
    #10 a= 6'b111111; b=6'H0004;
    #10 a= 6'HF; b=6'HF;
    $finish;
    end
endmodule