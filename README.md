This some circuits, layouts and in the future some simulation scripts in python using sky130A process node and some digital circuits using openLANE.\
You need xschem installed and the open PDKS and ngspice, and magic. This only works in linux/wsl.\
A setup nix script that solves instalation of the tools and automatizes the instalation flow is in the works.\
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

The most important is the develempent of analogic design scripts and scrips to help newcommers to understand some basic things related to design.\
This is still in a very early phase, but some work is already done.\





