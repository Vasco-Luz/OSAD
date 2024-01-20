import sys
import subprocess
import os
import pandas as pd
import numpy as np
from skylib1 import sim_comands
from skylib1 import single_trans
from skylib1 import transistor
current_directory = os.path.dirname(os.path.abspath(__file__))


#this case the file i walready know
sch_path = os.path.join(current_directory,"mos.sch")
print(sch_path)
spice_path = sim_comands.export_netlist(sch_path)
transistor,instance = single_trans.get_transistor_type(spice_path)


transistor = single_trans.analyse_transistor(transistor,instance)
single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)


