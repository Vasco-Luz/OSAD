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
                    new_population.loc[i, variables[ii]] = round(random.uniform(0.5, 2), 2)
                if variables[ii].startswith("R"):
                    new_population.loc[i, variables[ii]] = round(random.uniform(0.35, 100),2)
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

        individual_csv = pd.read_csv(csv_full_path)
        individual_csv = individual_csv.values
        min_value = np.min(individual_csv[:, 1])
    
        return min_value
    

    def roulette_wheel_selection(population,fitness_values): #basic roulete wheel that trie to pair parents with the biggest value
        population_values = population.values
        total_fitness = np.sum(fitness_values)
        probabilities = fitness_values / total_fitness


        parent_indices = np.random.choice(len(population), size=len(fitness_values), p=probabilities, replace=False)

        selected_parents = [population_values[i] for i in parent_indices]
        return selected_parents
    

    def ranked_breeding(population,fitness_values):
        population_values = population.values
         # Rank the individuals based on their fitness (lower rank for higher fitness)
        fitness_values_array = np.array(fitness_values)
        # Rank the individuals based on their fitness (lower rank for higher fitness)
        ranked_indices = np.argsort(-fitness_values_array)
        rank_probabilities = 1 / (np.arange(len(population)) + 1)
        total_probability = np.sum(rank_probabilities)
        probabilities = rank_probabilities / total_probability
        parent_indices = np.random.choice(len(population), size=len(fitness_values), p=probabilities, replace=False)
        selected_parents = [population_values[i] for i in parent_indices]
        return selected_parents


       

    


    def single_point_crossover(parents): #basic single point function i dont like to get a better one
        num_parents = len(parents)
        offspring = []
        parent1 = []
        parent2 = []
        for i in range(0, num_parents, 2):
            #for ii in range(0,len())
            parent1 = parents[i]
            parent2 = parents[i+1]
            crossover_point = np.random.randint(1, len(parent1))
            # Perform crossover to create offspring   #just switch some points between the two algoritms, i dont like it a lot
            offspring1 = np.concatenate((parent1[:crossover_point], parent2[crossover_point:]))
            offspring2 = np.concatenate((parent2[:crossover_point], parent1[crossover_point:]))
            offspring.append(offspring1)
            offspring.append(offspring2)
        return offspring
    


    def gaussean_mutation(filhos,deviation):
        num_filhos = len(filhos)
        num_membros = len(filhos[0])
        mutation = filhos
        print(filhos)
        for i in range(0,num_membros,1):
            for ii in range(0,num_filhos,1):
                mutation[ii][i] = np.around(np.random.normal(filhos[ii][i], deviation), 2)
        return(mutation)
    



    def replace_population(population,mutants):
        columns = population.columns
        new_population = pd.DataFrame()
        new_population = pd.DataFrame(mutants, columns=columns)
        return(new_population)
        


        

        

          




       
        
        







    
        

        
        
                
                






