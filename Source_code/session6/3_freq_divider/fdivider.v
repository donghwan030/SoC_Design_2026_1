`timescale 1ns / 1ps
module fdivider #(
    parameter DIVISOR = 10
)(
    input wire clk_in,
    input wire reset,
    output reg clk_out
);

    localparam WIDTH = $clog2(DIVISOR); // calc the minimum number of bits required to represent a given number
										// e.g) To represent 9 values, we nned
										// at least 4bits since 2^4 = 16 >= 9,
										// so clog2(9) = 4
    reg [WIDTH-1:0] count; // 4 - 1 : 0 so [3:0]count, 4bit count

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin // reset = 1, system off(초기화)
            count <= 0;
            clk_out <= 1'b0;
        end else begin // reset 0, system ON
            // Counter logic
            if (count == DIVISOR - 1) begin // 10번을 다 세면
                count <= 0; // count를 초기화
            end else begin // 10번을 다 새지 않았으면
                count <= count + 1'b1; // 계속 세어라
            end
            
            // Toggle output whenever half of the divisor is reached. 느린 클럭을 만들어주는 클럭
            if (count == (DIVISOR / 2) - 1) begin 
                clk_out <= 1'b1;
            end else if (count == DIVISOR - 1) begin
                clk_out <= 1'b0;
            end
        end
    end

endmodule
