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
        target_text ="/home/vasco/Desktop/pdk/sky130A/libs.tech/ngspice/r+c/"
        corner1 = corner + ".spice"
        corner2 = corner + "__lin.spice"
        new_content = []
        a=0
        print(corner1)
        print(corner2)
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

        

    def ngspice_sim(spice_path):#basic ngspice simulation
        ngspice_command = f'ngspice -b {spice_path}' #comando da simulação batch com o ngspice
        subprocess.run(ngspice_command, shell=True)#simulação


    def write_single_cvs_file(txt_path,variables,num):

        with open(txt_path, 'r') as txt_file:
            lines = txt_file.readlines()
        data = []
        for line in lines:
            # Split each line into columns using whitespace as the delimiter
            columns = line.strip().split()
            # Append the columns as a list to the data list
            data.append(columns)
        headers = ["control"]
        for a in range(0,num,1):
            headers.append(variables[a])
        txt_name = os.path.basename(txt_path)
        cvs_name = (os.path.splitext(txt_path)[0]) + ".csv"
        cvs_full_path = os.path.join(os.getcwd(),cvs_name)
        if os.path.exists(cvs_full_path):
            os.remove(cvs_full_path)
        with open(cvs_full_path,'w', newline='') as csv_file:
            csv_writer = csv.writer(csv_file)
            csv_writer.writerow(headers)
            csv_writer.writerows(data)
        return cvs_full_path


    def plot_2d_simple(csv_file_path):
        dataframe = pd.read_csv(csv_file_path)
        column_names = dataframe.columns.tolist()
        data_matrix = dataframe.values.tolist()
        data_matrix = np.array(data_matrix)
        print(data_matrix)

        x_column = data_matrix[:, 0]  # First column as x
        for i in range(1, len(column_names)):
            y_column = data_matrix[:, i]  # Subsequent columns as y
            plt.figure(figsize=(8, 6))  # Adjust the figure size as needed
            plt.plot(x_column, y_column, label=column_names[i])
            plt.xlabel(column_names[0])  # x-axis label is the first column name
            plt.ylabel(column_names[i])  # y-axis label is the current column name
            plt.title(f"Plot of {column_names[i]} vs. {column_names[0]}")
            plt.legend()
            plt.grid(True)
            plt.show()












    
    def variation_paramn_simu(spice_path,data_path): #simulation with variation all in the same function
        param_name = input("Enter the paramameter desired to change: ")#get the param input
        starting_val = float(input("Enter the starting value: "))#starting value
        variation_val = float(input("Enter the variation value: "))#variation value
        number_of_times = int(input("number of times: "))#number of times
        current_val = starting_val#makes the written value the starting value
        ngspice_command = f'ngspice -b {spice_path}' #spice command   
        combined_data = pd.DataFrame()

        for a in range(0,number_of_times+1,1): # simple for
            with open(spice_path, 'r') as file: #opens the file
                lines = file.readlines()
            for i, line in enumerate(lines): #search the lines in the file
                if line.startswith('.param ' + param_name): # finds where is the line with param name
                    param_parts = line.split('=')
                    updated_line = f'.param {param_name} = {current_val}\n'
                    lines[i] = updated_line#substitutes the line
                    break
            with open(spice_path, 'w') as file: #writes the new file
                file.writelines(lines)
            current_val = current_val + variation_val #current value modification
            current_val = round(current_val,5)  #to compensate float precision in certain cases so we dont have 1.0000003 cause of float
            subprocess.run(ngspice_command, shell=True)#simulation
            data = pd.read_csv(data_path, delim_whitespace=True,header=None) #reads the data in the data path
            combined_data = pd.concat([combined_data, data], axis=1)
        combined_data = pd.DataFrame(combined_data.values)

        #column_count = combined_data.shape[1]
        #combined_data[column_count] = [param_name,starting_val,variation_val,number_of_times] #adds an information column
        return combined_data,param_name,starting_val,variation_val

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


    


    def finding(spice_path,pattern): #feito essencialmente para encontrar onde o wrdata esta
        with open(spice_path, 'r') as file: #abrir o ficheiro de forma segura o "r" significa que le
            text = file.read() #igual o ficheiro aonde se quer
        match = re.findall(pattern, text)
        if match:
            for match in match:
                 file_path = match  # Extract the file path from the match
                 print("File Path:", file_path)
                 return(file_path)
            else:
                 print("File paths not found in the SPICE netlist.")
                 return 0
            

    def corner(spice_path):
        print("type of corners?")
        print("a-full process corners")
        print("b-full process corners with temp")
        print("c-full process corners with temp and with VDD")
        print("d-Only Temp")
        print("e-Only VDD")
        print("f-VDD with TEMP")
        corner = input("Enter the desired corner: ")#get the param input
        corners = ["tt","ff","fs","ss","sf"] # process corners
        Temp_corners = [-10,27,80]#temperature corners

        match corner:
            case "a":
                for a in range(0, len(corners)):
                    with open(spice_path, "r") as file:
                        content= file.read()
                
                updated_content = content.replace(".lib $::SKYWATER_MODELS/sky130.lib.spice tt", f".lib $::SKYWATER_MODELS/sky130.lib.spice {corners[a]}")
                with open(spice_path, "w") as file:
                    file.write(updated_content)



            case _:
                print("invalid corner")
                sys.exit(1)

        
    













class graf:
    def vgs_vs_Id_gm(data_path): #plots ID and gm in function of VGS, without any corners/modification/ will be add later
        data = pd.read_csv(data_path, delim_whitespace=True,header=None) #divides the data
        vgs = data[0].to_numpy()# transforms vgs dataframe column into an array
        id = data[1].to_numpy()# transforms id dataframe column into an array
        id_mA = id / 1e-3#transforms the data to mA standart measurment data
        plt.figure(1)  # Set the figure size
        plt.plot(vgs, id_mA , color='red', linewidth=2, marker='o', markersize=1, label='ID')
        plt.xlabel("Vgs(V)")
        plt.ylabel("Id(mA)")
        plt.title("Id vs Vgs")
        plt.grid(True)  # Add gridlines
        plt.legend("Id current")  # Add legend
        gm = np.gradient(id, vgs)# transcondutance calculation
        plt.figure(2)  # Set the figure size
        plt.plot(vgs, gm , color='red', linewidth=2, marker='o', markersize=1, label='ID')
        plt.xlabel("Vgs(V)")
        plt.ylabel("gm(A/V)")
        plt.title("gm")
        plt.grid(True)  # Add gridlines
        plt.legend()  # Add legend
        plt.show()

    def vgs_vs_id_gm_variation(data,param_name):
        #data = data.drop(data.columns[-1], axis=1)#drop the last column, the information column

        Vgs = data.iloc[:, 0::2]  # Select odd columns starting from index 1
        Vgs = Vgs.values.T  # Co
        Id = data.iloc[:, 1::2]  # Select pair columns starting from index 0
        Id = Id.values.T  # Co
        gm = np.zeros_like(Id)
        Id_m = Id / 1e-3#transforms the data to mA standart measurment data

        plt.figure(1)  # Set the figure size
        for i in range(0,Vgs.shape[0],1):
            plt.plot(Vgs[i], Id_m[i], label=f"{param_name} {i+1}")
            gm[i] = np.gradient(Id[i], Vgs[i])  # Handle divide by zero and invalid value warnings

        plt.title("Id vs Vgs")
        plt.xlabel("Vgs")
        plt.ylabel("Id(ma)")
        plt.legend()
        plt.grid(True)  # Add gridlines
        plt.figure(2)  # Set the figure size
        for i in range(0,Vgs.shape[0],1):
            plt.plot(Vgs[i], gm[i], label=f"{param_name} {i+1}")
        plt.title("gm vs Vgs")
        plt.xlabel("Vgs")
        plt.ylabel("gm")
        plt.legend()
        plt.grid(True)  # Add gridlines
        plt.show()



    def vgs_vs_id_gm_variation_3d_from_file(data_path):
        pattern = r'.*test_(\w+)_([\d.]+)_([\d.]+)\.csv'#standart patter type of the file
        match = re.match(pattern, data_path)
        if match:
            param_name = match.group(1)  # Extract the parameter name
            starting_value = float(match.group(2))  # Extract the starting value
            variation = float(match.group(3))  # Extract the variation
        else:
             print("Invalid file name pattern.")
             sys.exit(1)
        data = pd.read_csv(data_path)
    
        Vgs = data.iloc[:, 0::2]  # Select odd columns starting from index 1
        Vgs = Vgs.values.T  # Co
        Id = data.iloc[:, 1::2]  # Select pair columns starting from index 0
        Id = Id.values.T  # Co
        gm = np.zeros_like(Id)
        z = np.zeros_like(Id)
        Id_m = Id / 1e-3#transforms the data to mA standart measurment data


        for a in range (0,len(Id),1): #prencher os valores z
            z[a] = starting_value + a*variation
            gm[a] = np.gradient(Id[a], Vgs[a])#gets the transcondutance
                                                
        fig = plt.figure()#basicly gets plots the 3D graph
        ax = fig.add_subplot(111, projection='3d')
        ax.plot_surface(Vgs, z, Id_m)
        ax.grid(True)
        ax.set_xlabel("Vgs",fontsize=12, fontweight='bold')
        ax.set_ylabel(param_name,fontsize=12, fontweight='bold')
        ax.set_zlabel('id(mA)',fontsize=12, fontweight='bold')
        ax.set_title('data plot')
        plt.show()


        fig = plt.figure() #plots the 3d graph of the transcondutance
        ax = fig.add_subplot(111, projection='3d')
        ax.plot_surface(Vgs, z, gm)
        ax.grid(True)
        ax.set_xlabel("Vgs",fontsize=12, fontweight='bold')
        ax.set_ylabel(param_name,fontsize=12, fontweight='bold')
        ax.set_zlabel('transcondutancia',fontsize=12, fontweight='bold')
        ax.set_title('data plot')
        plt.show()




    def vgs_vs_id_gm_variation_4d_from_file(data_path1,data_path2,data_path3):
        pattern = r'.*T(-?\d+)_L([\d.]+)_test_(\w+)_([\d.]+)_([\d.]+)\.csv'#standart patter type of the file #extracts a temperatura, L size e o resto

         # em geral todos os parmetros deverao ser iguais mas deixei isto para mostrar pode ser automtizado com um for secalhar no futuro
        match1 = re.match(pattern, data_path1)
        if match1:
            Temperature1 = float(match1.group(1))  # Extract the parameter name
            L_size1 = float(match1.group(2))  # Extract the starting value
            param_name1 = (match1.group(3))  # Extract the variation
            starting_value1 =float(match1.group(4))
            variation1 =float(match1.group(5))
        else:
             print("Invalid file name pattern.")
             sys.exit(1)

        match2 = re.match(pattern, data_path2)
        if match2:
            Temperature2 = float(match2.group(1))  # Extract the parameter name
            L_size2 = float(match2.group(2))  # Extract the starting value
            param_name2 = (match2.group(3))  # Extract the variation
            starting_value2 =float(match2.group(4))
            variation2 =float(match2.group(5))
        else:
             print("Invalid file name pattern.")
             sys.exit(1)
        
        match3 = re.match(pattern, data_path3)
        if match3:
            Temperature3 = float(match3.group(1))  # Extract the parameter name
            L_size3 = float(match3.group(2))  # Extract the starting value
            param_name3= (match3.group(3))  # Extract the variation
            starting_value3 =float(match3.group(4))
            variation3 =float(match3.group(5))
        else:
             print("Invalid file name pattern.")
             sys.exit(1)

        T = [Temperature1,Temperature2,Temperature3] # juntar as 3 temperaturas
    




        data1 = pd.read_csv(data_path1)
        data2 = pd.read_csv(data_path2)
        data3 = pd.read_csv(data_path3)


        #tratamento dos dados no datapath1
        Vgs1 = data1.iloc[:, 0::2]  # Select odd columns starting from index 1
        Vgs1 = Vgs1.values.T  # Co
        Id1 = data1.iloc[:, 1::2]  # Select pair columns starting from index 0
        Id1 = Id1.values.T  # Co
        gm1 = np.zeros_like(Id1)
        z1 = np.zeros_like(Id1)
        Id_m1 = Id1 / 1e-3#transforms the data to mA standart measurment data
        for a in range (0,len(Id1),1): #prencher os valores z
            z1[a] = starting_value1 + a*variation1
            gm1[a] = np.gradient(Id1[a], Vgs1[a])#gets the transcondutance

        #tratamento dos dados no datapath2
        Vgs2 = data2.iloc[:, 0::2]  # Select odd columns starting from index 1
        Vgs2 = Vgs2.values.T  # Co
        Id2 = data2.iloc[:, 1::2]  # Select pair columns starting from index 0
        Id2 = Id2.values.T  # Co
        gm2 = np.zeros_like(Id2)
        z2 = np.zeros_like(Id2)
        Id_m2 = Id2 / 1e-3#transforms the data to mA standart measurment data
        for a in range (0,len(Id2),1): #prencher os valores z
            z2[a] = starting_value2 + a*variation2
            gm2[a] = np.gradient(Id2[a], Vgs2[a])#gets the transcondutance


        #tratamento dos dados no datapath2
        Vgs3 = data3.iloc[:, 0::2]  # Select odd columns starting from index 1
        Vgs3 = Vgs3.values.T  # Co
        Id3 = data3.iloc[:, 1::2]  # Select pair columns starting from index 0
        Id3 = Id3.values.T  # Co
        gm3 = np.zeros_like(Id3)
        z3 = np.zeros_like(Id3)
        Id_m3 = Id3 / 1e-3#transforms the data to mA standart measurment data
        for a in range (0,len(Id3),1): #prencher os valores z
            z3[a] = starting_value3 + a*variation3
            gm3[a] = np.gradient(Id3[a], Vgs3[a])#gets the transcondutance


        fig = plt.figure()#basicly gets plots the 3D graph
        ax = fig.add_subplot(111, projection='3d')
        surf1 = ax.plot_surface(Vgs1, z1, Id_m1)
        surf2 = ax.plot_surface(Vgs2, z2, Id_m2)
        surf3 = ax.plot_surface(Vgs3, z3, Id_m3)
        ax.grid(True)
        ax.set_xlabel("Vgs",fontsize=12, fontweight='bold')
        ax.set_ylabel(param_name1,fontsize=12, fontweight='bold')
        ax.set_zlabel('id(mA)',fontsize=12, fontweight='bold')
        ax.set_title('ID VS VGS')

        surf1_proxy = mpatches.Patch(color=np.array(surf1._facecolors[0]))
        surf2_proxy = mpatches.Patch(color=np.array(surf2._facecolors[0]))
        surf3_proxy = mpatches.Patch(color=np.array(surf3._facecolors[0]))



        legend_labels = [f"T={T[0]}", f"T={T[1]}", f"T={T[2]}"]
        ax.legend([surf1_proxy, surf2_proxy, surf3_proxy], legend_labels, loc='best')
        plt.show()




        fig = plt.figure()#basicly gets plots the 3D graph
        ax = fig.add_subplot(111, projection='3d')
        surf1 = ax.plot_surface(Vgs1, z1, gm1)
        surf2 = ax.plot_surface(Vgs2, z2, gm2)
        surf3 = ax.plot_surface(Vgs3, z3, gm3)
        ax.grid(True)
        ax.set_xlabel("Vgs",fontsize=12, fontweight='bold')
        ax.set_ylabel(param_name1,fontsize=12, fontweight='bold')
        ax.set_zlabel('id(mA)',fontsize=12, fontweight='bold')
        ax.set_title('transcondutancia')

        surf1_proxy = mpatches.Patch(color=np.array(surf1._facecolors[0]))
        surf2_proxy = mpatches.Patch(color=np.array(surf2._facecolors[0]))
        surf3_proxy = mpatches.Patch(color=np.array(surf3._facecolors[0]))



        legend_labels = [f"T={T[0]}", f"T={T[1]}", f"T={T[2]}"]
        ax.legend([surf1_proxy, surf2_proxy, surf3_proxy], legend_labels, loc='best')
        plt.show()




                                                




        



        return 0









