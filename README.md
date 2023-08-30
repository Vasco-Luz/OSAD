This some circuits, layouts and in the future some simulation scripts in python using sky130A process node and some digital circuits using openLANE.\
You need xschem installed and the open PDKS and ngspice, and magic. This only works in linux.\
For xschem:
xschem: https://github.com/StefanSchippers/xschem\
Install xterm for integration of ngspice with xschem\
sudo apt-get install xterm\
For ngspice:
https://ngspice.sourceforge.io/\
For the Open PDK:
https://github.com/efabless/volare.git\ 
For magic:
https://github.com/RTimothyEdwards/magic\
then copy the xschemrc file in the sky130A to /usr/local/share/xschem\
for magic copy the sky130A.magicrc to ~/magicrc.\
If other process nodes want to be used just do this with the other files.\
i advise the use of chatgpt to ease installation because of the dependencies
open the file with "xschem [filename]" and simulate
