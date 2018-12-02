`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 05:07:31 PM
// Design Name: 
// Module Name: sign_extend_tb
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


module sign_extend_tb;
    wire[31:0] out;
    reg [14:0] a;
    sign_extend inst1(.a(a),.out(out));

    initial begin
    a = 15'b111111111111111;
    $write("a=%3d out=%3d \n", a,out);
    #20 a = 15'b101010101010101;
    $write("a=%3d out=%3d \n", a,out);
    #20 a = 15'b000000000000000;
    $write("a=%3d out=%3d \n", a,out);
    $finish;
    end
endmodule
