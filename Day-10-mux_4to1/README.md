🚀 Day 10: 4:1 Multiplexer

Today’s focus was on understanding how data selection works in digital systems by implementing a 4:1 Multiplexer.

🔍 What is a 4:1 MUX?

A 4:1 Multiplexer selects one out of four inputs based on two select lines.

- Inputs: d0, d1, d2, d3  
- Select Lines: s1, s0  
- Output: y  

Depending on the select lines, one input is routed to the output.

🛠 Tools Used

- Verilog HDL  
- Xilinx Vivado  

🧪 Verification

- Created a testbench to validate functionality  
- Observed waveform outputs  
- Verified correct input selection  
- Analyzed RTL schematic and synthesized design  

📁 Project Files

- `mux_4to1.v`  
- `mux_4to1_tb.v`  
- Simulation waveform  
- RTL schematic  
- Synthesized output  

📊 Selection Logic

| s1 | s0 | Output |
|----|----|--------|
| 0  | 0  | d0 |
| 0  | 1  | d1 |
| 1  | 0  | d2 |
| 1  | 1  | d3 |

🎯 Key Takeaways

- Control signals play a major role in data routing  
- Multiplexers are fundamental building blocks in processors  
- Same logic can be viewed differently using multiple modeling styles  

🚀 Reflection

This implementation helped me move from simply writing logic to actually understanding how data flows inside a system.




