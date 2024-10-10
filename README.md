# Simple General-Purpose Processor Design

## Table of Contents
1. [Introduction](#introduction)
2. [Components](#components)
   - [Input Data](#input-data)
   - [Latches](#latches)
   - [Finite State Machine (FSM)](#finite-state-machine-fsm)
   - [4x16 Decoder](#4x16-decoder)
   - [Arithmetic and Logic Unit (ALU)](#alu)
3. [Problem Sets](#problem-sets)
4. [Conclusion](#conclusion)

## Introduction
This project focuses on designing a simple **General-Purpose Processor** using **VHDL** and implementing it on an **FPGA board**. The processor includes an **Arithmetic and Logic Unit (ALU)**, control logic with an **FSM**, and other components to demonstrate a sequential digital system.

## Components

### Input Data
- Input values **A** and **B** are derived from the last four digits of the student ID.
- A = 36 (00100100 in binary), B = 73 (01001001 in binary).

### Latches
- Temporary storage units for the input values. Operate based on the clock signal.

### Finite State Machine (FSM)
- Sequentially outputs digits of the student ID.
- Controls the decoder and ALU operations.

### 4x16 Decoder
- Decodes a 4-bit input into a 16-bit microcode, enabling various operations in the ALU.

### ALU
- Performs operations such as addition, subtraction, logical NOT, AND, OR, and XOR.
- Outputs results in two parts: **R1** and **R2**.
- Handles negative results using a **Neg** output.

## Conclusion
This project provided hands-on experience with **VHDL design** and **FPGA implementation**. By integrating key components, we demonstrated the functionality of a simple general-purpose processor, emphasizing sequential processing, control logic, and arithmetic operations.
