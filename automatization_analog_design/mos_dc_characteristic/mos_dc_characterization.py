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

transitor = single_trans.get_transistor_type(spice_path)

transitor = single_trans.analyse_transistor(transitor)

print(transitor.transistor_type)
print(transitor.VGS_max)
print(transitor.VDS_max)
print(transitor.type)