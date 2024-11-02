This repository is done by an IC enthusiastic with some experience with CADENCE DESIGN SUIT and TSMC 65nm, TSMC 180 and UMC 180 analog designs.\


OSAD or Open Source Automatic design are test scipts behing developed in order to automate analog design of open source tools.\
You need xschem installed and the open PDKS and ngspice, and magic. This only works in linux/wsl.\
A setup nix that solves instalation of the tools and automatizes the instalation flow is in the works.\
For xschem:
xschem: https://github.com/StefanSchippers/xschem \
Install xterm for integration of ngspice with xschem \
sudo apt-get install xterm \
For ngspice:
https://ngspice.sourceforge.io/ <br>
For the Open PDK:
https://github.com/efabless/volare.git <br>
For magic:
https://github.com/RTimothyEdwards/magic <br>
then copy the xschemrc file in the sky130A to /usr/local/share/xschem <br>
for magic copy the sky130A.magicrc to ~/magicrc. <br>
If other process nodes want to be used just do this with the other files. <br>
i advise the use of chatgpt to ease installation because of the dependencies\
open the file with "xschem [filename]" and simulate\

It includes a simple python script to add the pythonm lib to the path and add the xschem lib to the path.\

In this repository too some IC analog block will be done.\
To this point the blocks done are:
a self bias PMOS two stage miller OTA for 1.8V, designed for a BW of 40 MHz called VA001_PMOS_1.8_sky130A.\
a self bias NMOS two stage  OTA for 1.8V, designed for a BW of 40 MHz called VA002_NMOS_1.8_sky130A.\






