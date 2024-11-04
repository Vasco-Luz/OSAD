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
L 4 -390 -550 10 -550 {}
L 4 -440 20 -440 410 {}
L 4 -440 20 40 20 {}
L 4 100 20 100 420 {}
L 4 -440 420 40 420 {}
L 4 -440 410 -440 420 {}
L 4 -430 600 -430 1000 {}
L 4 60 600 60 1000 {}
L 4 -430 600 60 600 {}
L 4 -430 1000 60 1000 {}
L 4 -430 1140 -430 1540 {}
L 4 -430 1140 60 1140 {}
L 4 60 1140 60 1540 {}
L 4 -430 1540 60 1540 {}
L 4 150 2520 150 2920 {}
L 4 -450 2520 40 2520 {}
L 4 -450 2920 40 2920 {}
L 4 -560 2520 -560 2920 {}
L 4 -560 2520 -450 2520 {}
L 4 -560 2920 -450 2920 {}
L 4 -470 3070 20 3070 {}
L 4 70 3640 70 3980 {}
L 4 -440 3640 50 3640 {}
L 4 -590 3640 -440 3640 {}
L 4 -590 3640 -590 3930 {}
L 4 -590 3930 -590 4070 {}
L 4 -590 4070 50 4070 {}
L 4 70 3980 70 4070 {}
L 4 -500 4280 -10 4280 {}
L 4 -700 4850 -10 4850 {}
L 4 -700 4280 -700 4730 {}
L 4 -700 4280 -500 4280 {}
L 4 -390 -550 -390 -260 {}
L 4 -390 -260 10 -260 {}
L 4 10 -550 10 -260 {}
L 4 40 20 100 20 {}
L 4 40 420 90 420 {}
L 4 80 420 100 420 {}
L 4 -480 1740 -480 2130 {}
L 4 -480 1740 0 1740 {}
L 4 60 1740 60 2140 {}
L 4 -480 2140 0 2140 {}
L 4 -480 2130 -480 2140 {}
L 4 0 1740 60 1740 {}
L 4 0 2140 50 2140 {}
L 4 40 2140 60 2140 {}
L 4 40 2520 140 2520 {}
L 4 140 2520 150 2520 {}
L 4 40 2920 150 2920 {}
L 4 20 3070 20 3410 {}
L 4 -470 3070 -470 3410 {}
L 4 -470 3410 20 3410 {}
L 4 50 4070 70 4070 {}
L 4 50 3640 70 3640 {}
L 4 -700 4720 -700 4850 {}
L 4 -10 4280 -10 4850 {}
L 4 -1560 3040 -1070 3040 {}
L 4 -1070 3040 -1070 3380 {}
L 4 -1560 3040 -1560 3380 {}
L 4 -1560 3380 -1070 3380 {}
B 2 940 -700 1740 -300 {flags=graph,unlocked

y2=35
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
y1=-54
color=4
node="\\"Differencial gain ; vout db20() %0\\""

sim_type=ac
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 940 -300 1740 100 {flags=graph,unlocked
y1=0.59
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


dataset=0
unitx=1
logx=1
logy=0
color=5
node="\\"Phase ; ph(vout) 180 + \\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 940 100 1740 500 {flags=graph,unlocked

y2=87
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
y1=-12

color=6
node="\\"CMRR ; vout VOUT_c / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 940 500 1740 900 {flags=graph,unlocked

y2=41
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
y1=2.1


color=7
node="\\"PSSR+ ; vout VOUT_A+ / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 940 900 1740 1300 {flags=graph,unlocked

y2=67
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
y1=3.6


color=8
node="\\"PSSR- ; vout VOUT_A- / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 940 1700 1740 2100 {flags=graph,unlocked

y2=20
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
y1=-130


color=9
node="\\"20dB gain ; VOUT_20db db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 1990 -700 2790 -300 {flags=graph,unlocked
y1=0.33
y2=1.5
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=5e-05
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
y1=0.23
y2=1.6
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
x2=5e-05
rainbow=0
autoload=1}
B 2 1990 100 2790 500 {flags=graph,unlocked
y1=-0.007
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
x2=5e-05
rainbow=0
autoload=1}
B 2 3050 -690 3850 -290 {flags=graph,unlocked
y1=0.49
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
y1=-0.005
y2=0.29
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
y1=0.75
y2=1.1
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1

x2=1.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=dc

color="21 4"
node="\\"buffer OUT comp; VOUT_swing_off\\"
\\"VOFF; net1\\""
rawfile=$netlist_dir/tb.raw
x1=750m}
B 2 940 2100 1740 2500 {flags=graph,unlocked

y2=-31
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
y1=-120


color=17
node="\\"transimpedance ; VOUT_photo db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 1990 500 2790 900 {flags=graph,unlocked
y1=0.89
y2=0.9
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
x2=5e-05
rainbow=0
autoload=1
color=12
node="\\"transimpedance output; VOUT_photo\\""}
B 2 940 1300 1740 1700 {flags=graph,unlocked

y2=54
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0.53495
x2=11.234
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y1=1.2


color=9
node="\\"CMRR1 ; Vout VOUT_1c / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 3048.75 908.75 3848.75 1308.75 {flags=graph,unlocked
y1=0.00038
y2=0.011
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
T {AC results} 1517.5 -837.5 0 1 1 1 {}
T {tran results} 2297.5 -825 0 0 1 1 {}
T {DC waves} 3257.5 -785 0 0 1 1 {}
T {SOURCES} -1380 -550 0 0 1 1 {}
T {simulation scripts} -1450 -940 0 0 1 1 {}
T {Differential gain simulation} -530 -620 0 0 1 1 {}
T {Common gain simulation} -530 -70 0 0 1 1 {}
T {A+ gain simulation} -430 520 0 0 1 1 {}
T {A- gain simulation} -420 1070 0 0 1 1 {}
T {closed loop 20db simulation} -600 2450 0 0 1 1 {}
T {buffer simulation} -430 2980 0 0 1 1 {}
T {slew rate simulation} -490 3560 0 0 1 1 {}
T {transimpedance simulation simulating a photodiode} -930 4190 0 0 1 1 {}
T {Common gain 1 simulation} -570 1650 0 0 1 1 {}
T {buffer simulation with offset} -1560 2910 0 0 1 1 {}
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
N -220 -320 -220 -280 {
lab=VSS}
N -310 -420 -280 -420 {
lab=VIN+}
N -220 -520 -220 -480 {
lab=VDD}
N -160 80 -160 120 {
lab=VDD}
N -40 180 30 180 {
lab=VOUT_c}
N 30 240 30 270 {
lab=VSS}
N -160 40 -160 80 {
lab=VDD}
N -340 350 -340 370 {
lab=VSS}
N -340 370 -340 390 {
lab=VSS}
N -340 140 -340 170 {
lab=#net2}
N -340 260 -340 290 {
lab=#net3}
N -340 170 -340 200 {
lab=#net2}
N -190 770 -190 810 {
lab=#net4}
N -190 930 -190 970 {
lab=VSS}
N -70 870 0 870 {
lab=VOUT_A+}
N 0 930 0 960 {
lab=VSS}
N -190 730 -190 770 {
lab=#net4}
N -370 920 -370 940 {
lab=VSS}
N -370 940 -370 960 {
lab=VSS}
N -370 830 -370 860 {
lab=#net5}
N -370 830 -270 830 {
lab=#net5}
N -190 640 -190 670 {
lab=VDD}
N -180 1230 -180 1270 {
lab=VDD}
N -180 1390 -180 1430 {
lab=#net6}
N -260 1290 -230 1290 {
lab=#net7}
N -60 1330 10 1330 {
lab=VOUT_A-}
N 10 1390 10 1420 {
lab=VSS}
N -180 1190 -180 1230 {
lab=VDD}
N -360 1380 -360 1400 {
lab=VSS}
N -360 1400 -360 1420 {
lab=VSS}
N -360 1290 -360 1320 {
lab=#net7}
N -360 1290 -260 1290 {
lab=#net7}
N -180 1160 -180 1190 {
lab=VDD}
N -180 1490 -180 1520 {
lab=VSS}
N -50 2730 20 2730 {
lab=VOUT_20db}
N -170 2630 -170 2670 {
lab=VDD}
N -20 2680 -20 2730 {
lab=VOUT_20db}
N -20 2590 -20 2680 {
lab=VOUT_20db}
N -140 2570 -70 2570 {
lab=VOUT_20db}
N -280 2570 -200 2570 {
lab=#net8}
N -280 2570 -280 2690 {
lab=#net8}
N -320 2690 -280 2690 {
lab=#net8}
N -490 2850 -490 2870 {
lab=VSS}
N -490 2870 -490 2890 {
lab=VSS}
N -490 2770 -490 2790 {
lab=#net9}
N -490 2690 -490 2710 {
lab=#net10}
N -490 2690 -380 2690 {
lab=#net10}
N -490 2780 -370 2780 {
lab=#net9}
N -260 3290 -260 3330 {
lab=VSS}
N -350 3270 -320 3270 {
lab=#net11}
N -260 3130 -260 3170 {
lab=VDD}
N -390 3270 -350 3270 {
lab=#net11}
N 20 2790 20 2820 {
lab=VSS}
N -390 3270 -390 3290 {
lab=#net11}
N -140 3160 -140 3260 {
lab=VOUT_swing}
N -370 3110 -370 3190 {
lab=VOUT_swing}
N -240 3690 -240 3730 {
lab=VDD}
N -120 3790 -60 3790 {
lab=VOUT_rate}
N -360 3950 -360 3970 {
lab=VSS}
N -360 3970 -360 3990 {
lab=VSS}
N -360 3870 -360 3890 {
lab=#net12}
N 30 3850 30 3880 {
lab=VSS}
N -60 3790 30 3790 {
lab=VOUT_rate}
N -510 3820 -510 3840 {
lab=VSS}
N -510 3840 -510 3860 {
lab=VSS}
N -510 3750 -510 3760 {
lab=#net13}
N -390 3350 -390 3380 {
lab=VIN-}
N -270 4620 -270 4660 {
lab=VSS}
N -360 4700 -330 4700 {
lab=#net14}
N -270 4460 -270 4500 {
lab=VDD}
N -400 4700 -360 4700 {
lab=#net14}
N -400 4760 -400 4780 {
lab=VSS}
N -400 4780 -400 4800 {
lab=VSS}
N -260 4330 -260 4410 {
lab=VOUT_photo}
N -320 4330 -320 4410 {
lab=#net15}
N -260 4370 -130 4370 {
lab=VOUT_photo}
N -130 4370 -70 4370 {
lab=VOUT_photo}
N -70 4370 -70 4560 {
lab=VOUT_photo}
N -150 4560 -70 4560 {
lab=VOUT_photo}
N -610 4610 -610 4630 {
lab=VSS}
N -610 4630 -610 4650 {
lab=VSS}
N -610 4540 -610 4550 {
lab=#net15}
N -430 4370 -320 4370 {
lab=#net15}
N -430 4370 -430 4540 {
lab=#net15}
N -140 3320 -140 3350 {
lab=VSS}
N -70 4620 -70 4650 {
lab=VSS}
N -100 -380 -30 -380 {
lab=VOUT}
N -30 -320 -30 -290 {
lab=VSS}
N -310 -340 -280 -340 {
lab=VIN+}
N -310 -390 -280 -390 {
lab=VIN-}
N -310 -370 -280 -370 {
lab=VIN-}
N -160 240 -160 280 {
lab=VSS}
N -340 140 -220 140 {
lab=#net2}
N -220 140 -220 220 {
lab=#net2}
N -270 830 -250 830 {
lab=#net5}
N -250 830 -250 910 {
lab=#net5}
N -240 1290 -240 1370 {
lab=#net7}
N -200 1800 -200 1840 {
lab=VDD}
N -80 1900 -10 1900 {
lab=VOUT_1c}
N -10 1960 -10 1990 {
lab=VSS}
N -200 1760 -200 1800 {
lab=VDD}
N -380 2070 -380 2090 {
lab=VSS}
N -380 2090 -380 2110 {
lab=VSS}
N -380 1860 -380 1890 {
lab=#net16}
N -380 1980 -380 2010 {
lab=#net17}
N -380 1890 -380 1920 {
lab=#net16}
N -200 1960 -200 2000 {
lab=VSS}
N -380 1860 -260 1860 {
lab=#net16}
N -260 1860 -260 1890 {
lab=#net16}
N -300 2050 -300 2070 {
lab=VSS}
N -300 2070 -300 2090 {
lab=VSS}
N -300 1960 -300 1990 {
lab=#net18}
N -260 1910 -260 1940 {
lab=#net18}
N -300 1940 -260 1940 {
lab=#net18}
N -300 1940 -300 1960 {
lab=#net18}
N -280 2690 -280 2720 {
lab=#net8}
N -280 2720 -230 2720 {
lab=#net8}
N -280 2720 -280 2740 {
lab=#net8}
N -280 2740 -230 2740 {
lab=#net8}
N -260 2690 -230 2690 {
lab=#net9}
N -260 2690 -260 2770 {
lab=#net9}
N -260 2770 -230 2770 {
lab=#net9}
N -370 2780 -260 2780 {
lab=#net9}
N -260 2770 -260 2780 {
lab=#net9}
N -170 2790 -170 2830 {
lab=VSS}
N -70 2570 -20 2570 {
lab=VOUT_20db}
N -20 2570 -20 2590 {
lab=VOUT_20db}
N -320 3220 -320 3240 {
lab=VOUT_swing}
N -370 3230 -320 3230 {
lab=VOUT_swing}
N -370 3190 -370 3230 {
lab=VOUT_swing}
N -140 3110 -140 3160 {
lab=VOUT_swing}
N -370 3110 -140 3110 {
lab=VOUT_swing}
N -350 3190 -320 3190 {
lab=#net11}
N -350 3190 -350 3270 {
lab=#net11}
N -360 3830 -300 3830 {
lab=#net12}
N -360 3750 -300 3750 {
lab=#net12}
N -360 3750 -360 3870 {
lab=#net12}
N -300 3780 -300 3800 {
lab=#net13}
N -300 3790 -300 3800 {
lab=#net13}
N -410 3790 -300 3790 {
lab=#net13}
N -410 3750 -410 3790 {
lab=#net13}
N -510 3750 -410 3750 {
lab=#net13}
N -240 3850 -240 3870 {
lab=VSS}
N -240 3870 -240 3890 {
lab=VSS}
N -610 4540 -430 4540 {
lab=#net15}
N -330 4550 -330 4570 {
lab=#net15}
N -430 4560 -330 4560 {
lab=#net15}
N -430 4540 -430 4560 {
lab=#net15}
N -330 4600 -330 4700 {
lab=#net14}
N -360 4520 -330 4520 {
lab=#net14}
N -360 4520 -360 4700 {
lab=#net14}
N -1350 3260 -1350 3300 {
lab=VSS}
N -1440 3210 -1410 3210 {
lab=VIN-}
N -1350 3100 -1350 3140 {
lab=VDD}
N -1480 3210 -1440 3210 {
lab=VIN-}
N -1480 3210 -1480 3230 {
lab=VIN-}
N -1230 3130 -1230 3230 {
lab=VOUT_swing_off}
N -1230 3290 -1230 3320 {
lab=VSS}
N -1230 3080 -1230 3130 {
lab=VOUT_swing_off}
N -1460 3080 -1230 3080 {
lab=VOUT_swing_off}
N -1460 3190 -1410 3190 {
lab=VOUT_swing_off}
N -1540 3310 -1540 3350 {
lab=VSS}
N -1540 3210 -1540 3250 {
lab=#net19}
N -1540 3160 -1540 3210 {
lab=#net19}
N -1540 3160 -1410 3160 {
lab=#net19}
N -1540 3240 -1410 3240 {
lab=#net19}
N -1460 3080 -1460 3190 {
lab=VOUT_swing_off}
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
C {devices/vsource.sym} -1090 -330 0 0 {name=V4 value= 5m "ac 0.5 sin (0 550m 10k)"}
C {devices/vsource.sym} -1280 -330 0 0 {name=V5 value="ac -0.5"}
C {devices/lab_pin.sym} -1280 -390 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} -220 -520 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -220 -280 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -310 -420 0 0 {name=p4 sig_type=std_logic lab=VIN+
}
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

tran 10ns 50u
set appendwrite
write tb.raw
noise v(VOUT,VSS) V4 dec 10 1 10G
set appendwrite
write tb.raw
plot inoise_spectrum

dc V3 0 1.8 0.001
plot v(VIN-) 
set appendwrite
write tb.raw
.endc
"}
C {devices/launcher.sym} 2260 -1015 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb.raw tran "
}
C {devices/lab_pin.sym} -160 40 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 30 210 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 30 270 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 10 180 1 0 {name=p21 sig_type=std_logic lab=VOUT_c}
C {devices/vsource.sym} -340 320 0 0 {name=V6 value=0.}
C {devices/lab_pin.sym} -340 390 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -340 230 0 0 {name=V7 value="ac 1"}
C {devices/lab_pin.sym} -190 640 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -190 970 0 0 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} 0 900 0 0 {name=C3
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 0 960 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -20 870 1 0 {name=p24 sig_type=std_logic lab=VOUT_A+}
C {devices/vsource.sym} -370 890 0 0 {name=V8 value=0.9}
C {devices/lab_pin.sym} -370 960 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -190 700 2 0 {name=V9 value="ac 1"}
C {devices/lab_pin.sym} -180 1160 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -180 1520 0 0 {name=p27 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} 10 1360 0 0 {name=C4
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 10 1420 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 1330 1 0 {name=p29 sig_type=std_logic lab=VOUT_A-}
C {devices/vsource.sym} -360 1350 0 0 {name=V10 value=0.9}
C {devices/lab_pin.sym} -360 1420 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -180 1460 0 0 {name=V11 value="ac 1"}
C {devices/lab_pin.sym} 0 2730 1 0 {name=p43 sig_type=std_logic lab=VOUT_20db}
C {devices/lab_pin.sym} -170 2630 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {devices/res.sym} -170 2570 1 0 {name=R2
value=700k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -350 2690 1 0 {name=R3
value=70k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -490 2820 0 0 {name=V12 value=0.9}
C {devices/lab_pin.sym} -490 2890 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -490 2740 0 0 {name=V13 value="ac 1 sin (0 70m 100k)"}
C {devices/lab_pin.sym} -260 3330 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -260 3130 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 20 2760 0 0 {name=C5
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 20 2820 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -390 3320 0 0 {name=V15 value="ac 1 sin (0 500m 100k)"}
C {devices/lab_pin.sym} -140 3120 2 0 {name=p31 sig_type=std_logic lab=VOUT_swing}
C {devices/lab_pin.sym} -240 3690 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -360 3920 0 0 {name=V16 value=0.9}
C {devices/lab_pin.sym} -360 3990 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -40 3790 1 0 {name=p35 sig_type=std_logic lab=VOUT_rate}
C {devices/capa.sym} 30 3820 0 0 {name=C6
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 30 3880 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -510 3860 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -510 3790 0 0 {name=V19 value="PULSE(0 1.8 0n 1n 1n 1u 2u)"}
C {devices/lab_pin.sym} -390 3380 0 0 {name=p38 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} -270 4660 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -270 4460 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -130 4560 1 0 {name=p42 sig_type=std_logic lab=VOUT_photo}
C {devices/capa.sym} -290 4330 3 0 {name=C7
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -400 4730 0 0 {name=V14 value=0.9}
C {devices/lab_pin.sym} -400 4800 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {devices/res.sym} -290 4410 1 0 {name=R1
value=10M
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} -610 4580 0 0 {name=I0 value="ac 20u sin (0 10n 1k)"}
C {devices/lab_pin.sym} -610 4650 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 490 -730 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/capa.sym} -140 3290 0 0 {name=C8
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -140 3350 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -70 4590 0 0 {name=C9
m=1
value=30p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -70 4650 0 0 {name=p48 sig_type=std_logic lab=VSS}
C {DDA001_PMOS_1.8_sky130A .sym} -200 -380 0 0 {name=x9}
C {devices/lab_pin.sym} -60 -380 1 0 {name=p49 sig_type=std_logic lab=VOUT}
C {devices/capa.sym} -30 -350 0 0 {name=C10
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -30 -290 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -310 -340 0 0 {name=p8 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} -310 -390 0 0 {name=p9 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} -310 -370 0 0 {name=p51 sig_type=std_logic lab=VIN-
}
C {DDA001_PMOS_1.8_sky130A .sym} -140 180 0 0 {name=x1}
C {devices/lab_pin.sym} -160 280 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {DDA001_PMOS_1.8_sky130A .sym} -170 870 0 0 {name=x2}
C {DDA001_PMOS_1.8_sky130A .sym} -160 1330 0 0 {name=x3}
C {devices/lab_pin.sym} -200 1760 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/capa.sym} -10 1930 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -10 1990 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -30 1900 1 0 {name=p53 sig_type=std_logic lab=VOUT_1c}
C {devices/vsource.sym} -380 2040 0 0 {name=V17 value=0.9}
C {devices/lab_pin.sym} -380 2110 0 0 {name=p54 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -380 1950 0 0 {name=V18 value="ac 1"}
C {DDA001_PMOS_1.8_sky130A .sym} -180 1900 0 0 {name=x4}
C {devices/lab_pin.sym} -200 2000 0 0 {name=p55 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -300 2020 0 0 {name=V20 value=0.9}
C {devices/lab_pin.sym} -300 2090 0 0 {name=p56 sig_type=std_logic lab=VSS}
C {DDA001_PMOS_1.8_sky130A .sym} -150 2730 0 0 {name=x5}
C {devices/lab_pin.sym} -170 2830 0 0 {name=p41 sig_type=std_logic lab=VSS
}
C {DDA001_PMOS_1.8_sky130A .sym} -240 3230 0 0 {name=x6}
C {DDA001_PMOS_1.8_sky130A .sym} -220 3790 0 0 {name=x7}
C {devices/lab_pin.sym} -240 3890 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {DDA001_PMOS_1.8_sky130A .sym} -250 4560 0 0 {name=x8}
C {devices/lab_pin.sym} -1350 3300 0 0 {name=p57 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -1350 3100 0 0 {name=p58 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -1230 3090 2 0 {name=p59 sig_type=std_logic lab=VOUT_swing_off}
C {devices/capa.sym} -1230 3260 0 0 {name=C11
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -1230 3320 0 0 {name=p61 sig_type=std_logic lab=VSS}
C {DDA001_PMOS_1.8_sky130A .sym} -1330 3200 0 0 {name=x10}
C {devices/vsource.sym} -1540 3280 0 0 {name=V21 value=0.9}
C {devices/lab_pin.sym} -1540 3350 0 0 {name=p62 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -1480 3230 0 0 {name=p60 sig_type=std_logic lab=VIN-
}
