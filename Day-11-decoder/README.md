🚀 Day 11: 2-to-4 Decoder

Today’s focus was on understanding how binary inputs can be decoded into specific output lines.

🔍 What is a Decoder?

A decoder is a combinational circuit that converts binary input into a unique output line.

For a 2-to-4 decoder:
- 2 inputs → 4 outputs  
- Only one output is active at a time  

⚙️ Implementation

Inputs:
- a, b  

Outputs:
- d0, d1, d2, d3  

Each output corresponds to a unique input combination.

🛠 Tools Used

- Verilog HDL  
- Xilinx Vivado  

🧪 Verification

- Created testbench  
- Simulated all input combinations  
- Verified one-hot output behavior  
- Analyzed RTL and synthesized design  

📁 Files Included

- `decoder.v`  
- `decoder_tb.v`  
- Simulation waveform  
- RTL schematic  
- Synthesized output  

📊 Output Mapping

| a | b | Active Output |
|---|---|---------------|
| 0 | 0 | d0 |
| 0 | 1 | d1 |
| 1 | 0 | d2 |
| 1 | 1 | d3 |

🎯 Key Takeaways

- Decoders translate binary input into unique outputs  
- Used in memory addressing and control units  
- Important building block in digital systems  

🚀 Reflection

This helped me understand how systems interpret binary inputs and activate specific operations based on them.


