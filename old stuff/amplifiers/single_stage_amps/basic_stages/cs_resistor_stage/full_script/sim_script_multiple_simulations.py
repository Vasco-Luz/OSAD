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
Runs = False #control variable to activate the runs place
Var_simu = False #control variable for var simu
full_mos_corner= False #control variable for full corner
full_RC_corner= False #control varaiblr for full Rc corner
os.system('clear')
while (user_input != 7): #user menu
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
            print("select:full_corner")
            corner_selected = input("Enter the desired MOS corner:")
            os.system('clear')
            match corner_selected:
                case "tt":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected) #write Mos corners in the spice file
                    full_mos_corner == False
                case "ss":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                    full_mos_corner == False
                case "sf":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                    full_mos_corner == False
                case "fs":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                    full_mos_corner == False
                case "ff":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                    full_mos_corner == False
                case "wafer":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                    full_mos_corner == False
                case "leak":
                    sim_comands.write_MOS_corner(spice_Path,corner_selected)
                    full_mos_corner == False
                case "full_corner":
                    Runs = False
                    Var_simu = False
                    full_mos_corner= True
            print("select:tt")
            print("select:hh")
            print("select:ll")
            print("select:hl")
            print("select:lh")
            print("select:full_corner")
            corner_selected = input("Enter the desired Resistor capacitor corner:")
            os.system('clear')
            match corner_selected:
                case "tt":
                    a = "res_typical__cap_typical"
                    sim_comands.write_RC_corner(spice_Path,a) #write Resistor and capacitor corners
                    full_RC_corner == False
                case "hh":
                    a = "res_high__cap_high"
                    sim_comands.write_RC_corner(spice_Path,a)
                    full_RC_corner == False
                case "ll":
                    a = "res_low__cap_low"
                    sim_comands.write_RC_corner(spice_Path,a)
                    full_RC_corner == False
                case "lh":
                    a = "res_low__cap_high"
                    sim_comands.write_RC_corner(spice_Path,a)
                    full_RC_corner == False
                case "hl":
                    a = "res_high__cap_low"
                    sim_comands.write_RC_corner(spice_Path,a)
                    full_RC_corner == False
                case "full_corner":
                    Runs = False
                    Var_simu = False
                    full_RC_corner= True
            print("select:1 for mismatch only")
            print("select:2 for nothing")
            print("select:3 for global variation only")
            print("select:4 for global variation and mismatch")
            corner_selected = int(input("select the mismatch:")) #adds some wanted mismatch
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
            if(variablee != "TEMP"): #checks the existance of the variable, TEMP is a special variable
                var_existance = sim_comands.check_variable(spice_Path,variablee)
                if var_existance == False:
                    break      
                variablee = variablee +"="  
            starting_value = float(input("starting value:")) #variation parameters
            variation = float(input("variation:"))
            finishing_value = float(input("finishing value:"))
            os.system('clear')
            Runs= False
            Var_simu = True
            full_mos_corner= False
            full_RC_corner= False

        case 3:#self explaatory
            corridas = int(input("number of runs:")) #basicly number of runs, good with mismatch parameters switched on
            os.system('clear')
            Runs = True
            Var_simu = False
            full_mos_corner= False
            full_RC_corner= False

        case 4: # VDD will be added eventually, just not now, will work, someday just not now
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
            dc_sim = False
            tran_simu = False
            ac_simu = False
            dc,tran,ac=sim_comands.dectect_simulations(spice_Path) #detects if it exists any spice simulation, ask the user input about the name and the desired variables to store
            save_file_name =input("select the file name: ")
            if (dc is not None):
                save_variables_num_dc =  int(input("How many voltage/currents you want to save in the dc simulation: "))
                saved_variables_dc = []
                print("add the variables the same way when you want to plot them")
                for _ in range(save_variables_num_dc):
                    variable_dc = input("Enter the variable names: ")
                    saved_variables_dc.append(variable_dc)
                sim_comands.add_save_specific(spice_Path,save_file_name+"_dc",saved_variables_dc,save_variables_num_dc,dc)
                dc_sim = True
            if (tran is not None):
                save_variables_num_tran =  int(input("How many voltage/currents you want to save in the tran simulation: "))
                saved_variables_tran = []
                print("add the variables the same way when you want to plot them")
                for _ in range(save_variables_num_tran):
                    variable_tran = input("Enter the variable names: ")
                    saved_variables_tran.append(variable_tran)
                sim_comands.add_save_specific(spice_Path,save_file_name+"_tran",saved_variables_tran,save_variables_num_tran,tran)
                tran_sim = True
            if (ac is not None):
                save_variables_num_ac =  int(input("How many voltage/currents you want to save in the ac simulation: "))
                saved_variables_ac = []
                print("add the variables the same way when you want to plot them")
                for _ in range(save_variables_num_ac):
                    variable_ac = input("Enter the variable names: ")
                    saved_variables_ac.append(variable_ac)
                sim_comands.add_save_specific(spice_Path,save_file_name+"_ac",saved_variables_ac,save_variables_num_ac,ac)
                ac_sim = True
            os.system('clear')

        case 6:
            if (Runs == False) and (Var_simu == False) and (full_mos_corner == False) and (full_RC_corner == False): #single simulation
                sim_comands.ngspice_sim(spice_Path)
                directory = os.getcwd()

                if (dc_sim ==True):
                    save_file = save_file_name +"_dc.txt"
                    txt_full_path_dc = os.path.join(directory,save_file)
                    v = sim_comands.get_dc_control_variable(spice_Path)
                    cvs_full_path_dc =sim_comands.write_single_cvs_file(txt_full_path_dc,saved_variables_dc,save_variables_num_dc,v)
                    sim_comands.plot_2d_simple(cvs_full_path_dc)

                if (tran_sim ==True):
                    save_file = save_file_name +"_tran.txt"
                    txt_full_path_tran = os.path.join(directory,save_file)
                    cvs_full_path_tran =sim_comands.write_single_cvs_file(txt_full_path_tran,saved_variables_tran,save_variables_num_tran,"time")
                    sim_comands.plot_2d_simple(cvs_full_path_tran)

                if (ac_sim ==True):
                    save_file = save_file_name +"_ac.txt"
                    txt_full_path_ac = os.path.join(directory,save_file)
                    cvs_full_path_ac =sim_comands.write_single_cvs_file(txt_full_path_ac,saved_variables_ac,save_variables_num_ac,"frequency")
                    sim_comands.plot_2d_simple(cvs_full_path_ac)

            if (Runs == True) and (Var_simu == False) and (full_mos_corner == False) and (full_RC_corner == False): #with varius runs
                directory = os.getcwd()

                save_file_dc = save_file_name +"_dc.txt"
                data_frame_dc = pd.DataFrame()
                txt_full_path_dc = os.path.join(directory,save_file_dc)

                save_file_tran = save_file_name +"_tran.txt"
                data_frame_tran = pd.DataFrame()
                txt_full_path_tran = os.path.join(directory,save_file_tran)

                save_file_ac = save_file_name +"_ac.txt"
                data_frame_ac = pd.DataFrame()
                txt_full_path_ac = os.path.join(directory,save_file_ac)

                cvs_full_path_dc = save_file_name  + "_dc.csv"
                cvs_full_path_tran = save_file_name  + "_tran.csv"
                cvs_full_path_ac = save_file_name  + "_ac.csv"

                if (dc_sim ==True):
                        v = sim_comands.get_dc_control_variable(spice_Path)

                for i in range(1,corridas+1,1):
                    sim_comands.ngspice_sim(spice_Path)
                    if (dc_sim ==True):
                        data_frame_dc = sim_comands.write_RUNS_cvs_file(txt_full_path_dc,saved_variables_dc,save_variables_num_dc,i,data_frame_dc,v)
                    if (tran_sim ==True):
                        data_frame_tran = sim_comands.write_RUNS_cvs_file(txt_full_path_tran,saved_variables_tran,save_variables_num_tran,i,data_frame_tran,"time")
                    if (ac_sim ==True):
                        data_frame_ac = sim_comands.write_RUNS_cvs_file(txt_full_path_ac,saved_variables_ac,save_variables_num_ac,i,data_frame_ac,"frequency")
                          
                if os.path.exists(cvs_full_path_dc):
                    os.remove(cvs_full_path_dc)
                if os.path.exists(cvs_full_path_tran):
                    os.remove(cvs_full_path_tran)
                if os.path.exists(cvs_full_path_ac):
                    os.remove(cvs_full_path_ac)

                if (dc_sim ==True):
                    data_frame_dc.to_csv(cvs_full_path_dc, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_dc)

                if (tran_sim ==True):
                    data_frame_tran.to_csv(cvs_full_path_tran, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_tran)

                if (ac_sim ==True):
                    data_frame_ac.to_csv(cvs_full_path_ac, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_ac)


            if (Runs == False) and (Var_simu == True) and (full_mos_corner == False) and (full_RC_corner == False): #with a var sweap
                directory = os.getcwd()
                save_file_dc = save_file_name +"_dc.txt"
                data_frame_dc = pd.DataFrame()
                txt_full_path_dc = os.path.join(directory,save_file_dc)
                save_file_tran = save_file_name +"_tran.txt"
                data_frame_tran = pd.DataFrame()
                txt_full_path_tran = os.path.join(directory,save_file_tran)
                save_file_ac = save_file_name +"_ac.txt"
                data_frame_ac = pd.DataFrame()
                txt_full_path_ac = os.path.join(directory,save_file_ac)
                cvs_full_path_dc = save_file_name  + "_dc.csv"
                cvs_full_path_tran = save_file_name  + "_tran.csv"
                cvs_full_path_ac = save_file_name  + "_ac.csv"
                if (dc_sim ==True):
                        v = sim_comands.get_dc_control_variable(spice_Path)
                times = int((finishing_value-starting_value)/variation) + 1
                var_val = starting_value
                z = []
                z.append(var_val)
                sim_comands.write_var_file(save_file_name + ".txt",variablee,starting_value,finishing_value,variation)
                for i in range(1,times+1,1):
                    sim_comands.change_var(spice_Path,variablee,var_val)
                    var_val = var_val + variation
                    z.append(var_val)
                    sim_comands.ngspice_sim(spice_Path)
                    if (dc_sim ==True):
                        data_frame_dc = sim_comands.write_RUNS_cvs_file(txt_full_path_dc,saved_variables_dc,save_variables_num_dc,i,data_frame_dc,v)
                    if (tran_sim ==True):
                        data_frame_tran = sim_comands.write_RUNS_cvs_file(txt_full_path_tran,saved_variables_tran,save_variables_num_tran,i,data_frame_tran,"time")
                    if (ac_sim ==True):
                        data_frame_ac = sim_comands.write_RUNS_cvs_file(txt_full_path_ac,saved_variables_ac,save_variables_num_ac,i,data_frame_ac,"frequency")
                if os.path.exists(cvs_full_path_dc):
                    os.remove(cvs_full_path_dc)
                if os.path.exists(cvs_full_path_tran):
                    os.remove(cvs_full_path_tran)
                if os.path.exists(cvs_full_path_ac):
                    os.remove(cvs_full_path_ac)
                z= z[:-1]  # Remove the last element
                if (dc_sim ==True):
                    data_frame_dc.to_csv(cvs_full_path_dc, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_dc)
                    sim_comands.plot_3d_upgraded(cvs_full_path_dc,z,variablee)
                if (tran_sim ==True):
                    data_frame_tran.to_csv(cvs_full_path_tran, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_tran)
                    sim_comands.plot_3d_upgraded(cvs_full_path_tran,z,variablee)
                if (ac_sim ==True):
                    data_frame_ac.to_csv(cvs_full_path_ac, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_ac)
                    sim_comands.plot_3d_upgraded(cvs_full_path_ac,z,variablee)

            if (Runs == False) and (Var_simu == False) and (full_mos_corner == True) and (full_RC_corner == False): #full corner

                directory = os.getcwd()
                full_corner_m = ["tt","ss","sf","fs","ff"]
                save_file_dc = save_file_name +"_dc.txt"
                data_frame_dc = pd.DataFrame()
                txt_full_path_dc = os.path.join(directory,save_file_dc)
                save_file_tran = save_file_name +"_tran.txt"
                data_frame_tran = pd.DataFrame()
                txt_full_path_tran = os.path.join(directory,save_file_tran)
                save_file_ac = save_file_name +"_ac.txt"
                data_frame_ac = pd.DataFrame()
                txt_full_path_ac = os.path.join(directory,save_file_ac)

                cvs_full_path_dc = save_file_name  + "_dc.csv"
                cvs_full_path_tran = save_file_name  + "_tran.csv"
                cvs_full_path_ac = save_file_name  + "_ac.csv"
                if (dc_sim ==True):
                        v = sim_comands.get_dc_control_variable(spice_Path)
                        
                for i in range(1,len(full_corner_m)+1,1):
                    sim_comands.write_MOS_corner(spice_Path,full_corner_m[i-1]) # writes the corner
                    sim_comands.ngspice_sim(spice_Path)
                    if (dc_sim ==True):
                        data_frame_dc = sim_comands.write_RUNS_cvs_file(txt_full_path_dc,saved_variables_dc,save_variables_num_dc,i,data_frame_dc,v)
                    if (tran_sim ==True):
                        data_frame_tran = sim_comands.write_RUNS_cvs_file(txt_full_path_tran,saved_variables_tran,save_variables_num_tran,i,data_frame_tran,"time")
                    if (ac_sim ==True):
                        data_frame_ac = sim_comands.write_RUNS_cvs_file(txt_full_path_ac,saved_variables_ac,save_variables_num_ac,i,data_frame_ac,"frequency")
                if os.path.exists(cvs_full_path_dc):
                    os.remove(cvs_full_path_dc)
                if os.path.exists(cvs_full_path_tran):
                    os.remove(cvs_full_path_tran)
                if os.path.exists(cvs_full_path_ac):
                    os.remove(cvs_full_path_ac)

                if (dc_sim ==True):
                    data_frame_dc.to_csv(cvs_full_path_dc, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_dc)
                if (tran_sim ==True):
                    data_frame_tran.to_csv(cvs_full_path_tran, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_tran)
                if (ac_sim ==True):
                    data_frame_ac.to_csv(cvs_full_path_ac, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_ac)


            if (Runs == False) and (Var_simu == False) and (full_mos_corner == False) and (full_RC_corner == True): # full resistor corner
                full_corner_RC = ["res_typical__cap_typical","res_high__cap_high","res_low__cap_low","res_low__cap_high","res_high__cap_low"]
                directory = os.getcwd()
                full_corner_m = ["tt","ss","sf","fs","ff"]
                save_file_dc = save_file_name +"_dc.txt"
                data_frame_dc = pd.DataFrame()
                txt_full_path_dc = os.path.join(directory,save_file_dc)
                save_file_tran = save_file_name +"_tran.txt"
                data_frame_tran = pd.DataFrame()
                txt_full_path_tran = os.path.join(directory,save_file_tran)
                save_file_ac = save_file_name +"_ac.txt"
                data_frame_ac = pd.DataFrame()
                txt_full_path_ac = os.path.join(directory,save_file_ac)
                cvs_full_path_dc = save_file_name  + "_dc.csv"
                cvs_full_path_tran = save_file_name  + "_tran.csv"
                cvs_full_path_ac = save_file_name  + "_ac.csv"
                if (dc_sim ==True):
                        v = sim_comands.get_dc_control_variable(spice_Path)

                for i in range(1,len(full_corner_RC)+1,1):
                    sim_comands.write_RC_corner(spice_Path,full_corner_RC[i-1]) # writes the corner
                    sim_comands.ngspice_sim(spice_Path)
                    if (dc_sim ==True):
                        data_frame_dc = sim_comands.write_RUNS_cvs_file(txt_full_path_dc,saved_variables_dc,save_variables_num_dc,i,data_frame_dc,v)
                    if (tran_sim ==True):
                        data_frame_tran = sim_comands.write_RUNS_cvs_file(txt_full_path_tran,saved_variables_tran,save_variables_num_tran,i,data_frame_tran,"time")
                    if (ac_sim ==True):
                        data_frame_ac = sim_comands.write_RUNS_cvs_file(txt_full_path_ac,saved_variables_ac,save_variables_num_ac,i,data_frame_ac,"frequency")
                if os.path.exists(cvs_full_path_dc):
                    os.remove(cvs_full_path_dc)
                if os.path.exists(cvs_full_path_tran):
                    os.remove(cvs_full_path_tran)
                if os.path.exists(cvs_full_path_ac):
                    os.remove(cvs_full_path_ac) 
                if (dc_sim ==True):
                    data_frame_dc.to_csv(cvs_full_path_dc, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_dc)
                if (tran_sim ==True):
                    data_frame_tran.to_csv(cvs_full_path_tran, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_tran)
                if (ac_sim ==True):
                    data_frame_ac.to_csv(cvs_full_path_ac, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_ac)

            if (Runs == False) and (Var_simu == False) and (full_mos_corner == True) and (full_RC_corner == True): # all full corners
                full_corner_m = ["tt","ss","sf","fs","ff"]
                full_corner_RC = ["res_typical__cap_typical","res_high__cap_high","res_low__cap_low","res_low__cap_high","res_high__cap_low"]


                directory = os.getcwd()
                full_corner_m = ["tt","ss","sf","fs","ff"]
                save_file_dc = save_file_name +"_dc.txt"
                data_frame_dc = pd.DataFrame()
                txt_full_path_dc = os.path.join(directory,save_file_dc)
                save_file_tran = save_file_name +"_tran.txt"
                data_frame_tran = pd.DataFrame()
                txt_full_path_tran = os.path.join(directory,save_file_tran)
                save_file_ac = save_file_name +"_ac.txt"
                data_frame_ac = pd.DataFrame()
                txt_full_path_ac = os.path.join(directory,save_file_ac)
                cvs_full_path_dc = save_file_name  + "_dc.csv"
                cvs_full_path_tran = save_file_name  + "_tran.csv"
                cvs_full_path_ac = save_file_name  + "_ac.csv"
                if (dc_sim ==True):
                        v = sim_comands.get_dc_control_variable(spice_Path)
                iii = 1

                for i in range(1,len(full_corner_m)+1,1):
                    sim_comands.write_MOS_corner(spice_Path,full_corner_m[i-1]) # writes the corner
                    for ii in range(1,len(full_corner_RC)+1,1):
                        sim_comands.write_RC_corner(spice_Path,full_corner_RC[ii-1]) # writes the corner
                        sim_comands.ngspice_sim(spice_Path)
                        if (dc_sim ==True):
                            data_frame_dc = sim_comands.write_RUNS_cvs_file(txt_full_path_dc,saved_variables_dc,save_variables_num_dc,i,data_frame_dc,v)
                        if (tran_sim ==True):
                            data_frame_tran = sim_comands.write_RUNS_cvs_file(txt_full_path_tran,saved_variables_tran,save_variables_num_tran,i,data_frame_tran,"time")
                        if (ac_sim ==True):
                            data_frame_ac = sim_comands.write_RUNS_cvs_file(txt_full_path_ac,saved_variables_ac,save_variables_num_ac,i,data_frame_ac,"frequency")
                        iii += 1
                if os.path.exists(cvs_full_path_dc):
                    os.remove(cvs_full_path_dc)
                if os.path.exists(cvs_full_path_tran):
                    os.remove(cvs_full_path_tran)
                if os.path.exists(cvs_full_path_ac):
                    os.remove(cvs_full_path_ac)
                if (dc_sim ==True):
                    data_frame_dc.to_csv(cvs_full_path_dc, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_dc)
                if (tran_sim ==True):
                    data_frame_tran.to_csv(cvs_full_path_tran, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_tran)
                if (ac_sim ==True):
                    data_frame_ac.to_csv(cvs_full_path_ac, index=False)
                    sim_comands.plot_2d_simple(cvs_full_path_ac)

    os.system('clear')

            


                

            
        
        

        
    
