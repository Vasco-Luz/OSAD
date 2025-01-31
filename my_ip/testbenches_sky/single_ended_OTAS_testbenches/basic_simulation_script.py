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
        CL_value = data.get("CL",None)


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

sim_comands.ngspice_sim(dc_sch_path_netlist)
df_dc = pd.read_csv("VIN_sweep_DC.csv", delim_whitespace=True, header=None)
offset = simulation_data_processing.offset_finder(df_dc,float(VDD_value)/2)
offset_str = simulation_data_processing.value_converter_to_string(offset)
power = simulation_data_processing.power_finder(df_dc,float(VDD_value))
power_str = simulation_data_processing.value_converter_to_string(power)

#AC simulaion
ac_sch_path = sim_comands.get_specific_file_path("AC")
ac_sch_path = str(ac_sch_path[0])
ac_sch_path_netlist  = sim_comands.export_netlist(ac_sch_path)

#write supply values
sim_comands.write_param(ac_sch_path_netlist,"VDD",VDD_value)
sim_comands.write_param(ac_sch_path_netlist,"VSS",VSS_value)
sim_comands.write_param(ac_sch_path_netlist,"V_OFF",offset_str)
sim_comands.write_param(ac_sch_path_netlist,"CL",CL_value)

sim_comands.ngspice_sim(ac_sch_path_netlist)

df_ac = pd.read_csv("VIN_sweep_AC.csv", delim_whitespace=True, header=None)

DC_gain,bandwith,phase_margin,CMRR,PSRR_plus,PSSR_minus = simulation_data_processing.ac_data_processing(df_ac)

DC_gain = str(DC_gain) + "dB"
CMRR = str(CMRR) + "dB"
PSRR_plus = str(PSRR_plus) + "dB"
PSSR_minus = str(PSSR_minus) + "dB"

