`timescale 1ns/1ps

module tb_d_latch (
    // TB
);

// signal def
reg clk, d; // input에 연결된 신호(능동적: reg)
wire q; // output에 연결된 관찰하는 신호(수동적: wire)

// DUt instantiation
d_latch DUT(
    .clk(clk),
    .d(d), 
    .q(q)
);

// clock gen
always #5 clk = ~clk; // 5ns마다 clk의 값을 반전시켜라. 1주기 : 10ns

// put stimulus

initial begin
    clk = 1'b0;
    d = 1'b0; 

    #15 d=1'b1; // t = 15
    #20 d=1'b0; // t = 35
    #10 d=1'b1; // t = 45
    #10 d=1'b0; // t = 55
    #10 d=1'b1; // t = 65
    #15 d=1'b0; // t = 80

    #50 $finish:

end
endmodule