`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 23:16:34
// Design Name: 
// Module Name: RegFile64x32_tb
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


module RegFile64x32_tb();
    reg clk = 0;
    reg WE1 = 0; 
    reg [5:0] RA1; 
    reg [5:0] RA2; 
    reg [5:0] WA; 
    reg [31:0] WD;
    wire [31:0] RD1;
    wire [31:0] RD2;
    RegFile64x32 RegFile(.clk(clk),.WE1(WE1),.RA1(RA1),.RA2(RA2),.WA(WA),.WD(WD),.RD1(RD1),.RD2(RD2));
    
    initial begin
        clk = 1;
        WE1 = 1;
        WA = 25;
        WD = 10;
        RA1 = 20; //X
        RA2 = 20; //X
        #10 clk = ~clk;
        
        #10 clk = ~clk;
        WA = 20;
        WD = 11;
        RA1 = 25; //10
        RA2 = 25; //10
        #10 clk = ~clk;
                
        #10 clk = ~clk;
        WA = 15;
        WD = 12;
        RA1 = 20; //11
        RA2 = 25; //10
        #10 clk = ~clk;
        
        #10 clk = ~clk;
        WE1 = 0;
        WA = 20;
        WD = 13;
        RA1 = 20; //11
        RA2 = 15; //12
        #10 clk = ~clk;
        
        WE1 = 1;
        WA = 15;
        WD = 14;
        #10 clk = ~clk;
        RA1 = 25; //10
        RA2 = 15; //14
        #5 WE1 = 0; #5 clk = ~clk; #5
               
               
        $finish;
    end
endmodule
