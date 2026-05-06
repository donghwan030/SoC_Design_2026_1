`timescale 1ns/1ps

module d_latch (
	// port list
	clk,
	d,
	q
);
// port declaration
input clk;
input d;
output reg q;

always @(*) begin // 모든 신호가 변할 때 작동시켜라
	if ( clk ) q <= d; // 클럭이 1일 때 d의 값을 q에 저장해라
end

endmodule
