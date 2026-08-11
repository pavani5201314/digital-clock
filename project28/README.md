# Digital Clock using Verilog

## 📌 Project Description

This project implements a **Digital Clock using Verilog HDL**.

The clock displays time in **HH:MM:SS format** and counts seconds, minutes, and hours automatically.

## 🎯 Objective

The objective of this project is to design and simulate a simple digital clock using Verilog HDL.

## ⚙️ Features

* 24-hour clock format
* Seconds counter from 0–59
* Minutes counter from 0–59
* Hours counter from 0–23
* Automatic rollover
* Reset functionality
* Verilog testbench included
* Simulation-ready design

## 📂 Project Structure

```text
Digital-Clock-Verilog/
│
├── digital_clock.v
├── digital_clock_tb.v
├── README.md
└── output.png
```

## 🔌 Inputs

| Signal  | Description                  |
| ------- | ---------------------------- |
| `clk`   | Clock input                  |
| `reset` | Resets the clock to 00:00:00 |

## 🔌 Outputs

| Signal    | Description   |
| --------- | ------------- |
| `hours`   | Hours: 0–23   |
| `minutes` | Minutes: 0–59 |
| `seconds` | Seconds: 0–59 |

## 🕐 Working Principle

The digital clock uses a clock signal to increment the seconds counter.

* Seconds count from `00` to `59`.
* After `59` seconds, seconds become `00` and minutes increase by `1`.
* After `59` minutes, minutes become `00` and hours increase by `1`.
* After `23:59:59`, the clock returns to `00:00:00`.

### Example

```text
00:00:00
00:00:01
00:00:02
...
00:00:59
00:01:00
...
00:59:59
01:00:00
...
23:59:59
00:00:00
```

## 🧪 Testbench

The testbench:

1. Generates the clock signal.
2. Applies reset.
3. Starts the digital clock.
4. Monitors hours, minutes, and seconds.
5. Runs the simulation for more than one hour of simulated time.

## 💻 Simulation using Icarus Verilog

Compile the design:

```bash
iverilog -o digital_clock_sim digital_clock.v digital_clock_tb.v
```

Run the simulation:

```bash
vvp digital_clock_sim
```

## 📊 Expected Output

```text
Time = 00:00:00
Time = 00:00:01
Time = 00:00:02
Time = 00:00:03
...
Time = 00:00:59
Time = 00:01:00
...
Time = 00:59:59
Time = 01:00:00
```

## 📸 Output

Take a screenshot of the simulation console or waveform and save it as:

```text
output.png
```

Upload `output.png` to the GitHub repository.

## 🛠️ Applications

Digital clocks are used in:

* Digital watches
* Electronic displays
* Embedded systems
* Microcontroller projects
* FPGA-based systems
* Digital alarm systems

## 📌 Conclusion

The Digital Clock project successfully demonstrates how counters can be used in Verilog HDL to implement a 24-hour digital timekeeping system.
