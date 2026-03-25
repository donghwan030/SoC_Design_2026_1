`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2026 02:50:15 PM
// Design Name: 
// Module Name: led_control
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


module led_control(
    
    // signal list
    sw, // Input Switch
    led // Output Led
    );
    
    // Signal declaration
    input [3:0] sw;
    output [3:0] led;

    // logic
    assign led = sw;
    
endmodule
