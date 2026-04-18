🚀 Day 14: JK Flip-Flop

Today, I implemented the JK Flip-Flop to understand advanced sequential logic behavior.

🔍 Overview

The JK Flip-Flop is an improved version of the SR Flip-Flop that eliminates the invalid condition.

⚙️ Working

Inputs:
- J (Set)  
- K (Reset)  
- Clock  

Outputs:
- Q  
- Q̅  

📊 Behavior

- J=0, K=0 → No change  
- J=0, K=1 → Reset  
- J=1, K=0 → Set  
- J=1, K=1 → Toggle  

🛠 Tools Used

- Verilog HDL  
- Xilinx Vivado  

🧪 Verification

- Created testbench  
- Simulated all input combinations  
- Observed toggle behavior  
- Analyzed RTL and synthesis  

📁 Files Included

- `JK_FF.v`  
- `JK_FF_tb.v`  
- waveform  
- rtl  
- synthesis  

🎯 Learning Outcome

- Understanding toggle behavior  
- Advanced flip-flop design  
- Sequential state transitions  

🚀 Reflection

This helped me understand how flip-flops can be modified to create more flexible and reliable sequential systems.

