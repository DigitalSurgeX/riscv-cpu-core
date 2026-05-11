# RV32I RISC-V CPU Core in Verilog

A custom 32-bit RV32I-inspired RISC-V CPU core designed and implemented in Verilog HDL to explore computer architecture, RTL design, digital systems, and processor microarchitecture.

This project focuses on understanding how software instructions are translated into physical digital hardware behavior through modular CPU design, synchronous logic, instruction execution, and hardware verification workflows.

---

# Project Objectives

The primary objectives of this CPU project include:

- Understanding CPU datapath architecture
- Learning RTL (Register Transfer Level) hardware design
- Building and integrating core processor components
- Developing hardware debugging and verification skills
- Understanding instruction execution flow
- Exploring synchronous digital systems
- Gaining practical experience with simulation and waveform analysis
- Preparing for FPGA, ASIC, accelerated computing, and systems-oriented engineering roles

---

# Architecture Overview

This processor follows a modular RV32I-style architecture using 32-bit datapaths and register structures.

Current CPU subsystem implementation includes:

## Arithmetic Logic Unit (ALU)

The ALU performs arithmetic and logical operations used during instruction execution.

Implemented operations:
- ADD
- SUB
- AND
- OR
- XOR

The ALU uses combinational logic:

```verilog
always @(*)