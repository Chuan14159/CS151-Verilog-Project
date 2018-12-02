`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 03:11:37 PM
// Design Name: 
// Module Name: CS151_SHIFT_tb
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


module CS151_SHIFT_tb;
    wire [31:0]out;
    wire overflow;
   // wire [6:0] overflowcheck;
    reg [31:0]a;
    reg [31:0]b;
    
    CS151_SHIFT inst1(.a(a),.b(b),.out(out),.overflow(overflow));
    initial begin
        
        a= 32'b000000; b=1;
        #10 a= 32'b000001; b=1;
        #10 a= 32'b111111; b=1;
        #10 a= 32'H0; b=2;
        #10 a= 32'H1; b=3;
        #10 a= 32'b111111; b=7;
        #10 a= 32'HF; b=0;
        $finish;
        end
endmodule
