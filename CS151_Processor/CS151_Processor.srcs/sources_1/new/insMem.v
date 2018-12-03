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
        RF[5]  = {1'b1,6'd0,6'd5,4'b0010,15'h0014}; //0xFFFFFFEC
        RF[6]  = {1'b0,6'd1,6'd6,4'b0010,6'd1,9'h0};//0x0 equal
        RF[7]  = {1'b1,6'd5,6'd8,4'b0101,15'h2AAA}; //0x2AA8
        RF[8]  = {1'b0,6'd2,6'd2,4'b0101,6'd1,9'h0};//0x4
        RF[9]  = 32'b0;
        RF[10] = {1'b0,6'd4,6'd9,4'b0111,15'b0};    //0xFFFFFFDC
        RF[11] = {1'b1,6'd2,6'd9,4'b0110,15'h0001}; //0x5
        
        RF[12] = {1'b1,6'd0,6'd9,4'b1001,15'h0002}; //0x14
        RF[13] = {1'b0,6'd9,6'd2,4'b1011,15'h0};  // 0x14
        RF[14] = {1'b0,6'd0,6'd6,4'b0111,15'h0}; //0xFFFFFFFF
        RF[15] = {1'b1,6'd0,6'd1,4'b0001,15'h0002}; //0x2
        RF[16] = {1'b1,6'd0,6'd1,4'b1001,15'h001E}; //0x80000000
        RF[17] = 32'b0;
        RF[18] = {1'b0,6'd6,6'd7,4'b0001,6'd1,9'h0}; //0x7FFFFFFF overflow carry
        RF[19] = {1'b0,6'd6,6'd6,4'b0001,6'd6,9'h0}; //0xFFFFFFFE carry
        RF[20] = 32'b0;
        RF[21] = {1'b0,6'd4,6'd4,4'b0110,6'd5,9'h0}; //0xFFFFFFEF
        RF[22] = {1'b0,6'd8,6'd4,4'b1000,6'd2,9'h0}; //0x2ABC
        RF[23] = {1'b1,6'd4,6'd4,4'b1000,15'h2AAA}; //0x16
        RF[24] = {1'b1,6'd0,6'd10,4'b1011,15'h0006}; //0x6
        RF[25] = {1'b1,6'd0,6'd2,4'b1011,15'h0004}; //0x4
        RF[26] = {1'b0,6'd2,6'd10,4'b1001,15'h0}; //0x60
    end
endmodule
