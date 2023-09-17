import sys
import subprocess
import os
import pandas as pd
import numpy as np
from skylib1 import sim_comands










file_Path = sim_comands.get_file_path() #gets the file path
spice_Path =sim_comands.export_netlist(file_Path) #exports the spice netlist from the schematic file and return the location o the file
resistance_var=[]
capacitance_var=[]
witdth_var=[]
length_var=[]
witdth_var,length_var,resistance_var,capacitance_var = sim_comands.variable_detector(spice_Path)

