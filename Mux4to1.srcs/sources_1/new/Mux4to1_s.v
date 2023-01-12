`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 04:48:34 PM
// Design Name: 
// Module Name: Mux4to1_s
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


module Mux4to1_s(Q, v, sel);

    output Q; 

    input [3:0]v; 
    input [1:0]sel; 

    wire invS1, invS0;
    wire [3:0]Y; 

    not (invS0, sel[0]);
    not (invS1, sel[1]); 

    and (Y[0], v[0], invS0, invS1 );    
    and (Y[1], v[1], sel[0], invS1 );
    and (Y[2], v[2], invS0, sel[1]);
    and (Y[3], v[3], sel[0], sel[1]);

    or (Q, Y[0], Y[1], Y[2], Y[3]); 

    
endmodule
