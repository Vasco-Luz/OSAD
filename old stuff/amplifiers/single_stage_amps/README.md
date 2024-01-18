one input amplifiers BICMOS basic stages\
In general the most important simulation are made, then a layout is made and the extracted layout is tested\
spice extractions with NPN cannot be simulated.\
The simulations done are DC gain, gain in function of frequency gain, transient simulaton to show the gain, fft to check the distorition of the output compared to the input\
Then the undisirable VDD and VSS gain in terms of frequency.\
There is a simulation script, but can only be used with one simulation at the time\
To simulate sch files with post layout, the post layout spice file needs to be copied to the documents or another place where ngspice can get the subcircuit. and included in the spice script\
by defaul any time an post layout is simulated is assumed the spice that represents the subcircuit is in the documents.\

some times i put the theorical level 1 gain equations dc and in frequency analysis that represent the plots when all transistors are saturated (but without the pole simplifification) for fun.\
