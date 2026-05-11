module instr_mem (
    input wire [31:0] addr,
    output wire [31:0] instruction
);

    reg [31:0] memory [0:255];

    initial begin
        memory[0] = 32'h00100093;
        memory[1] = 32'h00200113;
        memory[2] = 32'h003081b3;
    end

    assign instruction = memory[addr[31:2]];

endmodule