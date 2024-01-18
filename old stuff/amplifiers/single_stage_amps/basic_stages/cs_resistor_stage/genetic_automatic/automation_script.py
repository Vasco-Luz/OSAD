import sys
import subprocess
import os
import pandas as pd
import numpy as np
from skylib1 import sim_comands
import random
from deap import base, creator, tools, algorithms
from automation_lib import automatic

# for a common source(or any single input type ampliferes), but its to learn how to design automation based on simulation. its the first time i make such thing so its normal its ot very good

file_Path = sim_comands.get_file_path() #gets the file path
spice_Path =sim_comands.export_netlist(file_Path) #exports the spice netlist from the schematic file and return the location o the file
resistance_var=[]
capacitance_var=[]
witdth_var=[]
length_var=[]

test_size = 20 #initial population
generations = 5 #generations
variables = sim_comands.variable_detector(spice_Path)
population= pd.DataFrame()
population = automatic.Population_generation(variables,test_size)#initial population
fitness_vals =[]
filhos = []
print(population)
best_fitness_history = []  # List to store the best fitness value at each generation
best_individual_history = []  # List to store the best individual (chromosome) at each generation



for a in range(0,generations,1):
    #evaluation equation
    for i in range(0,population.shape[0],1):
        a = -automatic.fitness_function(spice_Path,population.columns.tolist(),population.iloc[i].values)
        fitness_vals.append(a)
        spice_Path =sim_comands.export_netlist(file_Path) #exports the spice netlist from the schematic file and return the location o the file
    best_fitness = max(fitness_vals)
    best_individual_index = np.argmax(fitness_vals)
    best_individual = population.values[best_individual_index]
    parentes = automatic.ranked_breeding(population,fitness_vals)
    filhos = automatic.single_point_crossover(parentes)
    mutantes = automatic.gaussean_mutation(filhos,0.5)
    population = automatic.replace_population(population,mutantes)
    best_fitness_history.append(best_fitness)
    best_individual_history.append(best_individual)
    fitness_vals = []

best_gain = max(best_fitness_history)
best_index = np.argmax(best_fitness_history)
best_values =best_individual_history[best_index]
print(best_gain)
print(best_values)



    





