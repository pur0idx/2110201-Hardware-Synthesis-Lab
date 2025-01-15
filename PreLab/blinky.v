`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2025 06:44:34 AM
// Design Name: 
// Module Name: blinky
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


module blinky(
    input clk,
    output led
    );

    wire clk;
 
    IBUFGDS clk_inst (
        .O(clk),
        .I(clk_p),
        .IB(clk_n)
    );
    
    reg [24:0] count = 0;
    always @ (posedge(clk)) count <= count + 1;
    assign led = count[24];
    
endmodule
