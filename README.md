# 💾 Simple Synchronous RAM (Verilog)

*A Verilog-based single-port synchronous RAM* with read/write functionality, complete with testbench and waveform support.

---

## 🧩 Features
- *Clock-synchronous memory*: All operations occur on the rising edge of clk.
- *Read/Write support*: Controlled via we (write enable).
- *Parameterized*: Easily adjust data width and address depth.
- *Waveform dumping*: Includes .vcd dump for GTKWave / EPWave visualization.

---

## 🗃 Files
- ram.v – RAM RTL module  
- ram_tb.v – Testbench exercising read and write  
- ram_wave.vcd – Automatically generated waveform dump  
- README.md – This documentation

---

## ▶ Simulation Steps

### 📌 With Icarus Verilog & GTKWave:
```bash
iverilog -o ram_tb.vvp ram.v ram_tb.v
vvp ram_tb.vvp
gtkwave ram_wave.vcd
🌐 In EDA Playground:
Upload ram.v & ram_tb.v

Select Icarus Verilog 12.0

Enable Open EPWave after run

Click Run, then in EPWave load signals clk, we, addr, din, dout

📄 Usage Example
Write: Set we=1, choose addr, din, then wait one clock edge

Read: Set we=0, provide addr, sample dout on the next clock

The testbench demonstrates writing two values and reading them back correctly.

🧪 RAM Module Template
verilog
Copy code
module ram (
  input wire clk,
  input wire we,
  input wire [ADDR_WIDTH-1:0] addr,
  input wire [DATA_WIDTH-1:0] din,
  output reg [DATA_WIDTH-1:0] dout
);
  localparam DATA_WIDTH = 8;
  localparam ADDR_WIDTH = 8;
  reg [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];

  always @(posedge clk) begin
    if (we)
      mem[addr] <= din;
    else
      dout <= mem[addr];
  end
endmodule
📝 Why This Matters
Demonstrates core VLSI concepts: clocked storage, write enables, and memory read/write integrity.

Good foundation for moving toward more advanced designs (e.g., dual-port, FIFOs).

Intern-ready demonstration with clear simulation results and waveforms 
github.com
+10
github.com
+10
github.com
+10
github.com
+10
github.com
+10
github.com
+10
github.com
+5
github.com
+5
circuitfever.com
+5
github.com
+3
github.com
+3
docs.amd.com
+3
github.com
+2
github.com
+2
github.com
+2
.

⚙ License & Contribution
Feel free to adjust data/address widths, add features (like reset or read latency), or create a dual-port variant. Contributions welcome!

License: MIT (or your preferred open-source license)


