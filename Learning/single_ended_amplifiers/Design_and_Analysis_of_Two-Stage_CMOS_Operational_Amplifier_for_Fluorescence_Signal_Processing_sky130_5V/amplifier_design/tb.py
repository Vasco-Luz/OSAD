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
from skylib1 import simulation_data_processing

#write script params
VDD = 1.8
#
VSS = 0
#
CL = "3p"
#
#


DC_sch_path = sim_comands.get_specific_file_path("DC")
DC_sch_path = str(DC_sch_path[0])

AC_sch_path = sim_comands.get_specific_file_path("AC")
AC_sch_path = str(AC_sch_path[0])



print("1: for normal simulation")
print("2: for corner simulation")
print("3: for 200 corner monte carlo simulation")

simulation = int(input("Enter the option: "))

if simulation == 1:
    netlist = sim_comands.export_netlist(DC_sch_path)
    sim_comands.write_param(DC_sch_path,"VDD",str(VDD))
    sim_comands.write_param(DC_sch_path,"VSS",str(VSS))


    sim_comands.ngspice_sim(netlist)
    data = pd.read_csv("VIN_sweep_DC.csv", delim_whitespace=True, header=None)

    offset = data.iloc[90,1] - data.iloc[90,0]
    print(offset)
    
    
    offset = simulation_data_processing.value_converter_to_string(offset)
    power = simulation_data_processing.value_converter_to_string(data.iloc[90,3]*(VDD-VSS))



    #x_values = data[0]  # First column (x-axis)
    #y1_values = data[1]  # Second column
    # Plot first figure (y1 and y2)
    #plt.figure(figsize=(8, 5))
    #plt.plot(x_values, y1_values, label="Vout", linewidth=3)
    #plt.xlabel("V")
    #plt.ylabel("V")
    #plt.title("Vin vs Vout in voltage follower mode")
    #plt.legend()
    #plt.grid()
    #plt.show()



    sim_comands.write_param(AC_sch_path,"VDD",str(VDD))
    sim_comands.write_param(AC_sch_path,"VSS",str(VSS))
    sim_comands.write_param(AC_sch_path,"V_OFF",str(offset))
    sim_comands.write_param(AC_sch_path,"CL",CL)

    netlist = sim_comands.export_netlist(AC_sch_path)
    sim_comands.ngspice_sim(netlist)
    data_ac = pd.read_csv("VIN_sweep_AC.csv", delim_whitespace=True, header=None)


    data_ac[3] = data_ac[3] * (180 / np.pi) +180  # Convert radians to degrees

    x_values = data_ac[0]  # First column (x-axis)
    y1_values = data_ac[1]  # Second column
    y2_values = data_ac[3]

    # Find the frequency where gain crosses 0 dB (interpolation)
    zero_gain_index = np.where(np.diff(np.sign(y1_values)))[0]  # Index where gain changes sign
    if len(zero_gain_index) > 0:
        idx = zero_gain_index[0]  # First crossing point
        x_zero_gain = np.interp(0, [y1_values[idx], y1_values[idx + 1]], [x_values[idx], x_values[idx + 1]])
        phase_at_x_zero_gain = np.interp(x_zero_gain, x_values, y2_values)
    else:
        x_zero_gain = None
        phase_at_x_zero_gain = None

    # Create figure and first axis
    fig, ax1 = plt.subplots(figsize=(8, 5))

    # Plot gain (left y-axis)
    ax1.plot(x_values, y1_values, label="Gain (dB)", linewidth=3, color="b")
    ax1.set_xscale("log")  # Logarithmic x-axis
    ax1.set_xlabel("Frequency (Hz)")
    ax1.set_ylabel("Gain (dB)", color="b")
    ax1.tick_params(axis="y", labelcolor="b")
    ax1.grid(True, which="both", linestyle="--", linewidth=0.5)

    # Create second y-axis for phase
    ax2 = ax1.twinx()
    ax2.plot(x_values, y2_values, label="Phase (degrees)", linewidth=3, color="r", linestyle="dashed")
    ax2.set_ylabel("Phase (°)", color="r")
    ax2.tick_params(axis="y", labelcolor="r")

    # Draw vertical line where gain = 0 dB (GBW frequency)
    if x_zero_gain:
        ax1.axvline(x=x_zero_gain, color="g", linestyle="--", linewidth=2, label="Gain = 0 dB (GBW)")
    
        # Convert GBW frequency to MHz
        gbw_mhz = x_zero_gain / 1e6  

        # Annotate GBW frequency in MHz
        ax1.scatter([x_zero_gain], [0], color="black", zorder=3)
        ax1.text(x_zero_gain, 0, f"{gbw_mhz:.2f} MHz", 
                verticalalignment="bottom", horizontalalignment="right", fontsize=10, color="black")


    # Title and legend
    plt.title("Gain and Phase vs Frequency")
    fig.legend(loc="upper right", bbox_to_anchor=(1, 1))
    plt.show()


    dc_gain = str(data_ac.loc[0,1])
    phase_margin = str(phase_at_x_zero_gain)
    CMRR = str(data_ac.loc[0,1] - data_ac.loc[0,5])
    PSSR_minus = str(data_ac.loc[0,1] - data_ac.loc[0,7])
    PSSR_plus = str(data_ac.loc[0,1] - data_ac.loc[0,9])

    table_data = [
    ["DC Gain (dB)", dc_gain],
    ["Phase Margin (°)", phase_margin],
    ["CMRR (dB)", CMRR],
    ["GBW (MHz)", f"{x_zero_gain / 1e6:.2f}"],  # Convert GBW to MHz
    ["PSSR- (dB)", PSSR_minus],
    ["PSSR+ (dB)", PSSR_plus],
    ["Offset (V)", offset],
    ["Power (W)", power]
    ]

    # Plot the table
    fig, ax = plt.subplots(figsize=(6, 4))
    ax.axis("tight")
    ax.axis("off")
    table = ax.table(cellText=table_data, colLabels=["Parameter", "Value"], cellLoc="center", loc="center")

    # Display the table
    plt.title("Simulation Results")
    plt.show()


if simulation == 2:
    corners = ["tt", "ss", "ff", "sf", "fs"]
    table_data = [["Corner", "DC Gain (dB)", "GBW (MHz)", "Phase Margin (°)", "CMRR (dB)", "PSSR- (dB)", "PSSR+ (dB)", "Offset (V)", "Power (W)"]]

    for current_corner in corners:
        # Export the netlist and set the corner
        netlist = sim_comands.export_netlist(DC_sch_path)
        sim_comands.write_corner(netlist, current_corner)

        # Set voltage parameters
        sim_comands.write_param(DC_sch_path, "VDD", str(VDD))
        sim_comands.write_param(DC_sch_path, "VSS", str(VSS))

        # Run DC simulation
        sim_comands.ngspice_sim(netlist)
        data = pd.read_csv("VIN_sweep_DC.csv", delim_whitespace=True, header=None)

        # Compute offset and power
        offset = data.iloc[900, 1] - data.iloc[900, 0]
        offset = simulation_data_processing.value_converter_to_string(offset)
        power = simulation_data_processing.value_converter_to_string(data.iloc[900, 3] * (VDD - VSS))

        # Run AC simulation with the updated parameters
        sim_comands.write_param(AC_sch_path, "VDD", str(VDD))
        sim_comands.write_param(AC_sch_path, "VSS", str(VSS))
        sim_comands.write_param(AC_sch_path, "V_OFF", str(offset))
        sim_comands.write_param(AC_sch_path, "CL", CL)

        netlist = sim_comands.export_netlist(AC_sch_path)
        sim_comands.write_corner(netlist, current_corner)
        
        sim_comands.ngspice_sim(netlist)
        data_ac = pd.read_csv("VIN_sweep_AC.csv", delim_whitespace=True, header=None)

        # Convert phase data to degrees
        data_ac[3] = data_ac[3] * (180 / np.pi) + 180  

        # Extract relevant values
        dc_gain = str(data_ac.loc[0, 1])
        CMRR = str(data_ac.loc[0, 1] - data_ac.loc[0, 5])
        PSSR_minus = str(data_ac.loc[0, 1] - data_ac.loc[0, 7])
        PSSR_plus = str(data_ac.loc[0, 1] - data_ac.loc[0, 9])

        # Compute phase margin (Gain = 0 dB point)
        x_values = data_ac[0]
        y1_values = data_ac[1]
        y2_values = data_ac[3]

        zero_gain_index = np.where(np.diff(np.sign(y1_values)))[0]  # Find zero dB crossing
        if len(zero_gain_index) > 0:
            idx = zero_gain_index[0]
            x_zero_gain = np.interp(0, [y1_values[idx], y1_values[idx + 1]], [x_values[idx], x_values[idx + 1]])
            phase_at_x_zero_gain = np.interp(x_zero_gain, x_values, y2_values)

            # Convert GBW from Hz to MHz
            gbw_mhz = x_zero_gain / 1e6
            gbw = f"{gbw_mhz:.2f}"  # Format to 2 decimal places
        else:
            x_zero_gain = None
            phase_at_x_zero_gain = None
            gbw = "N/A"

        phase_margin = str(phase_at_x_zero_gain)

        # Append results to the table
        table_data.append([
            current_corner.upper(), dc_gain, gbw, phase_margin, CMRR, PSSR_minus, PSSR_plus, offset, power
        ])

    # Plot the final table with all corners
    fig, ax = plt.subplots(figsize=(14, 6))
    ax.axis("tight")
    ax.axis("off")
    table = ax.table(cellText=table_data, colLabels=table_data[0], cellLoc="center", loc="center")

    # Display the table
    plt.title("Corner Simulation Results")
    plt.show()



if simulation == 3: 

    DC_sch_path = sim_comands.get_specific_file_path("mc_dc")
    DC_sch_path = str(DC_sch_path[0])

    AC_sch_path = sim_comands.get_specific_file_path("mc_ac")
    AC_sch_path = str(AC_sch_path[0])

    num_cases = 20  # Monte Carlo simulations

    # Store results
    offsets = []
    powers = []
    dc_gains = []
    phase_margins = []
    CMRRs = []
    PSSR_minuses = []
    PSSR_pluses = []
    gbws = []  # Store GBW values

    for i in range(num_cases):
        # Export the netlist and update with "tt_mm" corner
        netlist = sim_comands.export_netlist(DC_sch_path)

        # Run the DC simulation
        sim_comands.ngspice_sim(netlist)
        data = pd.read_csv("mc_dc.csv", delim_whitespace=True, header=None)

        # Compute offset and power
        offset = data.iloc[900, 1] - data.iloc[900, 0]
        offsets.append(offset)

        power = data.iloc[900, 3] * (VDD - VSS)
        powers.append(power)

        # Run AC simulation
        netlist = sim_comands.export_netlist(AC_sch_path)
        sim_comands.ngspice_sim(netlist)
        data_ac = pd.read_csv("mc_ac.csv", delim_whitespace=True, header=None)

        # Convert phase data to degrees
        data_ac[3] = data_ac[3] * (180 / np.pi) + 180  

        # Extract values
        dc_gains.append(data_ac.loc[0, 1])
        CMRRs.append(data_ac.loc[0, 1] - data_ac.loc[0, 5])
        PSSR_minuses.append(data_ac.loc[0, 1] - data_ac.loc[0, 7])
        PSSR_pluses.append(data_ac.loc[0, 1] - data_ac.loc[0, 9])

        # Compute phase margin (Gain = 0 dB point)
        x_values = data_ac[0]
        y1_values = data_ac[1]
        y2_values = data_ac[3]

        zero_gain_index = np.where(np.diff(np.sign(y1_values)))[0]
        if len(zero_gain_index) > 0:
            idx = zero_gain_index[0]
            x_zero_gain = np.interp(0, [y1_values[idx], y1_values[idx + 1]], [x_values[idx], x_values[idx + 1]])
            phase_at_x_zero_gain = np.interp(x_zero_gain, x_values, y2_values)

            # Convert GBW from Hz to MHz
            gbw_mhz = x_zero_gain / 1e6
            gbws.append(gbw_mhz)
        else:
            phase_at_x_zero_gain = None
            gbws.append(None)  # Append None for missing GBW cases

        phase_margins.append(phase_at_x_zero_gain)

    # Compute statistics manually
    dc_gain_mean = np.mean(dc_gains)
    dc_gain_std = np.std(dc_gains)
    dc_gain_min = np.min(dc_gains)
    dc_gain_max = np.max(dc_gains)

    phase_margin_mean = np.mean(phase_margins)
    phase_margin_std = np.std(phase_margins)
    phase_margin_min = np.min(phase_margins)
    phase_margin_max = np.max(phase_margins)

    CMRR_mean = np.mean(CMRRs)
    CMRR_std = np.std(CMRRs)
    CMRR_min = np.min(CMRRs)
    CMRR_max = np.max(CMRRs)

    PSSR_minus_mean = np.mean(PSSR_minuses)
    PSSR_minus_std = np.std(PSSR_minuses)
    PSSR_minus_min = np.min(PSSR_minuses)
    PSSR_minus_max = np.max(PSSR_minuses)

    PSSR_plus_mean = np.mean(PSSR_pluses)
    PSSR_plus_std = np.std(PSSR_pluses)
    PSSR_plus_min = np.min(PSSR_pluses)
    PSSR_plus_max = np.max(PSSR_pluses)

    offset_mean = np.mean(offsets)
    offset_std = np.std(offsets)
    offset_min = np.min(offsets)
    offset_max = np.max(offsets)

    power_mean = np.mean(powers)
    power_std = np.std(powers)
    power_min = np.min(powers)
    power_max = np.max(powers)

    # Compute GBW statistics (handling None values)
    gbw_filtered = [g for g in gbws if g is not None]  # Remove None values
    if gbw_filtered:
        gbw_mean = np.mean(gbw_filtered)
        gbw_std = np.std(gbw_filtered)
        gbw_min = np.min(gbw_filtered)
        gbw_max = np.max(gbw_filtered)
        gbw_str = f"{gbw_mean:.2f} ± {gbw_std:.2f} (Min: {gbw_min:.2f}, Max: {gbw_max:.2f})"
    else:
        gbw_str = "N/A"

    # Prepare table data
    table_data = [
        ["DC Gain (dB)", f"{dc_gain_mean:.2f} ± {dc_gain_std:.2f} (Min: {dc_gain_min:.2f}, Max: {dc_gain_max:.2f})"],
        ["GBW (MHz)", gbw_str],  # Added GBW to table
        ["Phase Margin (°)", f"{phase_margin_mean:.2f} ± {phase_margin_std:.2f} (Min: {phase_margin_min:.2f}, Max: {phase_margin_max:.2f})"],
        ["CMRR (dB)", f"{CMRR_mean:.2f} ± {CMRR_std:.2f} (Min: {CMRR_min:.2f}, Max: {CMRR_max:.2f})"],
        ["PSSR- (dB)", f"{PSSR_minus_mean:.2f} ± {PSSR_minus_std:.2f} (Min: {PSSR_minus_min:.2f}, Max: {PSSR_minus_max:.2f})"],
        ["PSSR+ (dB)", f"{PSSR_plus_mean:.2f} ± {PSSR_plus_std:.2f} (Min: {PSSR_plus_min:.2f}, Max: {PSSR_plus_max:.2f})"],
        ["Offset (V)", f"{offset_mean:.8f} ± {offset_std:.8f} (Min: {offset_min:.8f}, Max: {offset_max:.8f})"],
        ["Power (W)", f"{power_mean:.8f} ± {power_std:.8f} (Min: {power_min:.8f}, Max: {power_max:.8f})"]
    ]

    # Plot the table
    fig, ax = plt.subplots(figsize=(12, 6))  # Larger figure
    ax.axis("tight")
    ax.axis("off")
    table = ax.table(cellText=table_data, colLabels=["Parameter", "Mean ± Std (Min, Max)"], cellLoc="center", loc="center")

    # Display the table
    plt.title("Monte Carlo Simulation Results (20 Runs)")
    plt.show()
