🚀 Full Adder

After implementing the Half Adder, I designed a Full Adder to extend the concept of binary addition.

🔹 Description

A Full Adder is a combinational circuit that adds three inputs:
- A  
- B  
- Carry-in (Cin)  

It produces:
- Sum  
- Carry-out (Cout)  

🔹 Logic Used
- XOR → for Sum  
- AND, OR → for Carry  

🛠 Tools Used
- Verilog HDL  
- Xilinx Vivado  

⚙️ What I Did
- Designed Full Adder using Verilog  
- Created testbench for verification  
- Performed simulation and waveform analysis  
- Analyzed RTL and synthesized design  

📁 Files Included
- `full_adder.v`  
- `full_adder_tb.v`  
- `waveform.png`  
- `rtl.png`  
- `synthesis.png`  

📊 Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

🎯 Learning Outcome
- Understanding multi-input combinational circuits  
- Carry propagation in binary addition  
- Practical Verilog implementation  

🚀 Reflection
This helped me move from basic circuits to more practical designs used in real digital systems.




