import sys
import subprocess
import os
import shutil

# Get the current directory
current_directory = os.getcwd()

# Part 1: Set up PYTHONPATH
target_directory = "MY_pythn_lib"
target_path = os.path.join(current_directory, target_directory)

if os.path.exists(target_path):
    export_command = f'export PYTHONPATH=$PYTHONPATH:{target_path}'
    bashrc_path = os.path.expanduser("~/.bashrc")
    # Check if the export command is already present in the bashrc file
    with open(bashrc_path, "r") as bashrc_file:
        bashrc_content = bashrc_file.read()
    
    if export_command not in bashrc_content:
        # Append the export command to the bashrc file
        with open(bashrc_path, "a") as bashrc_file:
            bashrc_file.write("\n" + export_command)
        os.system("source ~/.bashrc")

# Part 2: Set up XSCHEM_USER_LIBRARY_PATH
script_directory = os.path.dirname(os.path.abspath(__file__))
lib_directory = os.path.join(script_directory, "my_ip", "LIB")

export_command = f'export XSCHEM_USER_LIBRARY_PATH={lib_directory}'
bashrc_path = os.path.expanduser("~/.bashrc")
with open(bashrc_path, "r") as bashrc_file:
    bashrc_content = bashrc_file.read()


# Part 3: Set up OSAD_PATH
osad_path_command = f'export OSAD_PATH={script_directory}'
if osad_path_command not in bashrc_content:
    with open(bashrc_path, "a") as bashrc_file:
        bashrc_file.write("\n" + osad_path_command)
    os.system("source ~/.bashrc")





if export_command not in bashrc_content:
    with open(bashrc_path, "a") as bashrc_file:
        bashrc_file.write("\n" + export_command)
    os.system("source ~/.bashrc")



# Get the current directory
current_directory = os.getcwd()

# Part 3: Compile LaTeX to PDF in the main.tex location
latex_source_dir = os.path.join(current_directory, "my_ip", "Documentation", "Documentation", "My-blocks-circuits")
latex_source = os.path.join(latex_source_dir, "main.tex")

# Check if the LaTeX source file exists
#if not os.path.exists(latex_source):
#    print(f"Error: The LaTeX source file does not exist at: {latex_source}")
#    exit(1)

#print(f"Attempting to compile LaTeX file at: {latex_source}")

#try:
    # Run pdflatex in the same directory as main.tex with a timeout
#    subprocess.run(
#        ["pdflatex", "--shell-escape", latex_source],
#        cwd=latex_source_dir,
#        check=True,
#        timeout=60  # 60 seconds timeout to avoid hanging indefinitely
#    )
#    print("PDF generated successfully.")
#except subprocess.CalledProcessError:
#    print("Error: LaTeX compilation failed.")
#except subprocess.TimeoutExpired:
#    print("Error: LaTeX compilation timed out.")

# Part 4: Copy the PDF to the desired output directory
#output_directory = os.path.join(script_directory, "my_ip", "Documentation")
#pdf_source = os.path.join(latex_source_dir, "main.pdf")
#pdf_destination = os.path.join(output_directory, "main.pdf")

#print(f"Attempting to copy the PDF from {pdf_source} to {pdf_destination}")

#try:
    # Check if the PDF file exists before copying
#    if os.path.exists(pdf_source):
#        print(f"PDF file found at {pdf_source}. Proceeding with copy.")
#        shutil.copy(pdf_source, pdf_destination)
#        print(f"PDF copied to {output_directory} successfully.")
#    else:
#        print(f"Error: PDF file not found at {pdf_source}. Ensure LaTeX compiled the PDF correctly.")
#except FileNotFoundError:
#    print(f"Error: PDF file not found at {pdf_source}. Check if LaTeX compilation succeeded.")
#except PermissionError:
#    print(f"Permission Error: Unable to access {pdf_source} or {pdf_destination}. Check file permissions.")
#except Exception as e:
#    print(f"An unexpected error occurred while copying the PDF: {e}")
