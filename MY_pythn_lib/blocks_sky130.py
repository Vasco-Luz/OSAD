
from skylib1 import automation_support
from skylib1 import sim_comands
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
import re


#class for MOS
class MOS:
    def __init__(self, mos_type: str, w_per_finger: float, gate_length: float, instance_name: str, nf: int, m: int,model: str):
        self.mos_type = mos_type
        self.instance_name=instance_name
        self.w_per_finger=w_per_finger
        self.gate_length=gate_length
        self.nf=nf
        self.m=m
        self.model=model
        self.vth = None
        self.vds = None
        self.vgs = None
        self.ids = None

    def transistor_OV_and_current(self, file_path):
        # Load the data from the file
        data = np.loadtxt(file_path)
        # Extract the desired columns
        self.vth = data[1]  # Second column (index 1)
        self.vds = data[3]  # Fourth column (index 3)
        self.vgs = data[5]  # Sixth column (index 5)
        self.ids = data[7]  # Eighth column (index 7)
        return self
    
    def generate_self_VGS_test_spice(self, file_path,process):
        # Open a file to write the SPICE netlist
        with open(file_path, 'w') as f:
            f.write(f"** SPICE test for {self.instance_name} \n")
            f.write("**.subckt test\n")
            f.write(
            f"XM1 net3 net1 net4 net2 sky130_fd_pr__{self.model} "
            f"L=L1 W='W1 * nf1 ' nf=nf1 "            f"ad='int((nf+1)/2) * W / nf * 0.29'\n")
            f.write(
            f"+ as='int((nf+2)/2) * W / nf * 0.29' "
            f"pd='2*int((nf+1)/2) * (W / nf + 0.29)' "
            f"ps='2*int((nf+2)/2) * (W / nf + 0.29)'\n")
            f.write(
            f"+ nrd='0.29 / W ' nrs='0.29 / W ' "
            f"sa=0 sb=0 sd=0 mult=mult1 m=mult1\n")

            f.write("VGS net1 GND 0.9\n")
            f.write("VB net2 GND 0\n")
            f.write("VDD net3 GND V_supply\n")
            f.write("VSS net4 GND V_neg\n")
            f.write(".TEMP 27\n")

            f.write(".options savecurrents\n")
            f.write(".param V_supply=1.8\n")
            f.write(".param V_neg=0\n")
            f.write(f".param L1 = {self.gate_length}\n")
            f.write(f".param W1 = {self.w_per_finger}\n")
            f.write(f".param nf1={self.nf}\n")
            f.write(f".param mult1={self.m}\n")
            f.write(".control\n")
            f.write("dc VGS 0 1.8 0.0001\n")
            f.write("plot @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]\n")
            f.write(f"wrdata sim_data_{process}.csv @m.xm1.msky130_fd_pr__{self.model}[id] deriv(@m.xm1.msky130_fd_pr__{self.model}[id]) @m.xm1.msky130_fd_pr__{self.model}[vth]\n")
            f.write("save all\n")
            f.write(".endc\n")
            f.write(f".lib {os.environ.get('PDK_ROOT')}/{os.environ.get('PDK')}/libs.tech/combined/sky130.lib.spice tt\n")
            f.write(".GLOBAL GND\n")
            f.write(".end\n")

        



        
        






#class for Resistors
class Resistor:
    def __init__(self,res_w: float,res_l: float,res_model: str, res_m: int):
        self.res_w = res_w 
        self.res_l = res_l
        self.res_model = res_model
        self.res_m = res_m


#Basic structure, the same structure used in VA001 bias for 5V
#
#
#
class transcondutance_cell_v1_5V:

    #self initiation function
    def __init__(self, W_M_1_2: float, L_M_1_2: float, m_M_1_2: int, W_M_3_4: float, L_M_3_4: float, m_M_3_4: int, W_M_5_6: float,
                  L_M_5_6: float, m_M_5_6: int,nf_M_1_2: int, nf_M_3_4: int, nf_M_5_6: int,P_model: str,N_upper_model:str,N_down_model:str,
                  res_1_w : float,res_1_l: float,res_1_model: str,res_1_m: int ):
        self.W_M_1_2 = W_M_1_2
        self.L_M_1_2 = L_M_1_2
        self.m_M_1_2 = m_M_1_2
        self.W_M_3_4 = W_M_3_4
        self.L_M_3_4 = L_M_3_4
        self.m_M_3_4 = m_M_3_4
        self.W_M_5_6 = W_M_5_6
        self.L_M_5_6 = L_M_5_6
        self.m_M_5_6 = m_M_5_6
        self.nf_M_1_2 = nf_M_1_2
        self.nf_M_3_4 = nf_M_3_4
        self.nf_M_5_6 = nf_M_5_6
        self.P_model = P_model
        self.N_upper_model = N_upper_model
        self.N_down_model  = N_down_model
        self.res_1_w = res_1_w
        self.res_1_l = res_1_l 
        self.res_1_model = res_1_model
        self.res_1_m = res_1_m  
    
 
        self.mos1 = MOS(mos_type="Pmos", w_per_finger=W_M_1_2, gate_length=L_M_1_2, instance_name="M1", nf=nf_M_1_2, m=m_M_1_2, model=P_model)
        self.mos2 = MOS(mos_type="Pmos", w_per_finger=W_M_1_2, gate_length=L_M_1_2, instance_name="M2", nf=nf_M_1_2, m=m_M_1_2, model=P_model)
        self.mos3 = MOS(mos_type="Nmos", w_per_finger=W_M_3_4, gate_length=L_M_3_4, instance_name="M3", nf=nf_M_3_4, m=m_M_3_4, model=N_upper_model)
        self.mos4 = MOS(mos_type="Nmos", w_per_finger=W_M_3_4, gate_length=L_M_3_4, instance_name="M4", nf=nf_M_3_4, m=m_M_3_4, model=N_upper_model)
        self.mos5 = MOS(mos_type="Nmos", w_per_finger=W_M_5_6, gate_length=L_M_5_6, instance_name="M5", nf=nf_M_5_6, m=m_M_5_6, model=N_down_model)
        self.mos6 = MOS(mos_type="Nmos", w_per_finger=W_M_5_6, gate_length=L_M_5_6, instance_name="M6", nf=nf_M_5_6, m=m_M_5_6, model=N_down_model)
        self.res1= Resistor(res_w=res_1_w,res_l=res_1_l,res_model=res_1_model,res_m=res_1_m)




    #create random individual for population
    def create_random_individual(W_min_pmos_val:float,L_min_pmos_val:float,W_min_nmos_midle_val:float):
        W_M_1_2 = automation_support.random_value(W_min_pmos_val,20,0.1)
        L_M_1_2 = automation_support.random_value(L_min_pmos_val,10,1)
        m_M_1_2 = automation_support.random_value(2,80,2)


        W_M_3_4 = automation_support.random_value(W_min_nmos_midle_val,20,0.1)
        L_M_3_4 = automation_support.random_value(0.5,10,1)
        m_M_3_4 = automation_support.random_value(1,100,0)
        W_M_5_6 = automation_support.random_value(1,100,1)
        L_M_5_6 = automation_support.random_value(0.5,10,1)
        m_M_5_6 = automation_support.random_value(1,100,0)
        R1 = automation_support.random_value(1000,50000,0)
        return transcondutance_cell_v1_5V(W_M_1_2, L_M_1_2, m_M_1_2, W_M_3_4, L_M_3_4, m_M_3_4, W_M_5_6, L_M_5_6, m_M_5_6, R1)
    
