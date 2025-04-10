#!/bin/bash

# Set output file name set in testbench
run_name="inv.vcd"

# Run GTKWave
gtkwave "iverilog_outputs/$run_name"