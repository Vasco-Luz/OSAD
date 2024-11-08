import sys
import subprocess
import os
import pandas as pd
import numpy as np

# Get the current directory
current_directory = os.getcwd()

# Part 1: Set up PYTHONPATH
target_directory = "MY_pythn_lib"
if os.path.exists(target_directory):
    export_command = f'export PYTHONPATH=$PYTHONPATH:{current_directory}/{target_directory}'
    bashrc_path = os.path.expanduser("~/.bashrc")
    # Check if the export command is already present in the bashrc file
    with open(bashrc_path, "r") as bashrc_file:
        bashrc_content = bashrc_file.read()
    if export_command not in bashrc_content:
        # Append the export command to the bashrc file
        with open(bashrc_path, "a") as bashrc_file:
            bashrc_file.write("\n" + export_command)
            os.system("source ~/.bashrc")

# Part 2: Set up XSCHEM_USER_LIBRARY_PATH
script_directory = os.path.dirname(os.path.abspath(__file__))
target_directory = os.path.join(script_directory, "my_ip", "LIB")

export_command = f'export XSCHEM_USER_LIBRARY_PATH={target_directory}'
bashrc_path = os.path.expanduser("~/.bashrc")
with open(bashrc_path, "r") as bashrc_file:
    bashrc_content = bashrc_file.read()

if export_command not in bashrc_content:
    with open(bashrc_path, "a") as bashrc_file:
        bashrc_file.write("\n" + export_command)
    os.system("source ~/.bashrc")

# Part 3: Compile LaTeX to PDF
# Define the path to the LaTeX source file and output directory
latex_source = os.path.join(script_directory, "my_ip", "Documentation", "Documentation", "My-blocks-circuits", "main.tex")
output_directory = os.path.join(script_directory, "my_ip", "Documentation")

# Compile LaTeX using pdflatex
try:
    subprocess.run(
        ["pdflatex", "-output-directory", output_directory, latex_source],
        check=True
    )
    print("PDF generated successfully.")
except subprocess.CalledProcessError:
    print("Error: PDF generation failed. Check the LaTeX source file for issues.")
