`timescale 1ns / 1ps

module shift_register_sipo #(
    parameter WIDTH = 8
)(
    input clk,
    input reset,
    input serial_in,
    output reg [7:0] parallel_out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        parallel_out <= 8'b0;
    end else begin
        parallel_out <= {parallel_out[6:0], serial_in}; // 왼쪽으로 한 비트씩 시프트하고 가장 오른쪽에 입력 삽입
    end
end

endmodule


/**`timescale 1ps/1ns
module shift_register_sipo (
    input wire clk,
    input wire reset,
    input wire serial_in,
    output reg [7:0] parallel_out
);
    always @(posedge clk or posedge reset) begin // clk와 reset의 상승 에지에서 계속 동작
        if (reset) begin // 만약 reset이 활성화되면
            parallel_out <= 8'b0; // 병렬 데이터를 초기화
        end else begin // 그렇지 않으면
            parallel_out <= {parallel_out[6:0], serial_in}; // 병렬 데이터를 왼쪽으로 한 비트씩 시프트하고 가장 오른쪽에 serial_in을 추가
        end
    end
endmodule**/