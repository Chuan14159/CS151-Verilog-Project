`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 19:17:53
// Design Name: 
// Module Name: instruction_tb
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


module insDec_tb();
    reg [31:0] ins;
    wire RI;
    wire [5:0] rs;
    wire [5:0] rd;
    wire [3:0] func;
    wire [5:0] rt;
    wire [8:0] imm;
    insDec insDec_test(.ins(ins),.RI(RI),.rs(rs),.rd(rd),.func(func),.rt(rt),.imm(imm));
    initial begin
        assign ins = 32'h12345678;
    end
    integer count = 0;
    always begin
        #5
        count = count+1;
        assign ins = ins + 32'h11111111;#5
        if(count > 10) #5 $finish;
    end
endmodule
