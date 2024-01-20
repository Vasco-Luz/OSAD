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


class sim_comands:

    def get_file_path(): #gets the file path and checks if the file exists in the current directory
        if len(sys.argv)>1:
            file_name = sys.argv[1]
        extension = ".sch"
        if not file_name.endswith(extension):#checks if file name is given with .sch extension
            file_name += extension #adds the .sch extention
        directory = os.getcwd() #gets current directory
        full_path = os.path.join(directory, file_name)
        if os.path.exists(full_path):
            print(full_path)
            return full_path
        else:
            print("non existant file")
            sys.exit(1)
            
    def export_netlist(file_path): #exports the spice netlist and returns the location of the file
        directory_path = os.path.dirname(file_path)
        file_name = os.path.basename(file_path)
        file_name_without_extension = os.path.splitext(os.path.basename(file_path))[0]
        spice_file_name = file_name_without_extension + ".spice"
        full_path_spice_file = os.path.join(directory_path,spice_file_name)
        xschem_command = f'xschem -n {file_path} -o {directory_path} --no_x --quit' #comando para escrever o spice no x nao abre o xschem, --quit sai do xschem
        subprocess.run(xschem_command, shell=True)#realização do comando
        return full_path_spice_file

    def write_MOS_corner(spice_path,corner): #writes the MOS corner in the file in the spice path
        target_text = "sky130A/libs.tech/ngspice/corners/"
        corner = corner + ".spice"
        new_content = []
        a = 0

        with open(spice_path, "r") as file:
            for line in file:
                if target_text in line:
                    if a ==0:
                        parts = line.split(target_text)
                        modified_line = parts[0] + target_text + corner + "\n"
                # Replace the text after the target_text with corner
                        new_content.append(modified_line)
                        a = a+1
                    else:
                        new_content.append(line)
                else:
                    new_content.append(line)

        with open(spice_path, "w") as file:
            file.writelines(new_content)


    def write_RC_corner(spice_path,corner): #writes the RC corner in the file in the spice path
        target_text ="sky130A/libs.tech/ngspice/r+c/"
        corner1 = corner + ".spice"
        corner2 = corner + "__lin.spice"
        new_content = []
        a=0
        with open(spice_path, "r") as file:
            for line in file:
                if target_text in line:
                    parts = line.split(target_text)
                    if a==0:
                        modified_line1 = parts[0] + target_text + corner1 + "\n"
                        new_content.append(modified_line1)
                        a= a+1
                    if a==1:
                        modified_line2 = parts[0] + target_text + corner2 + "\n"
                        # Replace the text after the target_text with corner
                        new_content.append(modified_line2)
                        a = a+1
                    
                else:
                    new_content.append(line)

        with open(spice_path, "w") as file:
            file.writelines(new_content)
            


    def change_mismatch(spice_path,action): #changes mismatch parameter
        target_text ="mc_mm_switch="
        new_content = []
        with open(spice_path, "r") as file:
            for line in file:
                if target_text in line:
                    parts = line.split(target_text)
                    modified_line = parts[0] + target_text + action + "\n"
                    new_content.append(modified_line)
                else:
                    new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)


    
    def change_global(spice_path,action): #changes global variation parameter
        target_text ="mc_pr_switch="
        new_content = []
        with open(spice_path, "r") as file:
            for line in file:
                if target_text in line:
                    parts = line.split(target_text)
                    modified_line = parts[0] + target_text + (action) + "\n"
                    new_content.append(modified_line)
                else:
                    new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)
                


    def check_variable(spice_path,variable): # checks the existance of the variable
        target_text = variable + "="
        with open(spice_path, "r") as file:
            for line in file:
                if target_text in line:
                    print("variable exists")
                    return True
        print("vaiable doenst exist")
        return False
    




    def get_dc_control_variable(spice_path):
        in_block = False
        with open(spice_path, "r") as file:
            for line in file:
                # Check if we're inside the .control block
                if line.strip() == ".control":
                    in_block = True
                    continue
                    # Check if we're inside the .endc block
                if line.strip() == ".endc":
                    in_block = False
                    break  # Exit the loop since we've found the end of the .control block
                # If we're inside the .control block, check for DC simulation lines
                if in_block:
                    if line.strip().startswith("dc"):
                        v = line.strip().split()[1]
        return(v)


    def change_TMP(spice_path,temp):# changes the Temperature in the spice file
        target_text = ".TEMP"
        new_content = []
        with open(spice_path, "r") as file:
            for line in file:
                if target_text in line:
                    modified_line =target_text + " " + temp + "\n"
                    new_content.append(modified_line)
                else:
                    new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)


    def add_save(spice_path,file_name,variables,num): #creates a save data
        directory = os.getcwd() #gets current directory
        target_text = ".endc"
        file_name = file_name + ".txt"
        full_file_path = os.path.join(directory,file_name)
        new_content = []

        with open(spice_path, "r") as file:
            for line in file:
                if target_text in line:
                    modified_line ="wrdata" +" "+ full_file_path
                    for a in range(0,num,1):
                        modified_line = modified_line + " " + variables[a]

                    modified_line = modified_line +"\n"
                    modified_line2 = target_text + "\n"
                    new_content.append(modified_line)
                    new_content.append(modified_line2)
                else:
                    new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)

        if os.path.exists(full_file_path):
            os.remove(full_file_path)

        

    def ngspice_sim(spice_path):#basic ngspice simulation
        ngspice_command = f'ngspice -b {spice_path}' #comando da simulação batch com o ngspice
        subprocess.run(ngspice_command, shell=True)#simulação


    def write_single_cvs_file(txt_path,variables,num,name):
        with open(txt_path, 'r') as txt_file:
            lines = txt_file.readlines()
        data = []

        for line in lines:
            # Split each line into columns using whitespace as the delimiter
            columns = line.strip().split()
            # Append the columns as a list to the data list
            data.append(columns)

        data = pd.DataFrame(data)

        columns_to_drop = data.columns[2::2]
        # Drop the specified columns
        data.drop(columns=columns_to_drop, inplace=True)
        headers = [name]
        for a in range(0,num,1):
            headers.append(variables[a])
        data.columns = headers

        txt_name = os.path.basename(txt_path)
        cvs_name = (os.path.splitext(txt_path)[0]) + ".csv"
        cvs_full_path = os.path.join(os.getcwd(),cvs_name)
        if os.path.exists(cvs_full_path):
            os.remove(cvs_full_path)
        data.to_csv(cvs_full_path, index=False)
        return cvs_full_path




    def write_RUNS_cvs_file(txt_path,variables,num,i,data_frame,name):
        with open(txt_path, 'r') as txt_file:
            lines = txt_file.readlines()
        data = []
        headers = []
        for line in lines:
            # Split each line into columns using whitespace as the delimiter
            columns = line.strip().split()
            # Append the columns as a list to the data list
            data.append(columns)
        data = pd.DataFrame(data)
        columns_to_drop = data.columns[2::2]
        data.drop(columns=columns_to_drop, inplace=True)
        if(i ==1):
            headers = [name]
        if (i >1):
            data = data.drop(data.columns[0], axis=1)
        for a in range(0,num,1):
            headers.append(variables[a])
        print(headers)
        data.columns = headers
        data_frame = pd.concat([data_frame, data], axis=1)
        return data_frame
    


    def write_var_file(txt_path,variable_name,start,finish,variation):
        new_name = txt_path + "_" + variable_name
        directory = os.getcwd()
        txt_full_path = os.path.join(directory,new_name)
        times = int((finish-start)/variation)
        with open(txt_full_path,"w") as output_file:
            output_file.write(str(variable_name) + "\n")
            for a in range(0,times+1,1):
                val = start + variation * a
                output_file.write(str(val) + "\n")



    def add_save_specific(spice_path,file_name,variables,num,sim): #creates a save data
        directory = os.getcwd() #gets current directory
        target_text = ' '.join(sim)
        file_name = file_name + ".txt"
        full_file_path = os.path.join(directory,file_name)
        new_content = []


        with open(spice_path, "r") as file:
            for line in file:
                if target_text in line:
                    modified_line ="wrdata" +" "+ full_file_path
                    for a in range(0,num,1):
                        modified_line = modified_line + " " + variables[a]
                    
                    modified_line = modified_line +"\n"
                    modified_line2 = target_text + "\n"
                    new_content.append(modified_line2)
                    new_content.append(modified_line)
                else:
                    new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)

        if os.path.exists(full_file_path):
            os.remove(full_file_path)
        



    def add_save_automn(spice_path,file_name,variable,sim): #creates a save data
        directory = os.getcwd() #gets current directory
        file_name = file_name + ".txt"
        full_file_path = os.path.join(directory,file_name)
        new_content = []
        new_line = "wrdata " + full_file_path +" "+ variable
        in_block = False
        with open(spice_path, "r") as file:
            for line in file:
                # Check if we're inside the .control block
                if line.strip() == ".control":
                    in_block = True
                # Check if we're inside the .endc block
                if line.strip() == ".endc":
                    in_block = False
                # If we're inside the .control block and find the dc line
                if in_block and line.strip().startswith(sim):
                # Append the original dc line
                    new_content.append(line)
                # Write your additional content after the dc line
                    new_content.append(new_line)
                else:
                    new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)
        return full_file_path



    def remove_sim_save(spice_path,sim):
        new_content = []
        in_block = False
        with open(spice_path, "r") as file:
            for line in file:
                # Check if we're inside the .control block
                if line.strip() == ".control":
                    in_block = True
                # Check if we're inside the .endc block
                if line.strip() == ".endc":
                    in_block = False
                # Skip the dc and wrdata lines
                if in_block and (line.strip().startswith(sim) or line.strip().startswith("wrdata")):
                    continue
                new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)






    def dectect_simulations(spice_path):
        dc_simu = []
        tran_simu=[]
        ac_simu = []
        noise_simu = []
        in_block = False
        with open(spice_path, "r") as file:
            for line in file:
                # Check if we're inside the .control block
                if line.strip() == ".control":
                    in_block = True
                    continue
                    # Check if we're inside the .endc block
                if line.strip() == ".endc":
                    in_block = False
                    break  # Exit the loop since we've found the end of the .control block
                # If we're inside the .control block, check for DC simulation lines
                if in_block:
                    if line.strip().startswith("dc"):
                        dc_simu.append(line.strip())
                    if line.strip().startswith("tran"):
                        tran_simu.append(line.strip())
                    if line.strip().startswith("ac"):
                        ac_simu.append(line.strip())
                    if line.strip().startswith("noise"):
                        noise_simu.append(line.strip())

        return dc_simu,tran_simu,ac_simu



    

    def plot_2d_simple(csv_file_path):
        dataframe = pd.read_csv(csv_file_path)
        column_names = dataframe.columns.tolist()
        data_matrix = dataframe.values.tolist()
        data_matrix = np.array(data_matrix)
        x_column = data_matrix[:, 0]  # First column as x
        plt.figure(figsize=(8, 6))
        for i in range(1, len(column_names)):
            y_column = data_matrix[:, i]  # Subsequent columns as y
            plt.plot(x_column, y_column, label=column_names[i])
        if (column_names[0] == "frequency"):
            plt.xscale('log')  # Set x-axis to logarithmic scale
        plt.xlabel(column_names[0])  # x-axis label is the first column name
        plt.ylabel("Y-Values")  # y-axis label for all y-variables
        plt.title(f"Plot of Y-Values vs. {column_names[0]}")
        plt.legend()
        plt.grid(True)
        plt.show()



    def change_var(spice_path,var_name,value):
        new_content = []
        with open(spice_path, "r") as file:
            for line in file:
                if var_name in line:
                    parts = line.split(var_name)
                    modified_line = parts[0] + var_name +" " + str(value) + "\n"
                    new_content.append(modified_line)
                else:
                    new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)

    
    def plot_3d_upgraded(csv_file_path, z_var, z_name):
        dataframe = pd.read_csv(csv_file_path)
        column_names = dataframe.columns.tolist()
        data_matrix = dataframe.values
    
        num_columns = data_matrix.shape[1] - 1
        num_of_plots = int(num_columns / len(z_var))
        #z_var = np.array(z_var)

        x_column = data_matrix[:, 0]
        num_columns_to_add = int(num_columns/num_of_plots)
        x_column = np.tile(x_column, (num_columns_to_add, 1)).T
        #x_column = x_column.T

        for i in range(1, num_of_plots + 1,1):
            y_column = data_matrix[:, i::num_of_plots]
            #y_column = y_column.T  # Com
            fig = plt.figure()
            ax = fig.add_subplot(111, projection='3d')
            if (column_names[0] == "frequency"):
                x_column = np.log10(x_column)
                num_ticks_per_decade = 20  # Adjust this to your preference
                min_x = np.floor(x_column.min())
                max_x = np.ceil(x_column.max())
                num_decades = int((max_x - min_x) + 1)
                total_ticks = num_ticks_per_decade * num_decades
                tick_positions = np.logspace(min_x, max_x, total_ticks)
                tick_labels = [f'{val:.2e}' for val in tick_positions]
            ax.plot_surface(x_column, z_var, y_column)
            ax.grid(True)
            ax.set_xlabel(column_names[0], fontsize=12, fontweight='bold')
            ax.set_ylabel(z_name, fontsize=12, fontweight='bold')  # Change to a suitable label
            ax.set_zlabel(column_names[i], fontsize=12, fontweight='bold')
            ax.set_title(f'Data Plot {i}')
            plt.show()



    

    def get_spice_sch(file_name,file_enviorement):
        a = file_name + ".sch" #get sch name
        spice_file = file_name + ".spice" #get spice netlist name
        sch_file = os.environ.get(file_enviorement) #gets the path to the file in envirement
        sch_file = os.path.join(sch_file, a)#sch path
        if os.path.exists(sch_file): #checks if files exists
            return(sch_file,spice_file)
        else:
            print("ERROR: sch not found in that directory") # error
            sys.exit(1)


    def netlist_export(sch_path,enviorement_var):
        spice_path = os.environ.get(enviorement_var) # caminho para ele escrever o spice file
        xschem_command = f'xschem -n {sch_path} -o {spice_path} --no_x --quit' #comando para escrever o spice no x nao abre o xschem, --quit sai do xschem
        subprocess.run(xschem_command, shell=True)#realização do comando


    def variable_detector(spice_path):
        variables =[]
        resistance_var = []
        width_var = []
        lenght_var =[]
        capacitance_var =[]
        in_block = False
        with open(spice_path, "r") as file:
            for line in file:
                # Check if we're inside the .control block
                if line.strip() == ".control":
                    in_block = True
                    continue
                    # Check if we're inside the .endc block
                if line.strip() == ".endc":
                    in_block = False
                    break  # Exit the loop since we've found the end of the .control block
                # If we're inside the .control block, check for DC simulation lines
                if in_block:
                    if line.strip().startswith(".param"):
                        variables.append(line.strip().split()[1])
        for i in range(0,len(variables)-1,1):#remove VDD from sweaping variables
            if (variables[i]=="VDD"):
                variables.pop(i)
            if (variables[i].startswith("W")):
                width_var.append(variables[i])
            if (variables[i].startswith("L")):
                lenght_var.append(variables[i])
            if (variables[i].startswith("R")):
                resistance_var.append(variables[i])
            if (variables[i].startswith("C")):
                capacitance_var.append(variables[i])
            if (variables[i]=="vin"):
                variables.pop(i)
        #return(width_var,lenght_var,resistance_var,capacitance_var)
        return variables
    
    def add_dc_simulation(spice_path,location,variation,initial,final,sweep_variable):
        directory = os.getcwd() #gets current directory
        new_content = []
        modified_line =""

        with open(spice_path, "r") as file:
            for line in file:
                if location in line:
                    modified_line ="dc " + str(sweep_variable) +" "+ str(initial) +" " + str(final) + " " + str(variation) 
                    modified_line = modified_line +"\n"
                    modified_line2 = location +"\n"
                    new_content.append(modified_line2)
                    new_content.append(modified_line)
                else:
                    new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)
        return modified_line
    
    def add_ac_simulation(spice_path,location,decades,initial_freq,final_freq):
        directory = os.getcwd() #gets current directory
        new_content = []
        modified_line =""

        with open(spice_path, "r") as file:
            for line in file:
                if location in line:
                    modified_line ="ac " + "dec" +" "+ decades +" " + initial_freq + " " + final_freq 
                    modified_line = modified_line +"\n"
                    modified_line2 = location +"\n"
                    new_content.append(modified_line2)
                    new_content.append(modified_line)
                else:
                    new_content.append(line)
        with open(spice_path, "w") as file:
            file.writelines(new_content)
        return modified_line


                     
class transistor:
    def __init__(self,transistor_type,VGS_max,VDS_max,type_t,instance):
        self.transistor_type = transistor_type
        self.VGS_max = VGS_max
        self.VDS_max = VDS_max
        self.type = type_t
        self.instance = instance

class single_trans:
    def get_transistor_type(spice_file_path):
        print(spice_file_path)
        with open(spice_file_path, 'r') as spice_file:
            for line_number, line in enumerate(spice_file, start=1):
                if line.startswith('XM'):
                    # Extract the NFET type using regex
                    match = re.search(r'sky130_fd_pr__(\w+)', line)
                    match2 = re.search(r'XM(\d+)', line)
                    if match:
                        transistor_type = match.group(1)
                        instance = "XM" + match2.group(1)
                        return transistor_type,instance
    
    def analyse_transistor(transistor_name,instance):
        parts = transistor_name.split('_')
        vth = "none"
        if len(parts) >= 1:
            transistor_type = parts[0] #transistor type
        if len(parts) >= 2:
            second_part = parts[1]
        if len(parts) >= 3:
            vth = parts[2]
        VGS = 0
        VDS = 0
        if second_part == '01v8':
            VGS = 1.8
            VDS = 1.8
        elif second_part == "g5v0d10v5":
            VGS = 5
            VDS = 10
        elif second_part == "g5v0d16v0":
            VGS = 5
            VDS = 16
        elif second_part == "20v0":
            VGS = 5
            VDS = 20
        elif second_part == "03v3":
            VGS = 3.3
            VDS = 3.3
        elif second_part == "05v0":
            VGS = 5
            VDS = 5
        return transistor(transistor_type, VGS, VDS,vth,instance)
    

    def prepare_netlist_for_DC_sim(spice_file_path,transistor):
        new_lines = []
        if transistor.transistor_type == "nfet":
            with open(spice_file_path, 'r') as spice_file:
                lines = spice_file.readlines()
                for line_number, line in enumerate(lines, start=1):
                    if line.startswith(transistor.instance):
                        parts = line.split()
                        if len(parts) > 1:
                            #set up VDS net
                            new_line = "Vmeas " + parts[3] +" " + parts[1] + " " + "0"
                            print(new_line)
                            new_lines.append(new_line)
                            new_lines.append("\n") 
                            new_lines.append(".save i(Vmeas) \n") 
                            new_line = "V1 " + parts[3] + " GND " + "VDS"
                            new_lines.append(new_line)
                            new_lines.append("\n")
                            #set up VGS
                            new_line = "V2 " + parts[2] +" " +"GND " + "VG"
                            new_lines.append(new_line)
                            new_lines.append("\n")
                            #settting source and drain
                            line = line.replace(parts[3], "GND").replace(parts[4], "GND")
                    new_lines.append(line)
            with open(spice_file_path, 'w') as spice_file:
                spice_file.writelines(new_lines)


                            
                        
            


    


        
    

