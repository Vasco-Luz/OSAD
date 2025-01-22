import os
import pandas as pd
import numpy as np
import itertools
from multiprocessing import Pool
from blocks_sky130 import MOS
from skylib1 import sim_comands
import json





json_file = next((file for file in os.listdir('.') if file.endswith('.json')), None)

if json_file:
    # Open and read the JSON file
    with open(json_file, "r") as file:
        data = json.load(file)

    print(data)



#simulation flow

#DC simulation

dc_sch_path = sim_comands.get_specific_file_path("DC")
#dc_sch_path_netlist  = sim_comands.export_netlist(dc_sch_path)

