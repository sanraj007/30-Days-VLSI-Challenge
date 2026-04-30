🚀 Day 26: Smart Traffic Light Controller

🧠 What I did

Designed a smart traffic light controller using FSM to handle real-world traffic conditions.

❗ Problem

- Fixed traffic signals cause unnecessary delays  
- No priority for emergency vehicles  
- Inefficient traffic flow  

💡 Solution

- Adjust signal timing based on traffic density  
- Provide priority for emergency vehicles  
- Use dynamic control instead of fixed timing  

⚙️ How it works

- FSM controls the states (A Green, A Yellow, B Green, B Yellow)  
- Timer decides how long each light stays  
- Traffic input increases or decreases green time  
- Emergency input overrides normal operation  

🧪 Testing

- Simulated different traffic conditions  
- Tested emergency scenarios  
- Verified correct light transitions  

📁 Files

- `smart_traffic.v`  
- `smart_traffic_tb.v`  
- waveform  
- rtl  
- synthesis  

🎯 What I learned

- Combining FSM with real-world logic  
- Designing adaptive systems  
- Handling multiple conditions in one design  

🚀 Final thought

This project felt more practical than previous ones — it showed how simple digital concepts can be used to solve real-life problems.
