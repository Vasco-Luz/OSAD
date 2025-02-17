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



transcondutance_sch_path = sim_comands.get_specific_file_path("cell")
transcondutance_sch_path = str(transcondutance_sch_path[0])

print("1: for normal simulation")
print("2: for corner simulation")
print("3: for 200 corner monte carlo simulation")

simulation = int(input("Enter the option: "))

if simulation == 1:
    netlist = sim_comands.export_netlist(transcondutance_sch_path)
    sim_comands.ngspice_sim(netlist)
    data = pd.read_csv("data.csv", delim_whitespace=True, header=None)

    x_values = data[0]  # First column (x-axis)
    y1_values = data[1]  # Second column
    y2_values = data[3]  # Fourth column

    diff_values = y1_values - y2_values  # Compute the difference

    # Plot first figure (y1 and y2)
    plt.figure(figsize=(8, 5))
    plt.plot(x_values, y1_values, label="Iref", linewidth=3)
    plt.plot(x_values, y2_values, label="Iref2", linewidth=3)
    plt.xlabel("Temperature")
    plt.ylabel("A")
    plt.title("Iref")
    plt.legend()
    plt.grid()
    plt.show()

    plt.figure(figsize=(8, 5))
    plt.plot(x_values, diff_values, label="Difference", marker='x', color='red', linewidth=0.5)
    plt.xlabel("Temperature")
    plt.ylabel("Difference between the two branch current")
    plt.title("Difference")
    plt.legend()
    plt.grid()
    plt.show()


if simulation == 2:
    corners = ["tt", "ss", "ff", "sf", "fs"]
    netlist = sim_comands.export_netlist(transcondutance_sch_path)
    # Initialize a list to store data for each corner
    data_corner = []

    # Loop through each corner, simulate, and store the data
    for current_corner in corners:
        # Export the netlist and process it for the current corner
        sim_comands.write_corner(netlist, current_corner)  # Update the netlist with corner
        sim_comands.ngspice_sim(netlist)  # Run the simulation (this will generate "data.csv")
    
        # Read the data from the simulation result (assuming the file is "data.csv")
        data_c = pd.read_csv("data.csv", delim_whitespace=True, header=None)
        data_corner.append(data_c)

    # 1. Plot Column 1 data for all corners
    plt.figure(figsize=(8, 5))
    for i, data in enumerate(data_corner):
        plt.plot(data.iloc[:, 0], data.iloc[:, 1], label=f"Corner {corners[i]}", linewidth=2)

    plt.xlabel("Temperature")
    plt.ylabel("A")
    plt.title("Iref")
    plt.legend()
    plt.grid()
    plt.show()

    # 2. Plot the difference between Column 1 and Column 3 for all corners
    plt.figure(figsize=(8, 5))
    for i, data in enumerate(data_corner):
        diff = data.iloc[:, 1] - data.iloc[:, 3]  # Calculate the difference between Column 1 and Column 3
        plt.plot(data.iloc[:, 0], diff, label=f"Corner {corners[i]}", linewidth=2)

    plt.xlabel("Temperature")
    plt.ylabel("Diference between branches current")
    plt.title("Current Difference between branches for All Corners")
    plt.legend()
    plt.grid()
    plt.show()

    # 3. Plot the current at 27 degrees (index 68) for Column 1 from each corner
    current_at_27 = [data.iloc[68, 1] for data in data_corner]  # Get the current at index 68 (27 degrees) from Column 1

    plt.figure(figsize=(8, 5))
    plt.plot(corners, current_at_27, marker='o', linestyle='-', color='blue', linewidth=2)
    plt.xlabel("Corner")
    plt.ylabel("Current at 27 degrees IREF")
    plt.title("Current at 27 Degrees IREF")
    plt.grid()
    plt.show()


if (simulation == 3): 
    netlist = sim_comands.export_netlist(transcondutance_sch_path)
    sim_comands.write_corner(netlist, "mc")
    data_mc = []

    for i in range(20):
        # Export the netlist and update it with the "tt_mm" corner
        netlist = sim_comands.export_netlist(transcondutance_sch_path)
        sim_comands.write_corner(netlist, "tt_mm")
        
        # Run the simulation for the current setup
        sim_comands.ngspice_sim(netlist)  # Assuming this generates "data.csv"
        
        # Read the data from the simulation result
        data = pd.read_csv("data.csv", delim_whitespace=True, header=None)
        data_mc.append(data)

    # Extract the current at 27 degrees (index 68) from Column 1 for all simulations
    current_at_27_all = [data.iloc[68, 1] for data in data_mc]  # Column 1 is index 1

    # Plot the current at 27 degrees for all 200 simulations
    plt.figure(figsize=(10, 6))
    plt.plot(range(1, 21), current_at_27_all, marker='o', linestyle='-', color='blue', linewidth=1)

    # Set plot labels and title
    plt.xlabel("Simulation Number")
    plt.ylabel("Current at 27 degrees")
    plt.title("Current at 27 Degrees")

    # Display grid and plot
    plt.grid()
    plt.show()












