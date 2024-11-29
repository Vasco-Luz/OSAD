import os
import pandas as pd
import numpy as np
import itertools
from multiprocessing import Pool
from blocks_sky130 import MOS
from skylib1 import sim_comands

# Define ranges for parameters
w_values = np.linspace(1, 50, 10)
L_values = np.linspace(0.15, 0.5, 10)
nf_values = range(1, 4)
mult_values = range(1, 4)

# Generate parameter sweep
parameter_sweep = [
    {"w": w, "L": L, "nf": nf, "mult": mult}
    for w, L, nf, mult in itertools.product(w_values, L_values, nf_values, mult_values)
]

script_location = os.path.dirname(os.path.abspath(__file__))
output_file = os.path.join(script_location, "total_data.csv")

# Define simulation function
def run_simulation(params_with_index):
    params, process_id = params_with_index
    file_path = os.path.join(script_location, f"test_{process_id}.spice")
    sim_data_file = os.path.join(script_location, f"sim_data_{process_id}.csv")
    
    try:
        print(f"Starting simulation for process {process_id} with params: {params}")
        
        # Create MOS instance with current parameters
        M1 = MOS(
            mos_type="nmos",
            w_per_finger=params["w"],
            gate_length=params["L"],
            instance_name="M1",
            nf=params["nf"],
            m=params["mult"],
            model="nfet_01v8_lvt"
        )
        
        # Generate SPICE file
        M1.generate_self_VGS_test_spice(file_path, process=process_id)
        
        # Run simulation
        sim_comands.ngspice_sim(file_path)
        
        # Read simulation data and add parameters
        if os.path.exists(sim_data_file):
            sim_data = pd.read_csv(sim_data_file)
            sim_data["w"] = params["w"]
            sim_data["L"] = params["L"]
            sim_data["nf"] = params["nf"]
            sim_data["mult"] = params["mult"]
            
            # Save the augmented data back to the file
            sim_data.to_csv(sim_data_file, index=False)
            print(f"Simulation completed for process {process_id}")
            return sim_data_file  # Return file path for aggregation
        else:
            print(f"Simulation data file {sim_data_file} not found!")
            return None
    except Exception as e:
        print(f"Error in process {process_id}: {e}")
        return None
    finally:
        # Clean up the SPICE file
        if os.path.exists(file_path):
            os.remove(file_path)

# Aggregate all CSV files into one and delete temporary files
def aggregate_and_cleanup(sim_data_files):
    total_data = pd.DataFrame()
    
    for file in sim_data_files:
        if file and os.path.exists(file):
            try:
                data = pd.read_csv(file)
                total_data = pd.concat([total_data, data], ignore_index=True)
                os.remove(file)  # Delete individual CSV after merging
            except Exception as e:
                print(f"Failed to process file {file}: {e}")
    
    # Save aggregated data
    if not total_data.empty:
        total_data.to_csv(output_file, index=False)
        print(f"All data aggregated and saved to {output_file}")
    else:
        print("No valid simulation data collected!")



# Main parallel simulation execution
def parallel_simulations(parameter_sweep, num_processes=4):
    indexed_params = [(params, idx) for idx, params in enumerate(parameter_sweep)]
    sim_data_files = []

    with Pool(processes=num_processes) as pool:
        for sim_file in pool.imap_unordered(run_simulation, indexed_params):
            if sim_file:
                sim_data_files.append(sim_file)

    # Aggregate all the data into a single CSV and clean up
    aggregate_and_cleanup(sim_data_files)

# Run simulations
if __name__ == "__main__":
    parallel_simulations(parameter_sweep, num_processes=4)
