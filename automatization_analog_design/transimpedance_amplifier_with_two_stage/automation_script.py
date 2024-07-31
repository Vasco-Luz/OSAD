from skylib1 import sim_comands
import os
import pygad
import numpy as np
import random
import pygad
from blocks_sky130 import transcondutance_cell_v1_5V
from blocks_sky130 import MOS


##################### Variables 
# 
# Get script location
script_location = os.path.dirname(os.path.abspath(__file__))+ "/testbench_bias_generator.sch"

# Get the .txt file locations
files_location = "/home/" + os.getlogin() + "/.xschem/simulations"
current_dir = os.path.dirname(os.path.abspath(__file__))

#####################code to estimate the best value for the bias generator
#export the netlist
netlist_location=sim_comands.export_netlist(script_location)


population_size = 1000
population = [transcondutance_cell_v1_5V.create_random_individual() for _ in range(population_size)]
fitness_val =[]

# Define the genetic algorithm parameters
num_generations = 100
num_parents_mating = 100



test = transcondutance_cell_v1_5V.create_random_individual() 


#tratatr da forma como a populacao e avaliada e catalogada mas a avalaiacao de um membro individual ja e funcional
transcondutance_cell_v1_5V.fitness(population,population_size,current_dir,netlist_location)
