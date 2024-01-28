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
    os.system('clear')
    print("select:1-Quit")
    print("select:2-test VGS sweep at nominal")
    print("select:3-test VDS sweep at nominal")
    print("select:4-test VGS sweep at different VDS")
    print("select:5-test VDS sweep at different VGS")
    print("select:6-test VGS sweep at different TEMP")
    print("select:7-test VDS sweep at different TEMP")
    print("select:8-test VGS sweep at different corners")
    print("select:9-test VDS sweep at different corners")

    user_input = int(input("Enter the desired action: "))#get the param input
    match user_input:
        case 1:
            single_trans.delete_csv_txt(script_directory)
            os.system('clear')
        case 2:
            spice_path = sim_comands.export_netlist(sch_path)
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vgs_sim(spice_path,transistor)
            sim_comands.ngspice_sim(spice_path)
            var =["VGS","ID","GM"]
            data_path = sim_comands.write_single_cvs_file(data_path,var,2,"VGS")
            single_trans.DC_sim_plot_single("Drain Current and transcondutance with VGS sweep",data_path,var)
            single_trans.delete_csv_txt(script_directory)
        case 3:
            spice_path = sim_comands.export_netlist(sch_path)
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vds_sim(spice_path,transistor)
            sim_comands.ngspice_sim(spice_path)
            var =["VGS","ID"]
            data_path = sim_comands.write_single_cvs_file(data_path,var,1,"VGS")
            single_trans.DC_sim_plot_single("Drain Current with VDS sweep",data_path,var)
            single_trans.delete_csv_txt(script_directory)
        case 4:
            spice_path = sim_comands.export_netlist(sch_path)
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vgs_sim(spice_path,transistor)
            Val = transistor.VDS_max/3
            c= Val
            i=1
            dataframe = pd.DataFrame()
            for a in range(0,3,1):
                sim_comands.change_var(spice_path,"VDS",c)
                variables = ["ID","GM"]
                sim_comands.ngspice_sim(spice_path)
                dataframe = sim_comands.write_RUNS_cvs_file(data_path,variables,2,i,dataframe,"V")
                i = i+1
                c= c+Val
            single_trans.DC_sim_plot_mult(dataframe,variables,Val,"VDS","Multiple Drain Current and transcondutance with VGS sweep")
            single_trans.delete_csv_txt(script_directory)
        case 5:
            spice_path = sim_comands.export_netlist(sch_path)
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vds_sim(spice_path,transistor)
            Val = transistor.VGS_max/5
            c= Val
            i=1
            dataframe = pd.DataFrame()
            for a in range(0,5,1):
                sim_comands.change_var(spice_path,"VGS",c)
                variables = ["ID"]
                sim_comands.ngspice_sim(spice_path)
                dataframe = sim_comands.write_RUNS_cvs_file(data_path,variables,1,i,dataframe,"V")
                i = i+1
                c= c+Val
            single_trans.DC_sim_plot_mult(dataframe,variables,Val,"VGS","Multiple Drain Current with VDS sweep")
            single_trans.delete_csv_txt(script_directory)

        case 6:
            spice_path = sim_comands.export_netlist(sch_path)
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vgs_sim(spice_path,transistor)
            Val = [-40,27,125]
            c= Val
            i=1
            dataframe = pd.DataFrame()
            for a in range(0,3,1):
                sim_comands.change_TMP(spice_path,str(Val[a]))
                variables = ["ID","GM"]
                sim_comands.ngspice_sim(spice_path)
                dataframe = sim_comands.write_RUNS_cvs_file(data_path,variables,2,i,dataframe,"V")
                i = i+1
                c= c+Val
            single_trans.DC_sim_plot_mult(dataframe,variables,Val,"TEMP","Multiple Drain Current and transcondutance with TEMP sweep")
            single_trans.delete_csv_txt(script_directory)
        case 7:
            spice_path = sim_comands.export_netlist(sch_path)
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vds_sim(spice_path,transistor)
            Val = [-40,27,125]
            c= Val
            i=1
            dataframe = pd.DataFrame()
            for a in range(0,3,1):
                sim_comands.change_TMP(spice_path,str(Val[a]))
                variables = ["ID"]
                sim_comands.ngspice_sim(spice_path)
                dataframe = sim_comands.write_RUNS_cvs_file(data_path,variables,1,i,dataframe,"V")
                i = i+1
                c= c+Val
            single_trans.DC_sim_plot_mult(dataframe,variables,Val,"TEMP","Multiple Drain Current with TEMP sweep")
            single_trans.delete_csv_txt(script_directory)


        case 8:
            spice_path = sim_comands.export_netlist(sch_path)
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vgs_sim(spice_path,transistor)
            Val = ["tt","ss","ff","sf","fs"]
            c= Val
            i=1
            dataframe = pd.DataFrame()
            for a in range(0,5,1):
                sim_comands.write_MOS_corner(spice_path,Val[a])
                variables = ["ID","GM"]
                sim_comands.ngspice_sim(spice_path)
                dataframe = sim_comands.write_RUNS_cvs_file(data_path,variables,2,i,dataframe,"V")
                i = i+1
                c= c+Val
            single_trans.DC_sim_plot_mult(dataframe,variables,Val,"corner","Multiple Drain Current and transcondutance with different MOS corners")
            single_trans.delete_csv_txt(script_directory)
            

        case 9:
            spice_path = sim_comands.export_netlist(sch_path)
            transistor,instance = single_trans.get_transistor_type(spice_path)
            transistor = single_trans.analyse_transistor(transistor,instance)
            single_trans.prepare_netlist_for_DC_sim(spice_path,transistor)
            data_path = single_trans.add_vds_sim(spice_path,transistor)
            Val = ["tt","ss","ff","sf","fs"]
            c= Val
            i=1
            dataframe = pd.DataFrame()
            for a in range(0,5,1):
                sim_comands.write_MOS_corner(spice_path,Val[a])
                variables = ["ID"]
                sim_comands.ngspice_sim(spice_path)
                dataframe = sim_comands.write_RUNS_cvs_file(data_path,variables,1,i,dataframe,"V")
                i = i+1
                c= c+Val
            single_trans.DC_sim_plot_mult(dataframe,variables,Val,"corner","Multiple Drain Current with different MOS corners")
            single_trans.delete_csv_txt(script_directory)








