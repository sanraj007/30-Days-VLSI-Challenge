🚀 Day 19: Up-Down Counter

🧠 Overview

An up-down counter is a sequential circuit that can increment or decrement its value based on a control signal.

⚙️ Concept

- mode = 1 → count up  
- mode = 0 → count down  
- Controlled by clock signal  

🔍 Working

- On reset → count = 0000  
- On clock edge:
  - mode = 1 → count + 1  
  - mode = 0 → count - 1  

🛠 Implementation

- Verilog HDL  
- Xilinx Vivado  
- Sequential logic design  

🧪 Verification

- Clock generated  
- Mode switching tested  
- Up and down sequences verified  
- Waveform analyzed  

📁 Files

- `counter.v`  
- `counter_tb.v`  
- waveform  
- rtl  
- synthesis  

🎯 Learning

- Bidirectional counting  
- Control-based design  
- Sequential flexibility  

🚀 Insight

Up-down counters are used in digital systems like position tracking, timers, and control applications where reversible counting is required.



