`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 05:10:03 PM
// Design Name: 
// Module Name: testbench
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


module testbench;

    reg[3:0] V; 
    reg[1:0] SEL; 

    wire Q; 

    Mux4to1_s tMux(Q, V, SEL); 
    
    initial begin
        
        V = 4'd5; 
        #5  $display ("V0 = %b, V1 = %b, V2 = %b, V3 = %b\n", V[0], V[1], V[2], V[3]); 
        SEL[1] = 0; SEL[0] = 0; 
        #5  $display ("Select 1  = %b, Select 0 = %b, Q = %b\n", SEL[1], SEL[0], Q); 
        SEL[1] = 0; SEL[0] = 1; 
        #5  $display ("Select 1  = %b, Select 0 = %b, Q = %b\n", SEL[1], SEL[0], Q); 
        SEL[1] = 1; SEL[0] = 0; 
        #5  $display ("Select 1  = %b, Select 0 = %b, Q = %b\n", SEL[1], SEL[0], Q); 
        SEL[1] = 1; SEL[0] = 1; 
        #5  $display ("Select 1  = %b, Select 0 = %b, Q = %b\n", SEL[1], SEL[0], Q);        

    end


endmodule
