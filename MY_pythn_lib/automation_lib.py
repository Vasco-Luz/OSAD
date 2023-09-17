import subprocess
import os
import csv
import pandas as pd
import numpy as np
import re
import sys
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.patches as mpatches
import random
from skylib1 import sim_comands



class automatic:
    def Population_generation(variables,population):
        new_population = pd.DataFrame()
        new_population = pd.DataFrame(columns=variables)
        for i in range(population):
            # Generate data for each column
            for ii in range(len(variables)):
                if variables[ii].startswith("W"):
                    new_population.loc[i, variables[ii]] = random.randint(10, 100)
                if variables[ii].startswith("L"):
                    new_population.loc[i, variables[ii]] = random.uniform(0.5, 50)
                if variables[ii].startswith("R"):
                    new_population.loc[i, variables[ii]] = random.uniform(0.35, 90)
                if variables[ii].startswith("C"):
                    new_population.loc[i, variables[ii]] = random.uniform(1, 100)
        return(new_population)
    
    def fitness_function(spice_path,variables_names,variables_vals):
        for i in range(0,len(variables_names)-1,1):
            if variables_names[i].startswith("W") and variables_names[i].startswith("L") and variables_names[i].startswith("R") and variables_names[i].startswith("C"):
                sim_comands.change_var(".param "+variables_names[i],variables_vals[i])
                






