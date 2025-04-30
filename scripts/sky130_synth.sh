#!/bin/bash

# sky130_synth.sh

# Get command line arguments
input_file="$1"
top_module="$2"

# Check if input was given
if [[ -z "$input_file" || -z "$top_module" ]]; then
    echo "❌ Usage: sky130_synth.sh <input_file.v> <top_module>"
    exit 1
fi

# Get the current working directory (where the script was called from)
output_dir="$(pwd)"

# Set output file path
output_file="${output_dir}/mapped.v"

# Define the correct path to your liberty file
liberty_path="/foss/pdks/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"

# Check if yosys is installed
if ! command -v yosys >/dev/null 2>&1; then
    echo "❌ Error: yosys not found in PATH!"
    exit 1
fi

# Run yosys synthesis with the commands directly (no script needed)
echo "⚡ Running synthesis with yosys..."

yosys -p "read_verilog $input_file" \
      -p "synth -top $top_module" \
      -p "abc -liberty $liberty_path" \
      -p "opt" \
      -p "write_verilog $output_file"

echo "✅ Synthesis done. Output file: $output_file"
