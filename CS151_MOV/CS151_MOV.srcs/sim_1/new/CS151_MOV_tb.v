`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 03:24:00 PM
// Design Name: 
// Module Name: CS151_MOV_tb
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


module CS151_MOV_tb;
   wire [31:0]out;
    reg [31:0]a;
    
    CS151_MOV inst1(.a(a),.out(out));
    initial begin
        
        a= 32'b000000;
        #10 a= 32'b000001;
        #10 a= 32'b101011;
        #10 a= 32'H0;
        #10 a= 32'H1;
        #10 a= 32'b111111;
        #10 a= 32'HF;
        $finish;
        end
endmodule
