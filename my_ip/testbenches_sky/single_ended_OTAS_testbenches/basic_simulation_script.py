import os
import pandas as pd
import numpy as np
import itertools
from multiprocessing import Pool
from blocks_sky130 import MOS
from skylib1 import sim_comands
from skylib1 import simulation_data_processing
import json





json_file = next((file for file in os.listdir('.') if file.endswith('.json')), None)

if json_file:
    # Open and read the JSON file
    with open(json_file, "r") as file:
        data = json.load(file)
        VDD_value = data.get("VDD", None)
        VSS_value = data.get("VSS", None)
        offset_value =data.get("V_OFF_required",None)





#simulation flow

#DC simulation

dc_sch_path = sim_comands.get_specific_file_path("DC")

dc_sch_path = str(dc_sch_path[0])

dc_sch_path_netlist  = sim_comands.export_netlist(dc_sch_path)



#write supply values
sim_comands.write_param(dc_sch_path_netlist,"VDD",VDD_value)
sim_comands.write_param(dc_sch_path_netlist,"VSS",VSS_value)


#DC simulations
#VDS sweep and verify offset

#sim_comands.ngspice_sim(dc_sch_path_netlist)

df = pd.read_csv("VIN_sweep_DC.csv", delim_whitespace=True, header=None)


offset = simulation_data_processing.offset_finder(df,float(VDD_value)/2)
power = simulation_data_processing.power_finder(df,float(VDD_value))

print(offset)