`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 11:19:04 PM
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb;

    reg  [2:0] ROM_addr;
    wire [3:0] ROM_data;

    // Instantiate the ROM
    ROM uut (
        .ROM_data(ROM_data),
        .ROM_addr(ROM_addr)
    );

    initial begin

        // Start from 0
        ROM_addr = 3'd0;

        // Step through all addresses 0-7
        #10 ROM_addr = 3'd0;
        #10 ROM_addr = 3'd1;
        #10 ROM_addr = 3'd2;
        #10 ROM_addr = 3'd3;
        #10 ROM_addr = 3'd4;
        #10 ROM_addr = 3'd5;
        #10 ROM_addr = 3'd6;
        #10 ROM_addr = 3'd7;

        // Done
        #10 $stop;
    end

endmodule

