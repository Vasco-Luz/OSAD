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

Some basic circuits are present in the repository\
The most important is the develempent of analogic design scripts to make the design process faster and scrips to help newcommers to understand some basic things related to design/analog design.\
This is still in a very early phase and is behing done by just one master student, but some work is already done.\





