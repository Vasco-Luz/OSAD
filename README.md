This repository is done by an IC enthusiastic with some experience with CADENCE DESIGN SUIT and TSMC 65nm, TSMC 180 and UMC 180 analog designs.\


OSAD or Open Source Automatic design are test scipts behing developed in order to automate analog design of open source tools.\
You need xschem installed and the open PDKS and ngspice, and magic. This only works in linux/wsl.\
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

It includes a simple python script to add the python lib to the path and add the xschem lib to the path.


In this repository too some IC analog block will be done.\
There is documentation done explaining each block in relatively detail.\
To this point the blocks done in sky130A are:\
a self bias PMOS two stage miller OTA for 1.8V called VA001_PMOS_1.8_sky130A.\
a self bias NMOS two stage  OTA for 1.8V called VA002_NMOS_1.8_sky130A.\
a self bias NMOS two stage  OPAMP for 1.8V called VA003_NMOS_1.8_sky130A.\
A low power OTA designed for 300mV called LPA001_0_3_sky130A (needs to add an current source of 15nA to work).\
A simple self DDA OTA designed for 1.8 called DDA001_1.8_sky130A.



There are blocks realized in LTspcie using bipolar and jfet, based on the primordial integrated circuits. These blocks are: \
audio001, a basic BIJFET amplifier.\
audio003, another more complex BIJFET amplifier with a DC feedback system in order to bias the amplifier in its respective DC point.\
PDMswitch001, a bipolar driver for driving a load with bipolar switches.\
ACG1, is a very ealier version of a integrated voltage gain controlable amplifier.\
Bi_stable01, a funny bi stable circuit with little use. \
Bipolar buffer1, an early single ended differential bipolar amplifier designed to work as a buffer. \
Bipolar buffer2, an improved single ended differential bipolar amplifier designed to work as a buffer again using different mechanism in order to improve offset in funtion of temperature. \
RF001, One of the first RF iC. Its TV receiver. THe circuit done in LTspice and in Virtuoso didnt work very well, especially the FM detector. \








