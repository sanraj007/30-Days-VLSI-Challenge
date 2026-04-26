🚀 Day 22: 4-bit ALU

🧠 What I did today

Today I built a 4-bit ALU using Verilog.

Instead of creating separate circuits for each operation, I combined everything into a single module controlled by a select signal.

⚙️ What it can do

Based on the value of `sel`, the ALU performs:

- Addition  
- Subtraction  
- AND  
- OR  
- XOR  
- NOT  

🔍 How it works

- Inputs: A, B  
- Control: sel  
- Output: result + carry  

Changing the `sel` value changes the operation completely.

🧪 Testing

- Wrote a testbench  
- Tried different input values  
- Verified all operations in simulation  

📁 Files

- `Alu.v`  
- `Alu_tb.v`  
- waveform  
- rtl  
- synthesis  

🎯 What I learned

- How to combine multiple operations into one design  
- Importance of control signals  
- Writing clean and simple Verilog code  

🚀 Final thought

This felt like a big step — moving from small circuits to something that actually behaves like a mini system.



