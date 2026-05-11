`timescale 1ns/1ps

module instr_mem_tb;

    reg [31:0] addr;
    wire [31:0] instruction;

    instr_mem uut (
        .addr(addr),
        .instruction(instruction)
    );

    initial begin
        addr = 0;
        #10;

        $display("Instruction at 0 = %h", instruction);

        addr = 4;
        #10;

        $display("Instruction at 4 = %h", instruction);

        addr = 8;
        #10;

        $display("Instruction at 8 = %h", instruction);

        $finish;
    end

endmodule