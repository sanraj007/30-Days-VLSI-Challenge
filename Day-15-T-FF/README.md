🚀 Day 15: T Flip-Flop

🧠 Overview

Today’s focus was on implementing and understanding the T Flip-Flop, a fundamental sequential circuit used for toggling operations.

⚙️ Concept

The T Flip-Flop changes its output based on the input T and clock signal.
Behavior:
- T = 0 → No change (Hold)
- T = 1 → Toggle output

⚠️ Issue Faced

Initially, the output remained in an undefined state (`X`).
Reason:
- Flip-flop was not initialized
- Since Q depends on previous value, it remained unknown

✅ Solution

Added a reset signal to initialize the flip-flop:

- Reset ensures Q starts from a known value (0)
- Enables correct toggling behavior

🛠 Implementation

- Verilog HDL  
- Xilinx Vivado  
- Behavioral modeling  

🧪 Verification

- Designed testbench  
- Simulated waveform  
- Verified toggle operation  
- Confirmed correct behavior after reset  

📁 Files Included

- `T_FF.v`  
- `T_FF_tb.v`  
- Simulation waveform  
- RTL schematic  
- Synthesized design  

🎯 Learning Outcome

- Importance of initialization in sequential circuits  
- Understanding toggle behavior  
- Debugging unknown (`X`) states  
- Practical implementation of flip-flops  

🚀 Reflection
This task helped me realize that writing code is not enough — understanding behavior and debugging issues is equally important in digital design.



