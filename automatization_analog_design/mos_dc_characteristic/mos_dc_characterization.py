import sys
import subprocess
import os
import pandas as pd
import numpy as np
from skylib1 import sim_comands
from skylib1 import single_trans
from skylib1 import transistor
current_directory = os.path.dirname(os.path.abspath(__file__))

#core this works
#this case the file i walready know
sch_path = os.path.join(current_directory,"mos.sch")
spice_path = sim_comands.export_netlist(sch_path)
script_directory = os.path.dirname(os.path.abspath(__file__))
#transistor,instance = single_trans.get_transistor_type(spice_path)
#transistor = single_trans.analyse_transistor(transistor,instance)
#single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
#data_path = single_trans.add_vgs_sim(spice_path,transistor)
#sim_comands.ngspice_sim(spice_path)
#var =["VGS","ID","GM"]
#data_path = sim_comands.write_single_cvs_file(data_path,var,2,"VGS")
#single_trans.DC_sim_plot_single("Current and transcondutance VGS sweep",data_path,var)


Runs = False #control variable to activate the runs place
full_mos_corner= False #control variable for full corner
full_RC_corner= False #control varaiblr for full Rc corner
user_input = 0
os.system('clear')
while (user_input != 1): #user menu
    print("select:1-Quit")
    print("select:2-test VGS sweep at nominal")
    print("select:3-test VDS sweep at nominal")
    print("select:4-test VGS sweep at different VDS")

    user_input = int(input("Enter the desired action: "))#get the param input
    match user_input:
        case 1:
            single_trans.delete_csv_txt(script_directory)
        case 2:
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vgs_sim(spice_path,transistor)
            sim_comands.ngspice_sim(spice_path)
            var =["VGS","ID","GM"]
            data_path = sim_comands.write_single_cvs_file(data_path,var,2,"VGS")
            single_trans.DC_sim_plot_single("Current and transcondutance VGS sweep",data_path,var)
            single_trans.delete_csv_txt(script_directory)
        case 3:
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vds_sim(spice_path,transistor)
            sim_comands.ngspice_sim(spice_path)
            var =["VGS","ID"]
            data_path = sim_comands.write_single_cvs_file(data_path,var,1,"VGS")
            single_trans.DC_sim_plot_single("Current and transcondutance VGS sweep",data_path,var)
            single_trans.delete_csv_txt(script_directory)

        case 4:
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vgs_sim(spice_path,transistor)
            Val = transistor.VDS_max/5
            c= Val
            i=1
            dataframe = pd.DataFrame()
            for a in range(0,5,1):
                sim_comands.change_var(spice_path,"VDS",c)
                variables = ["ID","GM"]
                sim_comands.ngspice_sim(spice_path)
                dataframe = sim_comands.write_RUNS_cvs_file(data_path,variables,2,i,dataframe,"V")
                i = i+1
                c= c+Val
            single_trans.DC_sim_plot_single_mult(dataframe)
            




