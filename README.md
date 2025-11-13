# HW-6 SoC Implementation - Stage 3

## Overview

This repository contains the hardware and software artifacts for the Digital VLSI Design HW-6 project, focused on place and route for a RISC-V based System-on-Chip (SoC). It includes IO ring definition, floorplanning, place and route, and optional gate-level simulation and power estimation.

## Getting Started

Before cloning the repository, run:

```bash
tsmc65 && cd DVD
```

Then clone the repository:

```bash
git clone https://github.com/DVD2026/hw6.git
cd hw6
```

Create your working branch:

```bash
git checkout v1.0 -b YOUR_ID
```

Run setup to prepare the environment:

```bash
./setup.sh
```

## What to Apply

- Define the chip floorplan width and height using your 9-digit ID parameters as given in the documentation.
- Arrange IO pads and SRAM instances optimally in the floorplan.
- Use Innovus scripts to run floorplan, place and route, and clock tree synthesis.
- Check and fix all DRC and hold violations.
- Commit and push:
  - Your final post-layout design (export folder)
  - Critical path timing reports (reports folder)
  - DRC and connectivity reports (reports folder)
  - A file `reports/mypnr.txt` containing:
    1. Your ID number
    2. Floorplan width x height
    3. Smallest clock period met
    4. Worst hold slack
    5. Startpoint and endpoint of worst hold path

## Full Instructions

For detailed instructions, refer to:

```
docs/HW 6 - SoC Implementation - Stage 3 - 2025-26.pdf
```
