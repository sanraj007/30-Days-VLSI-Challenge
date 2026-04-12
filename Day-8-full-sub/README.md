🚀 Day 8: Full Subtractor

After implementing the Half Subtractor, I designed a Full Subtractor to handle subtraction with borrow-in.

🔹 Description

A Full Subtractor is a combinational circuit that subtracts three inputs:
- A (Minuend)  
- B (Subtrahend)  
- Bin (Borrow-in)  

It produces:
- Difference (Diff)  
- Borrow  

🔹 Logic Used
- XOR → for Difference  
- NOT, AND, OR → for Borrow  

🛠 Tools Used
- Verilog HDL  
- Xilinx Vivado  

⚙️ What I Did
- Designed Full Subtractor using Verilog  
- Created testbench for verification  
- Performed simulation and waveform analysis  
- Analyzed RTL and synthesized design  

📁 Files Included
- `full_subtractor.v`  
- `full_subtractor_tb.v`  
- `waveform.png`  
- `rtl.png`  
- `synthesis.png`  

📊 Truth Table

| A | B | Bin | Diff | Borrow |
|---|---|-----|------|--------|
| 0 | 0 |  0  |  0   |   0    |
| 0 | 0 |  1  |  1   |   1    |
| 0 | 1 |  0  |  1   |   1    |
| 0 | 1 |  1  |  0   |   1    |
| 1 | 0 |  0  |  1   |   0    |
| 1 | 0 |  1  |  0   |   0    |
| 1 | 1 |  0  |  0   |   0    |
| 1 | 1 |  1  |  1   |   1    |

🎯 Learning Outcome
- Understanding multi-input subtraction  
- Borrow propagation in digital circuits  
- Practical Verilog implementation  

🚀 Reflection
This helped me move from simple subtraction to more realistic digital circuit design used in processors.


