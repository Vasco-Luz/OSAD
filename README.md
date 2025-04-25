This repository is done by an IC enthusiastic with some experience with CADENCE DESIGN SUIT and TSMC 65nm, TSMC 180 and UMC 180 analog designs.\


OSAD or Open Source Automatic design are test scipts behing developed in order to automate analog design of open source tools.\
I highly recomend the use of  https://github.com/iic-jku/IIC-OSIC-TOOLS t use open source tools

It includes a simple python script to add the python lib to the path and add the xschem lib to the path.


Mainly In this repository there are IC analog/mixed signal blocks done using sky130 PDK and SG13G2 process.

At this point the blocks done are:

VA001_sky130_5V typical results:

| Parameter              | Value               |
|------------------------|---------------------|
| Architecture           | Two-Stage Miller OTA| 
| Gain Bandwidth (GBW)   |       41.19 MHz(5V) | 
| Phase Margin           |         63.9°(5V)   | 
| DC Gain                |        88dB(5V)     | 
| CMRR                   |        81dB(5V)     |
| PSSR-                  |        93dB(5V)     |
| PSSR+                  |        91dB(5V)     |   
| Supply Voltage         |        3V-5V        |
| ICMR                   |        0V-3.8V      |
| Input noise(1Hz-40MHz) |        154uV(5V)   |
| Power Consumption      |        319uW(5V)    |
| Load Capacitance       |        3pF          | 
| Input Offset Voltage   |       -400uV(5V)    |
| Technology             |      sky130A        | 



VA001_sky130_1.8V typical results:

| Parameter              | Value               |
|------------------------|---------------------|
| Architecture           | Two-Stage Miller OTA| 
| Gain Bandwidth (GBW)   |      42.10 MHz(1.8V)| 
| Phase Margin           |         70°(1.8V)   | 
| DC Gain                |        70dB(1.8V)   | 
| CMRR                   |        67.5dB(1.8V) |
| PSSR-                  |        80dB(1.8V)   |
| PSSR+                  |        112dB(1.8V)  |   
| Supply Voltage         |        1.4V-5V      |
| ICMR                   |        0V-1.V      |
| Input noise(1Hz-40MHz) |        151uV(1.8V)   |
| Power Consumption      |        108uW(1.8V)    |
| Load Capacitance       |        3pF          | 
| Input Offset Voltage   |       -884uV(1.8V)    |
| Technology             |      sky130A        | 


VA001_ihp-sg13g2_3_3V typical results:

| Parameter              | Value               |
|------------------------|---------------------|
| Architecture           | Two-Stage Miller OTA| 
| Gain Bandwidth (GBW)   |       43.71 MHz(3.3V) | 
| Phase Margin           |         63.9°(3.3V)   | 
| DC Gain                |        82dB(3.3V)     | 
| CMRR                   |        92dB(3.3V)     |
| PSSR-                  |        84dB(3.3V)     |
| PSSR+                  |        105dB(5V)     |   
| Supply Voltage         |        2V-3.3V        |
| ICMR                   |        0V-2.4V      |
| Input noise(1Hz-40MHz) |        141uV(3.3V)   |
| Power Consumption      |        243uW(3.3V)    |
| Load Capacitance       |        3pF          | 
| Input Offset Voltage   |       -386uV(3.3V)    |
| Technology             |      ihp-sg13g2      | 











In this repository too some IC analog block will be done.\
There is documentation done explaining each block in relatively detail.\
To this point the blocks done in sky130A are:\
a self bias PMOS two stage miller OTA for 1.8V called VA001_PMOS_1.8_sky130A.\
a self bias NMOS two stage  OTA for 1.8V called VA002_NMOS_1.8_sky130A.\
a self bias NMOS two stage  OPAMP for 1.8V called VA003_NMOS_1.8_sky130A.\
A low power OTA designed for 300mV called LPA001_0_3_sky130A (needs to add an current source of 15nA to work).\
A simple self DDA OTA designed for 1.8 called DDA001_1.8_sky130A.









