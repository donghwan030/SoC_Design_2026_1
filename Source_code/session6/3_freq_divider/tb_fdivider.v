`timescale 1ns/1ps
module tb_fdivider;
	// signal list
	reg clk_in, reset;
	wire clk_out;

	// DUT instantiation with the designated param
	fdivider #(
		.DIVISOR(10)
	) divider (
		.clk_in(clk_in),
		.reset(reset),
		.clk_out(clk_out)
	);
	
	// clock gen (10ns, 100MHz)
	always #5 clk_in = ~clk_in;
	
	// apply stimulus
	initial begin
		clk_in = 0;
		reset = 1;
		#20 reset = 0; // Unset after 20ns
		// simulation during 200 cycles
		repeat(200) @(posedge clk_in);
		$finish;
	end

	// Monitor for Result
	always @(posedge clk_in) begin
		$display("Time=%0t, clk_in=%b, clk_out=%b", $time, clk_in, clk_out);
	end
endmodule

