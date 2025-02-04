import os
import pandas as pd
import numpy as np
import itertools
from multiprocessing import Pool
from blocks_sky130 import MOS
from skylib1 import sim_comands
from skylib1 import simulation_data_processing
from blocks_sky130 import transcondutance_cell_PMOS
import json







test = transcondutance_cell_PMOS.create_random_individual(1,0.5,1,0.5,1,0.5,"pfet_g5v0d10v5","nfet_g5v0d10v5","nfet_g5v0d10v5",0.35,0.35,"res_high_po_0p35")
test.create_spice_simulation(5,0)
