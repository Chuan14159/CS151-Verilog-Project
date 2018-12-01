`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 02:00:56 PM
// Design Name: 
// Module Name: andder_tb
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


module andder_tb;
    wire [5:0]andder;
    reg [5:0]a;
    reg [5:0]b;
    
    andder inst1(.a(a),.b(b),.andder(andder));
    initial begin
        
        a= 6'b000000; b=6'b111111;
        #10 a= 6'b111111; b=6'b000001;
        #10 a= 6'H0; b=6'H0014;
        #10 a= 6'H1; b=6'H000F;
        #10 a= 6'b111111; b=6'H0004;
        #10 a= 6'HF; b=6'HF;
        $finish;
        end
endmodule
