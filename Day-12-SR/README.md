🚀 Day 12: SR Flip-Flop

Today, I implemented an SR Flip-Flop to understand sequential logic and memory elements.

🔍 What is an SR Flip-Flop?

An SR Flip-Flop is a basic memory element that stores 1-bit data.

Inputs:
- S (Set)  
- R (Reset)  
- Clock  

Outputs:
- Q  
- Qbar(Complement)

⚙️ Working

- S = 1 → Set (Q = 1)  
- R = 1 → Reset (Q = 0)  
- S = R = 0 → Hold previous value  
- S = R = 1 → Invalid condition  

🛠 Tools Used

- Verilog HDL  
- Xilinx Vivado  

🧪 Verification

- Created testbench  
- Simulated different input conditions  
- Observed output changes with clock  
- Analyzed RTL and synthesized design  

📁 Files Included

- `SR.v`  
- `SR_tb.v`  
- waveform  
- rtl  
- synthesis  

🎯 Learning Outcome

- Understanding sequential circuits  
- Concept of memory in digital systems  
- Clock-based operation  

🚀 Reflection

This was my first step into sequential logic, helping me understand how circuits can store and update data over time.


