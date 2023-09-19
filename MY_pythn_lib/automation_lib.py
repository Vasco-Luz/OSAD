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
                    new_population.loc[i, variables[ii]] = round(random.uniform(0.5, 50), 2)
                if variables[ii].startswith("R"):
                    new_population.loc[i, variables[ii]] = round(random.uniform(0.35, 90),2)
                if variables[ii].startswith("C"):
                    new_population.loc[i, variables[ii]] = random.uniform(1, 100)
        return(new_population)
    


    
    def fitness_function(spice_path,variables_names,variables_vals):
        sim_dc = sim_comands.add_dc_simulation(spice_path,"save all",0.001,0,5,"V2")
        txt_path = sim_comands.add_save_automn(spice_path,"dc","deriv(v(VOUT))","dc")
        for i in range(0,len(variables_names),1):
            if variables_names[i].startswith("W") or variables_names[i].startswith("L") or variables_names[i].startswith("R") or variables_names[i].startswith("C"):
                sim_comands.change_var(spice_path,".param "+variables_names[i]+" =",variables_vals[i])
        sim_comands.ngspice_sim(spice_path)
        sim_comands.remove_sim_save(spice_path,"dc")
        individual_csv = pd.DataFrame
        csv_full_path = sim_comands.write_single_cvs_file(txt_path,"VOUT",1,"dc")
        sim_comands.plot_2d_simple(csv_full_path)
        individual_csv = pd.read_csv(csv_full_path)
        individual_csv = individual_csv.values
        min_ind = np.argmin(individual_csv[:, 1])
        vin_value = round(individual_csv[min_ind, 0],2)
        sim_comands.change_var(spice_path,".param "+"vin"+" =",vin_value)

        sim_comands.add_ac_simulation(spice_path,"save all","20","1","50G")
        txt_path = sim_comands.add_save_automn(spice_path,"ac","v(VOUT)","ac")
        sim_comands.ngspice_sim(spice_path)
        sim_comands.remove_sim_save(spice_path,"ac")
        csv_full_path = sim_comands.write_single_cvs_file(txt_path,"VOUT",1,"frequency")
        sim_comands.plot_2d_simple(csv_full_path)


    
        

        
        
                
                






