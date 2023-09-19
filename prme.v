`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 17:01:41
// Design Name: 
// Module Name: prme
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


module prme(
  input clk, 
  input rst,
  input start, 
  input [7:0] limit,
  output reg is_primes);
  reg [7:0] sieve [0:255];
  reg [7:0] prime;
  integer i,j;
  always@(posedge clk) begin
  if(rst) begin
  for (i=0;i<=255;i=i + 1) begin
   sieve [i] = 0;
   end
   end
   else if(start)begin
   for (i=0;i<=255;i=i + 1) begin
   sieve [i] = 1;
   end
   sieve [0] = 0;
   sieve [1] = 0;
   for (i=2;i*i<=255;i=i + 1) begin
   if (sieve [i] == 1) begin
   for  (j=i*i;j<=255;j=j + 1) begin
   sieve [j] = 0;
   end
   end
   end
   end
  prime = sieve[limit];
   if (prime==1)
       is_primes=1;
       else
       is_primes=0;
       end
   endmodule

