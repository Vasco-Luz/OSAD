import os
import pandas as pd
import numpy as np
import itertools
from multiprocessing import Pool
from blocks_sky130 import MOS
from skylib1 import sim_comands
from skylib1 import simulation_data_processing
import json
import matplotlib.pyplot as plt



#example code for various simulations

#basicly finds the tb schematic path and store it in a variable
current_mirror_sch_path = sim_comands.get_specific_file_path("tb")
current_mirror_sch_path = str(current_mirror_sch_path[0])

print("1: for normal simulation")
print("2: for corner simulation")
print("3: for 200 corner monte carlo simulation")

#input for the user to write the type simulation flow
simulation = int(input("Enter the option: "))

#only tt case
if simulation == 1:
    #uses xschem to export the netlist, basicly generates the .spice file
    netlist = sim_comands.export_netlist(current_mirror_sch_path )
    #sends the spice file to ngspice so ngspice simulates the spice file
    sim_comands.ngspice_sim(netlist)
    #reads the output csv file
    data = pd.read_csv("current_tb.csv", delim_whitespace=True, header=None)

    #plots the data
    x_values = data[0]  # First column (x-axis)
    y1_values = data[1]  # Second columnSSS

    # Plot first figure (y1 and y2)
    plt.figure(figsize=(8, 5))
    plt.plot(x_values, y1_values, label="Iout", linewidth=3)
    plt.xlabel("V")
    plt.ylabel("A")
    plt.title("Iout vs Vout")
    plt.legend()
    plt.grid()
    plt.show()


#does a full corner simulation
if simulation == 2:
    corners = ["tt", "ss", "ff", "sf", "fs"]
    netlist = sim_comands.export_netlist(current_mirror_sch_path )
    # Initialize a list to store data for each corner
    data_corner = []

    #basicly does the same thing but for each corner it writes the new corner in the .spice file and sends it to ngspice and read the simulated data
    # Loop through each corner, simulate, and store the data
    for current_corner in corners:
        # Export the netlist and process it for the current corner
        sim_comands.write_corner(netlist, current_corner)  # Update the netlist with corner
        sim_comands.ngspice_sim(netlist)  # Run the simulation (this will generate "data.csv")
    
        # Read the data from the simulation result (assuming the file is "data.csv")
        data_c = pd.read_csv("current_tb.csv", delim_whitespace=True, header=None)
        data_corner.append(data_c)

    # plots all the data from the corners
    plt.figure(figsize=(8, 5))
    for i, data in enumerate(data_corner):
        plt.plot(data.iloc[:, 0], data.iloc[:, 1], label=f"Corner {corners[i]}", linewidth=2)

    plt.xlabel("V")
    plt.ylabel("A")
    plt.title("Iout vs Vout")
    plt.legend()
    plt.grid()
    plt.show()



# in this case a monte carlo simulation is performed for the typical 200 cases, that is standart in the industry to characterize a circuit
#it plots the current at Vout = 2.5

if (simulation == 3): 
    netlist = sim_comands.export_netlist(current_mirror_sch_path )
    # the monte carlo centered at typical case
    sim_comands.write_corner(netlist, "tt_mm")
    data_mc = []

    #200 hundred cases, here for example we switch to 20
    for i in range(20):
        # Export the netlist and update it with the "tt_mm" corner
        netlist = sim_comands.export_netlist(current_mirror_sch_path)
        sim_comands.write_corner(netlist, "tt_mm")
        
        # Run the simulation for the current setup
        sim_comands.ngspice_sim(netlist)  # Assuming this generates "data.csv"
        
        # Read the data from the simulation result
        data = pd.read_csv("current_tb.csv", delim_whitespace=True, header=None)
        data_mc.append(data)

    # Extract the current at 27 degrees (index 68) from Column 1 for all simulations
    current_at_2_5_all = [data.iloc[2500, 1] for data in data_mc]  # Column 1 is index 1

    # Plot the current at 27 degrees for all 200 simulations
    plt.figure(figsize=(10, 6))
    plt.plot(range(1, 21), current_at_2_5_all, marker='o', linestyle='-', color='blue', linewidth=1)

    # Set plot labels and title
    plt.xlabel("Simulation Number")
    plt.ylabel("Current at 2.5 V")
    plt.title("IOUT ar VOUT = 2.5V")

    # Display grid and plot
    plt.grid()
    plt.show()
