`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 09:19:02 PM
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb;
    reg i_clk, i_rst, i_write_en;
    reg [2:0] i_addr;
    reg [7:0] i_write_data;
    wire [7:0] o_read_data;
    
    RAM dut (.i_clk(i_clk), .i_rst(i_rst), .i_write_en(i_write_en),
    .i_addr(i_addr), .i_write_data(i_write_data), .o_read_data(o_read_data));
    
    always #5 i_clk = ~i_clk;
    
    initial begin
        i_clk = 0;
        i_rst = 1;
        i_write_en = 0;
        i_addr = 0;
        i_write_data = 8'h00;
        
        #10;
        i_rst = 0;
        
        i_addr = 3;
        i_write_data = 8'hA5;
        i_write_en = 1;
        #10;
        
        i_addr = 5;
        i_write_data = 8'h7F;
        i_write_en = 1;
        #10;
        
        i_addr = 3;
        i_write_en = 0;
        #10;
        
        i_addr = 5;
        i_write_en = 0;
        #10;
        
        $stop;
    end
        
endmodule
