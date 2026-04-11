🚀 Half Subtractor

After working on adders, I implemented the Half Subtractor to understand binary subtraction in digital circuits.

🔹 Description

A Half Subtractor is a combinational circuit that subtracts one binary bit from another.

Inputs:
- A (Minuend)  
- B (Subtrahend)  

Outputs:
- Difference (Diff)  
- Borrow  

🔹 Logic Used
- XOR → for Difference  
- NOT + AND → for Borrow  

🛠 Tools Used
- Verilog HDL  
- Xilinx Vivado  

⚙️ What I Did
- Designed Half Subtractor using Verilog  
- Created testbench for verification  
- Performed simulation and waveform analysis  
- Analyzed RTL and synthesized design  

📁 Files Included
- `half_subtractor.v`  
- `half_subtractor_tb.v`  
- `waveform.png`  
- `rtl.png`  
- `synthesis.png`  

📊 Truth Table

| A | B | Diff | Borrow |
|---|---|------|--------|
| 0 | 0 |  0   |   0    |
| 0 | 1 |  1   |   1    |
| 1 | 0 |  1   |   0    |
| 1 | 1 |  0   |   0    |

🎯 Learning Outcome
- Understanding binary subtraction  
- Borrow generation in digital circuits  
- Practical Verilog implementation  

🚀 Reflection
This helped me understand how subtraction works at the hardware level and how it differs from addition.



