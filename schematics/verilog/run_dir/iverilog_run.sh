#!/bin/bash

# Set the Verilog source files
rtl_path="../src/rtl"
tb_path="../src/tb"
VERILOG_SRC="$rtl_path/inv.v $tb_path/tb_inv.v"

# Set the output executable file
output_dir="./iverilog_outputs"
mkdir -p "$output_dir"
OUTPUT="$output_dir/simulation.out"

# Compile the Verilog files
iverilog -o $OUTPUT $VERILOG_SRC

# Run the simulation
vvp $OUTPUT

