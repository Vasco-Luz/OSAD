#!/usr/bin/env tclsh

# sky130_synth.tcl

# Get command line arguments
set input_file [lindex $argv 0]
set top_module [lindex $argv 1]

# Check if input was given
if { $input_file eq "" || $top_module eq "" } {
    puts "❌ Usage: sky130_synth.tcl <input_file.v> <top_module>"
    exit 1
}

# Get the current working directory (where the script was called from)
set output_dir [pwd]

# Set output file path
set output_file "${output_dir}/mapped.v"

# Define the path to your liberty file
set liberty_path "/path/to/your/sky130_fd_sc_hd__tt_025C_1v80.lib"

# Build the yosys script commands dynamically
set yosys_script "
read_verilog $input_file
synth -top $top_module
abc -liberty $liberty_path
opt
write_verilog $output_file
"

# Save the yosys script to a temporary file
set tmpfile "/tmp/temp_synth.tcl"
set fp [open $tmpfile "w"]
puts $fp $yosys_script
close $fp

# Call yosys to run the temporary script
puts "⚡ Running synthesis with yosys..."
exec yosys -c $tmpfile

# Clean up the temporary script (optional)
file delete $tmpfile

puts "✅ Synthesis done. Output file: $output_file"

