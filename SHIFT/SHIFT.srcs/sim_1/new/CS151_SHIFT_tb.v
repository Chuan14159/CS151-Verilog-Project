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
    wire [5:0]out;
    wire overflow;
   // wire [6:0] overflowcheck;
    reg [5:0]a;
    reg [5:0]b;
    
    CS151_SHIFT inst1(.a(a),.b(b),.out(out),.overflow(overflow));
    initial begin
        
        a= 6'b000000; b=1;
        #10 a= 6'b000001; b=1;
        #10 a= 6'b111111; b=1;
        #10 a= 6'H0; b=2;
        #10 a= 6'H1; b=3;
        #10 a= 6'b111111; b=7;
        #10 a= 6'HF; b=0;
        $finish;
        end
endmodule
