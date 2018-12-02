`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 02:55:54
// Design Name: 
// Module Name: insMem
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


module insMem(
    input [5:0] addr,
    output [31:0] RD
    );
    
    reg [31:0] RF[63:0];

    assign RD = RF[addr];
    initial begin
        RF[0]  = {1'b1,6'd0,6'd1,4'b0001,15'h0014}; //0x14
        RF[1]  = {1'b1,6'd0,6'd2,4'b0001,15'h000F}; //0xF
        RF[2]  = {1'b1,6'd0,6'd3,4'b0001,15'h0004}; //0x4
        RF[3]  = 32'b0;
        RF[4]  = {1'b0,6'd2,6'd4,4'b0001,6'd1,9'h0}; //0x23
        //RF[5]  = {RI,rs,rd,func,imm};
        //RF[6]  = {RI,rs,rd,func,imm};
        //RF[7]  = {RI,rs,rd,func,imm};
        //RF[8]  = {RI,rs,rd,func,imm};
        //RF[9]  = {RI,rs,rd,func,imm};
        //RF[10] = {RI,rs,rd,func,imm};
        //RF[11] = {RI,rs,rd,func,imm};
        
    end
endmodule
