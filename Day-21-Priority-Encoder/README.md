🚀 Day 21: Encoder (4-to-2)

🧠 What I Worked On

Today’s focus was on designing a circuit that converts multiple input signals into a compact binary output.

⚙️ Concept

An encoder reduces the number of input lines by representing the active input as a binary code.

- 4 inputs → 2 outputs  
- Only one input should be HIGH at a time  

🔍 How It Works

- Each input corresponds to a unique binary output  
- The position of the active input determines the output  

Example:
- Input 0001 → Output 00  
- Input 0010 → Output 01  
- Input 0100 → Output 10  
- Input 1000 → Output 11  

🛠 Implementation

- Verilog HDL  
- Behavioral modeling  
- Simulated using Vivado  

🧪 Verification

- Applied different input combinations  
- Verified correct encoding  
- Observed waveform behavior  

📁 Files

- `priority_encoder.v`  
- `pr_encoder_tb.v`  
- waveform  
- rtl  
- synthesis  

🎯 Key Learning

- Data compression in digital systems  
- Mapping input position to binary output  
- Understanding encoder vs decoder  

🚀 Reflection

This design showed how systems efficiently represent information using fewer bits, which is essential in communication and control logic.
