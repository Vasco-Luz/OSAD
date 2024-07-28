v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -1620 -480 -960 -480 {}
L 4 -960 -480 -870 -480 {}
L 4 -870 -480 -870 -140 {}
L 4 -1610 -140 -870 -140 {}
L 4 -1620 -470 -1620 -140 {}
L 4 -1620 -480 -1620 -470 {}
L 4 -1620 -140 -1610 -140 {}
L 4 -1360 -840 -1360 -680 {}
L 4 -1360 -680 -1040 -680 {}
L 4 -1040 -860 -1040 -680 {}
L 4 -1360 -860 -1040 -860 {}
L 4 -1360 -860 -1360 -840 {}
L 4 -390 -550 -390 -290 {}
L 4 -390 -550 10 -550 {}
L 4 10 -550 10 -270 {}
L 4 -390 -270 10 -270 {}
L 4 -390 -290 -390 -270 {}
L 4 -440 -130 -440 260 {}
L 4 -440 -130 40 -130 {}
L 4 40 -130 40 270 {}
L 4 -440 270 40 270 {}
L 4 -440 260 -440 270 {}
L 4 -450 510 -450 910 {}
L 4 40 510 40 910 {}
L 4 -450 510 40 510 {}
L 4 -450 910 40 910 {}
L 4 -450 1220 -450 1620 {}
L 4 -450 1220 40 1220 {}
L 4 40 1220 40 1620 {}
L 4 -450 1620 40 1620 {}
L 4 50 1820 50 2220 {}
L 4 -440 1820 50 1820 {}
L 4 -440 2220 50 2220 {}
L 4 -550 1820 -550 2220 {}
L 4 -550 1820 -440 1820 {}
L 4 -550 2220 -440 2220 {}
L 4 -510 2470 -20 2470 {}
L 4 -510 2760 -20 2760 {}
L 4 -20 2470 -20 2760 {}
L 4 -510 2470 -510 2760 {}
L 4 60 2940 60 3280 {}
L 4 -430 2940 60 2940 {}
L 4 -580 2940 -430 2940 {}
L 4 -580 2940 -580 3230 {}
L 4 -580 3230 -580 3370 {}
L 4 -580 3370 60 3370 {}
L 4 60 3280 60 3370 {}
L 4 -490 3580 0 3580 {}
L 4 0 3580 -0 4030 {}
L 4 -690 4030 -0 4030 {}
L 4 -690 3580 -690 4030 {}
L 4 -690 3580 -490 3580 {}
B 2 940 -700 1740 -300 {flags=graph,unlocked

y2=81
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=10.69897
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y1=-37
color=4
node="\\"Differencial gain ; vout db20() %0\\""

sim_type=ac
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 940 -300 1740 100 {flags=graph,unlocked
y1=12
y2=350
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=10.699
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color=5
node="\\"Phase ; ph(vout) 180 + \\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 940 100 1740 500 {flags=graph,unlocked

y2=80
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=10.69897
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y1=2.2

color=6
node="\\"CMRR ; vout VOUT_c / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 940 500 1740 900 {flags=graph,unlocked

y2=83
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-0.5349485
x2=10.164021
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y1=-4.7


color=7
node="\\"PSSR+ ; vout VOUT_A+ / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 940 900 1740 1300 {flags=graph,unlocked

y2=85
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-1.0698968
x2=9.6290735
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y1=-4.4


color=8
node="\\"PSSR- ; vout VOUT_A- / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 940 1300 1740 1700 {flags=graph,unlocked

y2=21
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=10.69897
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y1=-120


color=9
node="\\"20dB gain ; VOUT_20db db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 1990 -700 2790 -300 {flags=graph,unlocked
y1=0.2
y2=1.6
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=3e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="\\"inverter with 10 gain; vout_20db  \\"
\\"input signal; net10\\""
sim_type=tran
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 1990 -300 2790 100 {flags=graph,unlocked
y1=0.4
y2=1.5
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=tran
color=6
node="\\"buffer swing; VOUT_swing\\""
rawfile=$netlist_dir/tb.raw
x2=3e-05
rainbow=0
autoload=1}
B 2 1990 100 2790 500 {flags=graph,unlocked
y1=-0.0049
y2=1.9
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0


subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=tran
color="6 4 8"
node="\\"output wave; VOUT_rate\\"
\\"slew rate; VOUT_rate deriv0()s\\"
\\"input square wave;net13\\""
divx=20
rawfile=$netlist_dir/tb.raw
x2=3e-05
rainbow=0
autoload=1}
B 2 3050 -690 3850 -290 {flags=graph,unlocked
y1=0.68
y2=1.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"dc variation; VOUT %0\\""
sim_type=dc

autoload=1
rawfile=$netlist_dir/tb.raw}
B 2 3050 -290 3850 110 {flags=graph,unlocked
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=dc
color="10 12"
node="\\"buffer swing dc; VOUT_swing\\"
\\"VIN; net1\\""
rawfile=$netlist_dir/tb.raw
rainbow=0}
B 2 3048.75 108.75 3848.75 508.75 {flags=graph,unlocked
y1=9.7e-06
y2=0.11
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=dc

color=21
node="\\"offset; VOUT_swing net1 -\\""
rawfile=$netlist_dir/tb.raw}
B 2 3048.75 508.75 3848.75 908.75 {flags=graph,unlocked
y1=0.000363
y2=0.000373
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=dc

color=21
node="\\"power;  i(v9) -1.8 *\\""
rawfile=$netlist_dir/tb.raw}
B 2 940 1700 1740 2100 {flags=graph,unlocked

y2=-23
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=10.69897
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y1=-81


color=17
node="\\"transimpedance ; VOUT_photo db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 1990 500 2790 900 {flags=graph,unlocked
y1=0.8998
y2=0.9002
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0


subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=tran


divx=20
rawfile=$netlist_dir/tb.raw
x2=3e-05
rainbow=0
autoload=1
color=12
node="\\"transimpedance output; VOUT_photo\\""}
T {AC results} 1517.5 -837.5 0 1 1 1 {}
T {tran results} 2297.5 -825 0 0 1 1 {}
T {DC waves} 3257.5 -785 0 0 1 1 {}
T {SOURCES} -1380 -550 0 0 1 1 {}
T {simulation scripts} -1450 -940 0 0 1 1 {}
T {Differential gain simulation} -530 -620 0 0 1 1 {}
T {Common gain simulation} -530 -220 0 0 1 1 {}
T {A+ gain simulation} -450 430 0 0 1 1 {}
T {A- gain simulation} -440 1150 0 0 1 1 {}
T {closed loop 20db simulation} -590 1750 0 0 1 1 {}
T {buffer simulation} -470 2380 0 0 1 1 {}
T {slew rate simulation} -480 2860 0 0 1 1 {}
T {transimpedance simulation simulating a photodiode} -920 3490 0 0 1 1 {}
N -1430 -290 -1430 -270 {
lab=GND}
N -1430 -390 -1430 -350 {
lab=VDD}
N -1500 -290 -1500 -270 {
lab=GND}
N -1500 -390 -1500 -350 {
lab=VSS}
N -1190 -240 -1190 -220 {
lab=VSS}
N -1190 -220 -1190 -200 {
lab=VSS}
N -1090 -390 -1090 -360 {
lab=VIN+}
N -1280 -300 -1090 -300 {
lab=#net1}
N -1280 -390 -1280 -360 {
lab=VIN-}
N -220 -480 -220 -440 {
lab=VDD}
N -220 -360 -220 -320 {
lab=VSS}
N -300 -380 -270 -380 {
lab=VIN+}
N -300 -420 -270 -420 {
lab=VIN-}
N -150 -400 -80 -400 {
lab=VOUT}
N -80 -340 -80 -310 {
lab=VSS}
N -220 -520 -220 -480 {
lab=VDD}
N -160 -70 -160 -30 {
lab=VDD}
N -160 50 -160 90 {
lab=VSS}
N -240 30 -210 30 {
lab=#net2}
N -240 -10 -210 -10 {
lab=#net2}
N -90 10 -20 10 {
lab=VOUT_c}
N -20 70 -20 100 {
lab=VSS}
N -160 -110 -160 -70 {
lab=VDD}
N -340 200 -340 220 {
lab=VSS}
N -340 220 -340 240 {
lab=VSS}
N -340 -10 -340 20 {
lab=#net2}
N -340 -10 -240 -10 {
lab=#net2}
N -260 -10 -260 30 {
lab=#net2}
N -260 30 -240 30 {
lab=#net2}
N -340 110 -340 140 {
lab=#net3}
N -340 20 -340 50 {
lab=#net2}
N -210 680 -210 720 {
lab=#net4}
N -210 800 -210 840 {
lab=VSS}
N -290 780 -260 780 {
lab=#net5}
N -290 740 -260 740 {
lab=#net5}
N -140 760 -70 760 {
lab=VOUT_A+}
N -70 820 -70 850 {
lab=VSS}
N -210 640 -210 680 {
lab=#net4}
N -390 830 -390 850 {
lab=VSS}
N -390 850 -390 870 {
lab=VSS}
N -310 740 -310 780 {
lab=#net5}
N -310 780 -290 780 {
lab=#net5}
N -390 740 -390 770 {
lab=#net5}
N -390 740 -290 740 {
lab=#net5}
N -210 550 -210 580 {
lab=VDD}
N -200 1310 -200 1350 {
lab=VDD}
N -200 1430 -200 1470 {
lab=#net6}
N -280 1410 -250 1410 {
lab=#net7}
N -280 1370 -250 1370 {
lab=#net7}
N -130 1390 -60 1390 {
lab=VOUT_A-}
N -60 1450 -60 1480 {
lab=VSS}
N -200 1270 -200 1310 {
lab=VDD}
N -380 1460 -380 1480 {
lab=VSS}
N -380 1480 -380 1500 {
lab=VSS}
N -300 1370 -300 1410 {
lab=#net7}
N -300 1410 -280 1410 {
lab=#net7}
N -380 1370 -380 1400 {
lab=#net7}
N -380 1370 -280 1370 {
lab=#net7}
N -200 1240 -200 1270 {
lab=VDD}
N -200 1530 -200 1560 {
lab=VSS}
N -160 2050 -160 2090 {
lab=VSS}
N -240 2030 -210 2030 {
lab=#net8}
N -90 2010 -20 2010 {
lab=VOUT_20db}
N -160 1930 -160 1970 {
lab=VDD}
N -60 1960 -60 2010 {
lab=VOUT_20db}
N -260 1990 -210 1990 {
lab=#net9}
N -60 1870 -60 1960 {
lab=VOUT_20db}
N -130 1870 -60 1870 {
lab=VOUT_20db}
N -270 1870 -190 1870 {
lab=#net9}
N -270 1870 -270 1990 {
lab=#net9}
N -270 1990 -260 1990 {
lab=#net9}
N -310 1990 -270 1990 {
lab=#net9}
N -480 2150 -480 2170 {
lab=VSS}
N -480 2170 -480 2190 {
lab=VSS}
N -480 2070 -480 2090 {
lab=#net8}
N -480 1990 -480 2010 {
lab=#net10}
N -480 1990 -370 1990 {
lab=#net10}
N -480 2080 -360 2080 {
lab=#net8}
N -360 2080 -360 2130 {
lab=#net8}
N -360 2130 -280 2130 {
lab=#net8}
N -280 2120 -280 2130 {
lab=#net8}
N -280 2030 -280 2060 {
lab=#net8}
N -280 2030 -240 2030 {
lab=#net8}
N -280 2060 -280 2120 {
lab=#net8}
N -300 2650 -300 2690 {
lab=VSS}
N -380 2630 -350 2630 {
lab=#net11}
N -300 2530 -300 2570 {
lab=VDD}
N -400 2590 -350 2590 {
lab=VOUT_swing}
N -410 2590 -400 2590 {
lab=VOUT_swing}
N -420 2630 -380 2630 {
lab=#net11}
N -230 2610 -170 2610 {
lab=VOUT_swing}
N -20 2070 -20 2100 {
lab=VSS}
N -420 2630 -420 2650 {
lab=#net11}
N -170 2510 -170 2610 {
lab=VOUT_swing}
N -410 2510 -170 2510 {
lab=VOUT_swing}
N -410 2510 -410 2590 {
lab=VOUT_swing}
N -230 3110 -230 3150 {
lab=VSS}
N -310 3090 -280 3090 {
lab=#net12}
N -230 2990 -230 3030 {
lab=VDD}
N -350 3090 -310 3090 {
lab=#net12}
N -160 3070 -100 3070 {
lab=VOUT_rate}
N -350 3250 -350 3270 {
lab=VSS}
N -350 3270 -350 3290 {
lab=VSS}
N -350 3170 -350 3190 {
lab=#net12}
N -350 3090 -350 3110 {
lab=#net12}
N -10 3130 -10 3160 {
lab=VSS}
N -100 3070 -10 3070 {
lab=VOUT_rate}
N -500 3120 -500 3140 {
lab=VSS}
N -500 3140 -500 3160 {
lab=VSS}
N -500 3050 -500 3060 {
lab=#net13}
N -500 3050 -280 3050 {
lab=#net13}
N -350 3110 -350 3170 {
lab=#net12}
N -420 2710 -420 2740 {
lab=VIN-}
N -270 3900 -270 3940 {
lab=VSS}
N -350 3880 -320 3880 {
lab=#net14}
N -270 3780 -270 3820 {
lab=VDD}
N -390 3880 -350 3880 {
lab=#net14}
N -200 3860 -140 3860 {
lab=VOUT_photo}
N -390 3940 -390 3960 {
lab=VSS}
N -390 3960 -390 3980 {
lab=VSS}
N -250 3630 -250 3710 {
lab=VOUT_photo}
N -310 3630 -310 3710 {
lab=#net15}
N -250 3670 -120 3670 {
lab=VOUT_photo}
N -120 3670 -60 3670 {
lab=VOUT_photo}
N -60 3670 -60 3860 {
lab=VOUT_photo}
N -140 3860 -60 3860 {
lab=VOUT_photo}
N -600 3910 -600 3930 {
lab=VSS}
N -600 3930 -600 3950 {
lab=VSS}
N -600 3840 -600 3850 {
lab=#net15}
N -600 3840 -320 3840 {
lab=#net15}
N -420 3670 -310 3670 {
lab=#net15}
N -420 3670 -420 3840 {
lab=#net15}
C {devices/lab_pin.sym} -1430 -390 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -1430 -320 0 0 {name=V1 value=1.8

}
C {devices/gnd.sym} -1430 -270 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1500 -390 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1500 -320 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -1500 -270 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -1190 -270 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -1190 -200 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1090 -390 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -1090 -330 0 0 {name=V4 value="ac 0.5 sin (0 550m 100k)"}
C {devices/vsource.sym} -1280 -330 0 0 {name=V5 value="ac -0.5"}
C {devices/lab_pin.sym} -1280 -390 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} -220 -520 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -220 -320 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -300 -380 0 0 {name=p4 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} -300 -420 0 0 {name=p5 sig_type=std_logic lab=VIN-
}
C {devices/capa.sym} -80 -370 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -80 -310 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -100 -400 1 0 {name=p9 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/corner.sym} -1330 -810 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -1190 -810 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*LIBs*********************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
* chose the corners in the corner file
* tt_mm for mismatch
* ss ff sf fs standart corners
* ll hh lh hl capacitor and resistors corners
* mc for total process variation including corners
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*Corners/montecarlo options***********************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.TEMP 27
**************************************************************
**************************************************************
**************************************************************
**************************************************************  
*SIMULATION and Plots*****************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.control
save all
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[gmbs]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vds]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]


save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gmbs]
save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[vds]
save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[vgs]

save @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[vds]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8[vgs]

save @m.x1.xm4.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8[vds]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8[vgs]

save @m.x1.xm5.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm5.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm5.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm5.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm5.msky130_fd_pr__nfet_01v8[vds]
save @m.x1.xm5.msky130_fd_pr__nfet_01v8[vgs]

save @m.x1.xm6.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm6.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm6.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm6.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm6.msky130_fd_pr__nfet_01v8[vds]
save @m.x1.xm6.msky130_fd_pr__nfet_01v8[vgs]

save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gmbs]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vds]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vgs]

save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[gmbs]
save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[vds]
save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[vgs]

save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[gmbs]
save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[vds]
save @m.x1.xm9.msky130_fd_pr__pfet_01v8_lvt[vgs]


save @m.x1.xm10.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm10.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm10.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm10.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm10.msky130_fd_pr__nfet_01v8[vds]
save @m.x1.xm10.msky130_fd_pr__nfet_01v8[vgs]


save @m.x1.xm11.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm11.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm11.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm11.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm11.msky130_fd_pr__nfet_01v8[vds]
save @m.x1.xm11.msky130_fd_pr__nfet_01v8[vgs]

save @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[vth]
save @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[gds]
save @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[gmbs]
save @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[vds]
save @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[vgs]

save @m.x1.xm13.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm13.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm13.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm13.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm13.msky130_fd_pr__nfet_01v8[vds]
save @m.x1.xm13.msky130_fd_pr__nfet_01v8[vgs]

op
write tb.raw
set appendwrite

ac dec 10 1 50G
plot db(v(VOUT)) (180*ph(v(VOUT))/pi)
plot (db(v(VOUT))-db(v(VOUT_c)))
plot (db(v(VOUT))-db(v(VOUT_A+)))
plot (db(v(VOUT))-db(v(VOUT_A-)))
plot db(v(VOUT_amp))
set appendwrite
write tb.raw

tran 1ns 30u
set appendwrite
write tb.raw
noise v(VOUT,VSS) V4 dec 10 1 10G
set appendwrite
write tb.raw
plot inoise_spectrum

dc V3 0 1.8 0.0001 
set appendwrite
write tb.raw
.endc
"}
C {devices/launcher.sym} 2260 -1015 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb.raw tran "
}
C {../op_amp.sym} -220 -400 0 0 {name=x1}
C {devices/lab_pin.sym} -160 -110 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -160 90 0 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} -20 40 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -20 100 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -40 10 1 0 {name=p21 sig_type=std_logic lab=VOUT_c}
C {devices/vsource.sym} -340 170 0 0 {name=V6 value=0.9}
C {devices/lab_pin.sym} -340 240 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -340 80 0 0 {name=V7 value="ac 1"}
C {../op_amp.sym} -160 10 0 0 {name=x2}
C {devices/lab_pin.sym} -210 550 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -210 840 0 0 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} -70 790 0 0 {name=C3
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -70 850 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -90 760 1 0 {name=p24 sig_type=std_logic lab=VOUT_A+}
C {devices/vsource.sym} -390 800 0 0 {name=V8 value=0.9}
C {devices/lab_pin.sym} -390 870 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -210 610 2 0 {name=V9 value="ac 1"}
C {devices/lab_pin.sym} -200 1240 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -200 1560 0 0 {name=p27 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} -60 1420 0 0 {name=C4
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -60 1480 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -80 1390 1 0 {name=p29 sig_type=std_logic lab=VOUT_A-}
C {devices/vsource.sym} -380 1430 0 0 {name=V10 value=0.9}
C {devices/lab_pin.sym} -380 1500 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -200 1500 0 0 {name=V11 value="ac 1"}
C {../op_amp.sym} -210 760 0 0 {name=x4}
C {../op_amp.sym} -200 1390 0 0 {name=x5}
C {devices/lab_pin.sym} -160 2090 0 0 {name=p41 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -40 2010 1 0 {name=p43 sig_type=std_logic lab=VOUT_20db}
C {devices/lab_pin.sym} -160 1930 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {devices/res.sym} -160 1870 1 0 {name=R2
value=400k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -340 1990 1 0 {name=R3
value=40k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -480 2120 0 0 {name=V12 value=0.9}
C {devices/lab_pin.sym} -480 2190 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -480 2040 0 0 {name=V13 value="ac 1 sin (0 70m 100k)"}
C {../op_amp.sym} -160 2010 0 0 {name=x3}
C {devices/lab_pin.sym} -300 2690 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -300 2530 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {../op_amp.sym} -300 2610 0 0 {name=x6}
C {devices/capa.sym} -20 2040 0 0 {name=C5
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -20 2100 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -420 2680 0 0 {name=V15 value="ac 1 sin (0 500m 100k)"}
C {devices/lab_pin.sym} -170 2540 2 0 {name=p31 sig_type=std_logic lab=VOUT_swing}
C {devices/lab_pin.sym} -230 3150 0 0 {name=p32 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -230 2990 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {../op_amp.sym} -230 3070 0 0 {name=x7}
C {devices/vsource.sym} -350 3220 0 0 {name=V16 value=0.9}
C {devices/lab_pin.sym} -350 3290 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -80 3070 1 0 {name=p35 sig_type=std_logic lab=VOUT_rate}
C {devices/capa.sym} -10 3100 0 0 {name=C6
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -10 3160 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -500 3160 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -500 3090 0 0 {name=V19 value="PULSE(0 1.8 0n 1n 1n 1u 2u)"}
C {devices/lab_pin.sym} -420 2740 0 0 {name=p38 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} -270 3940 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -270 3780 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {../op_amp.sym} -270 3860 0 0 {name=x8}
C {devices/lab_pin.sym} -120 3860 1 0 {name=p42 sig_type=std_logic lab=VOUT_photo}
C {devices/capa.sym} -280 3630 3 0 {name=C7
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -390 3910 0 0 {name=V14 value=0.9}
C {devices/lab_pin.sym} -390 3980 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {devices/res.sym} -280 3710 1 0 {name=R1
value=10M
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} -600 3880 0 0 {name=I0 value="ac 20u sin (0 20u 100k)"}
C {devices/lab_pin.sym} -600 3950 0 0 {name=p47 sig_type=std_logic lab=VSS}
