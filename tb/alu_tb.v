`timescale 1ns/1ps

module alu_tb;

    reg  [31:0] a, b;
    reg  [3:0]  alu_op;
    wire [31:0] result;
    wire        zero;

    alu uut (
        .a(a),
        .b(b),
        .alu_op(alu_op),
        .result(result),
        .zero(zero)
    );

    initial begin
        $dumpfile("sim/alu.vcd");
        $dumpvars(0, alu_tb);

        a = 10; b = 5; alu_op = 4'b0000; #10;
        $display("ADD result = %d", result);

        a = 10; b = 5; alu_op = 4'b0001; #10;
        $display("SUB result = %d", result);

        a = 32'hF0F0; b = 32'h0FF0; alu_op = 4'b0010; #10;
        $display("AND result = %h", result);

        a = 32'hF0F0; b = 32'h0FF0; alu_op = 4'b0011; #10;
        $display("OR result = %h", result);

        a = 32'hAAAA; b = 32'h5555; alu_op = 4'b0100; #10;
        $display("XOR result = %h", result);

        $finish;
    end

endmodule
