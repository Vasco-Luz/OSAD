import sys
import subprocess
import os
import pandas as pd
import numpy as np



current_directory = os.getcwd()

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
    
