`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 17:19:38
// Design Name: 
// Module Name: prmmee
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


module prmmee(
input clk,
 input rst,
 input start,
 input [7:0] limit,
 output reg is_primes
 );
 reg start_d;
 reg [7:0]limit_d;
 wire primes_d;
 prme uut(.clk(clk),.start(start_d),.limit(limit_d),.is_primes(primes_d));
 always @(posedge clk or posedge rst) begin 
 if(rst) begin 
 start_d<=0;
 limit_d<=0;
 is_primes<=0;
 end
 else begin 
 start_d<=start;
 limit_d<=limit;
 is_primes<=primes_d;
 end
 end

endmodule
