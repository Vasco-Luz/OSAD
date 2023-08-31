import sys
import subprocess
import os
import pandas as pd
import numpy as np
from skylib1 import sim_comands







#start write the file name in the terminal
file_Path = sim_comands.get_file_path() #gets the file path
user_input = 0
while (user_input != 6):
    print("select:1-to change process corner")
    print("select:2-to choose a variable sweep")
    print("select:3-to choose the number of runs")
    print("select:4-to choose if VDD or TEMP have a gaussean variation")
    print("select:5-to simulate")
    print("select:6-to quit")
    user_input = input("Enter the desired corner: ")#get the param input
    sim_comands.export_netlist(file_Path)
a= 0
