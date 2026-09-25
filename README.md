# 4x4 Vedic Multiplier (RTL)

## Overview
A 4x4 Vedic multiplier based on the **Urdhva Tiryagbhyam** sutra from ancient 
Indian Vedic mathematics. Implemented in Verilog RTL using hierarchical design.

## Features
- 4x4 bit multiplication (9-bit result)
- Hierarchical design using 2x2 Vedic multiplier blocks
- Synthesizable RTL code
- Complete testbench

## Module Hierarchy
multiplier_using_vedic_4bit (Top)
├── vedic_multiplier_2x2 (v0, v1, v2, v3)
│ ├── andgate
│ └── half_adder
├── full_adder_4bit (f0, f1, f2)
│ └── full_adder
└── half_adder (h1)

## Files
| File | Description |
|------|-------------|
| src/andgate.v | 2-input AND gate |
| src/half_adder.v | Half adder |
| src/full_adder.v | Full adder |
| src/full_adder_4bit.v | 4-bit ripple carry adder |
| src/vedic_multiplier_2x2.v | 2x2 Vedic multiplier |
| src/multiplier_using_vedic_4bit.v | Top-level 4x4 multiplier |
| tb/multiplier_using_vedic_tb.v | Testbench |

## Truth Table
| A | B | Product | R[8:0] |
|---|---|---------|--------|
| 2 | 2 | 4 | 000000100 |
| 9 | 2 | 18 | 000010010 |
| 9 | 9 | 81 | 001010001 |
| 15 | 15 | 225 | 011100001 |

## Simulation

### Icarus Verilog
```bash
iverilog -o vedic_tb src/*.v tb/*.v
vvp vedic_tb
