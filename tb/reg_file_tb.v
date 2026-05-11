`timescale 1ns/1ps

module reg_file_tb;

    reg clk;
    reg we;

    reg [4:0] rs1, rs2, rd;
    reg [31:0] write_data;

    wire [31:0] read_data1, read_data2;

    reg_file uut (
        .clk(clk),
        .we(we),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .write_data(write_data),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        we = 0;

        // Write 123 into x1
        #10;
        we = 1;
        rd = 5'd1;
        write_data = 32'd123;

        #10;
        we = 0;

        // Read x1
        rs1 = 5'd1;

        #10;
        $display("x1 = %d", read_data1);

        $finish;
    end

endmodule