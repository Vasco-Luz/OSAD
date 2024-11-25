import subprocess
import os
import csv
import pandas as pd
import numpy as np
import re
import sys
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.patches as mpatches
import random
import pygad
from blocks_sky130 import MOS
from skylib1 import sim_comands
import subprocess
from multiprocessing import Pool



script_location = os.path.dirname(os.path.abspath(__file__))




file_path = os.path.join(script_location, "test_c.spice")
# Create MOS instance
M1 = MOS(mos_type="nmos", 
         w_per_finger=1, 
         gate_length=0.15, 
         instance_name="M1", 
         nf=1, 
         m=1, 
         model="nfet_01v8_lvt")
# Pass the correct file path
M1.generate_self_VGS_test_spice(file_path)
sim_comands.ngspice_sim(file_path)