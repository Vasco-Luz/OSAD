import sys
import subprocess
import os
import pandas as pd
import numpy as np
from skylib1 import sim_comands







#start write the file name in the terminal
file_Path = sim_comands.get_file_path() #gets the file path
user_input = 0
spice_Path =sim_comands.export_netlist(file_Path) #exports the spice netlist from the schematic file and return the location o the file
print(spice_Path)
while (user_input != 7):
    print("select:1-to change process corner")
    print("select:2-to choose a variable sweep")
    print("select:3-to choose the number of runs")
    print("select:4-to choose if VDD or TEMP have a gaussean variation")
    print("select:5-select the name of the variables to be stored and the file name")
    print("select:6-to simulate")
    print("select:7-to quit")
    user_input = int(input("Enter the desired action: "))#get the param input

    match user_input:
        case 1:
            print("select:tt")
            print("select:ss")
            print("select:sf")
            print("select:fs")
            print("select:ff")
            print("select:wafer does not work")
            print("select:leak")
            print("select:full corner i am working on it")
            corner_selected = input("Enter the desired MOS corner:")
            match corner_selected:
                case "tt":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                case "ss":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                case "sf":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                case "fs":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                case "ff":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                case "wafer":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                case "leak":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
            print("select:tt")
            print("select:hh")
            print("select:ll")
            print("select:hl")
            print("select:lh")
            print("select:all corners i am still working on it")
            corner_selected = input("Enter the desired Resistor capacitor corner:")
            match corner_selected:
                case "tt":
                    a = "res_typical__cap_typical"
                    sim_comands.write_RC_corner(spice_Path,a)
                case "hh":
                    a = "res_high__cap_high"
                    sim_comands.write_RC_corner(spice_Path,a)
                case "ll":
                    a = "res_low__cap_low"
                    sim_comands.write_RC_corner(spice_Path,a)
                case "lh":
                    a = "res_low__cap_high"
                    sim_comands.write_RC_corner(spice_Path,a)
                case "hl":
                    a = "res_high__cap_low"
                    sim_comands.write_RC_corner(spice_Path,a)
                    
            print("select:1 for mismatch only")
            print("select:2 for nothing")
            print("select:3 for global variation only")
            print("select:4 for global variation and mismatch")
            corner_selected = int(input("select the mismatch:"))
            match corner_selected:
                case 1:
                    sim_comands.change_mismatch(spice_Path,"1")
                    sim_comands.change_global(spice_Path,"0")
                case 2:
                    sim_comands.change_mismatch(spice_Path,"0")
                    sim_comands.change_global(spice_Path,"0")
                case 3:
                    a=0
                    sim_comands.change_mismatch(spice_Path,"0")
                    sim_comands.change_global(spice_Path,"1")
                case 4:
                    a=0
                    sim_comands.change_mismatch(spice_Path,"1")
                    sim_comands.change_global(spice_Path,"1")

                

            
        
        

        
    
