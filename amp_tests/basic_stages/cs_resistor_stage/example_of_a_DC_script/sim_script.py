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
Runs = False
Var_simu = False
full_mos_corner= False
full_RC_corner= False
os.system('clear')
while (user_input != 7):
    print("select:1-to change process corner")
    print("select:2-to choose a variable sweep")
    print("select:3-to choose the number of runs")
    print("select:4-to choose if VDD or TEMP have a gaussean variation")
    print("select:5-select the name of the variables to be stored and the file name")
    print("select:6-to simulate")
    print("select:7-to quit")
    user_input = int(input("Enter the desired action: "))#get the param input
    os.system('clear')
    match user_input:
        case 1:
            print("select:tt")
            print("select:ss")
            print("select:sf")
            print("select:fs")
            print("select:ff")
            print("select:wafer does not work")
            print("select:leak")
            print("select:full_corner i am working on it")
            corner_selected = input("Enter the desired MOS corner:")
            os.system('clear')
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
                case "full_corner":
                    Runs = False
                    Var_simu = False
                    full_mos_corner= True
            print("select:tt")
            print("select:hh")
            print("select:ll")
            print("select:hl")
            print("select:lh")
            print("select:full_corner i am still working on it")
            corner_selected = input("Enter the desired Resistor capacitor corner:")
            os.system('clear')
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
                case "full_corner":
                    Runs = False
                    Var_simu = False
                    full_RC_corner= True
            print("select:1 for mismatch only")
            print("select:2 for nothing")
            print("select:3 for global variation only")
            print("select:4 for global variation and mismatch")
            corner_selected = int(input("select the mismatch:"))
            os.system('clear')
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
        case 2:# self explanatory
            print("for simplification use the variable names as w,l or Vsomething, this wont create no unecessary errors")
            variablee = input("what variable to sweep:")
            if(variablee != "TEMP"):
                var_existance = sim_comands.check_variable(spice_Path,variablee)
                if var_existance == False:
                    break      
                variablee = variablee +"="  
            starting_value = int(input("starting value:"))
            variation = int(input("variation:"))
            finishing_value = int(input("finishing value:"))
            os.system('clear')
            Runs= False
            Var_simu = True
            full_mos_corner= False
            full_RC_corner= False
        case 3:#self explaatory
            corridas = int(input("number of runs:"))
            os.system('clear')
            Runs = True
            Var_simu = False
            full_mos_corner= False
            full_RC_corner= False
        case 4: # VDD will be added eventually, just not now
            print("select:1 for a fixed Temp value")
            print("select:2 for a gaussean Temp variation")
            print("select:3 for nothing")
            corner = int(input("select option:"))
            os.system('clear')
            match corner:
                case 1:
                    Temperature = input("Temperature value:")
                    sim_comands.change_TMP(spice_Path,Temperature)
                    Temp_gauss = False
                case 2:
                    Temperature_Min = int(input("Minimum Temperature:"))
                    Temperature_Max = int(input("Maximum Temperature:"))
                    Gaussian_variable = int(input("gaussean variation:"))
                    Temp_gauss = True
        case 5:
            save_file_name =input("select the file name: ")
            save_variables_num = int(input("How many voltage/currents you want to save: "))
            saved_variables = []
            print("add the variables the same way when you want to plot them")
            for _ in range(save_variables_num):
                variable = input("Enter the variable names: ")
                saved_variables.append(variable)
            sim_comands.add_save(spice_Path,save_file_name,saved_variables,save_variables_num)
            os.system('clear')
        case 6:
            if (Runs == False) and (Var_simu == False) and (full_mos_corner == False) and (full_RC_corner == False): #single simulation
                sim_comands.ngspice_sim(spice_Path)
                save_file = save_file_name +".txt"
                directory = os.getcwd()
                txt_full_path = os.path.join(directory,save_file)
                cvs_full_path =sim_comands.write_single_cvs_file(txt_full_path,saved_variables,save_variables_num)
                sim_comands.plot_2d_simple(cvs_full_path)

            if (Runs == True) and (Var_simu == False) and (full_mos_corner == False) and (full_RC_corner == False): #single simulation
                save_file = save_file_name +".txt"
                directory = os.getcwd()
                txt_full_path = os.path.join(directory,save_file)
                data_frame = pd.DataFrame()
                cvs_full_path = save_file_name + ".csv"
                for i in range(1,corridas+1,1):
                    sim_comands.ngspice_sim(spice_Path)
                    data_frame = sim_comands.write_RUNS_cvs_file(txt_full_path,saved_variables,save_variables_num,i,data_frame)     
                if os.path.exists(cvs_full_path):
                    os.remove(cvs_full_path)
                data_frame.to_csv(cvs_full_path, index=False)
                sim_comands.plot_2d_simple(cvs_full_path)            


            if (Runs == False) and (Var_simu == True) and (full_mos_corner == False) and (full_RC_corner == False):
                times = int((finishing_value-starting_value)/variation) + 1
                var_val = starting_value
                save_file = save_file_name +".txt"
                directory = os.getcwd()
                txt_full_path = os.path.join(directory,save_file)
                data_frame = pd.DataFrame()
                cvs_full_path = save_file_name + ".csv"
                z = []
                z.append(var_val)

                for i in range(1,times+1,1):
                    sim_comands.change_var(spice_Path,variablee,var_val)
                    var_val = var_val + variation
                    z.append(var_val)
                    sim_comands.ngspice_sim(spice_Path)
                    data_frame = sim_comands.write_RUNS_cvs_file(txt_full_path,saved_variables,save_variables_num,i,data_frame) 
                if os.path.exists(cvs_full_path):
                    os.remove(cvs_full_path)
                z= z[:-1]  # Remove the last element
                data_frame.to_csv(cvs_full_path, index=False)
                sim_comands.plot_2d_simple(cvs_full_path)     
                sim_comands.plot_3d_upgraded(cvs_full_path,z,variablee)
            

    os.system('clear')

            


                

            
        
        

        
    
