🚀 Simple CPU Design (Verilog)

🧠 Overview

This project implements a simple 4-bit CPU by integrating an ALU, registers, and a control unit.

⚙️ Architecture

The design consists of two main parts:

🔹 Datapath
- ALU (Arithmetic Logic Unit)
- Input Registers (A, B)
- Output Register

🔹 Control Unit
- FSM (Finite State Machine)
- Generates control signals for ALU operations

🔁 Working

- Inputs A and B are stored in registers
- Control unit cycles through operations:
  - ADD → SUB → AND → OR
- ALU performs operation based on control signal
- Result is stored and updated every clock cycle

📊 Example

For:
A = 5 (0101)  
B = 3 (0011)

| Operation | Result |
|----------|--------|
| ADD | 8 |
| SUB | 2 |
| AND | 1 |
| OR  | 7 |

 🧪 Simulation

- Verified using testbench  
- Observed sequential execution in waveform  
- Noted one-cycle delay due to register storage  

📁 Files

- `alu.v`  
- `register.v`  
- `control_unit.v`  
- `simple_cpu.v`  
- `simple_cpu_tb.v`  

🎯 What I Learned

- Difference between datapath and control unit  
- FSM-based control logic  
- Importance of timing and register delays  
- System-level design integration  

🚀 Final Thought

This project helped me move from writing individual modules to understanding how a complete digital system works.



