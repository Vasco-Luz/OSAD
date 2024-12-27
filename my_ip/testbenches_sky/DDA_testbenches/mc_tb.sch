v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -950 30 -290 30 {}
L 4 -290 30 -200 30 {}
L 4 -200 30 -200 370 {}
L 4 -940 370 -200 370 {}
L 4 -950 40 -950 370 {}
L 4 -950 30 -950 40 {}
L 4 -950 370 -940 370 {}
L 4 -690 -330 -690 -170 {}
L 4 -690 -170 -370 -170 {}
L 4 -370 -350 -370 -170 {}
L 4 -690 -350 -370 -350 {}
L 4 -690 -350 -690 -330 {}
L 4 280 -40 280 220 {}
L 4 280 -40 680 -40 {}
L 4 680 -40 680 240 {}
L 4 280 240 680 240 {}
L 4 280 220 280 240 {}
L 4 220 560 220 950 {}
L 4 220 560 700 560 {}
L 4 700 560 700 960 {}
L 4 220 960 700 960 {}
L 4 220 950 220 960 {}
L 4 210 1200 210 1600 {}
L 4 700 1200 700 1600 {}
L 4 210 1200 700 1200 {}
L 4 210 1600 700 1600 {}
L 4 210 1910 210 2310 {}
L 4 210 1910 700 1910 {}
L 4 700 1910 700 2310 {}
L 4 210 2310 700 2310 {}
L 4 710 2510 710 2910 {}
L 4 220 2510 710 2510 {}
L 4 220 2910 710 2910 {}
L 4 110 2510 110 2910 {}
L 4 110 2510 220 2510 {}
L 4 110 2910 220 2910 {}
B 2 1900 -580 2700 -180 {flags=graph,unlocked

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
y1=-42
color=4
node="\\"Differencial gain ; vout db20() \\""

sim_type=ac
rawfile=$netlist_dir/mc_tb.raw
autoload=1}
B 2 1900 -180 2700 220 {flags=graph,unlocked
y1=0.35
y2=360
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
color=5
node="\\"Phase ; ph(vout) 180 + \\""
rawfile=$netlist_dir/mc_tb.raw
sim_type=ac
autoload=1}
B 2 1900 220 2700 620 {flags=graph,unlocked

y2=150
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
y1=-6.2

color=6
node="\\"CMRR ; vout VOUT_c / db20() \\""
rawfile=$netlist_dir/mc_tb.raw
sim_type=ac
autoload=1}
B 2 1900 620 2700 1020 {flags=graph,unlocked

y2=150
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
y1=-34


color=7
node="\\"PSSR+ ; vout VOUT_A+ / db20() \\""
rawfile=$netlist_dir/mc_tb.raw
sim_type=ac
autoload=1}
B 2 1900 1020 2700 1420 {flags=graph,unlocked

y2=160
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
y1=-33


color=8
node="\\"PSSR- ; vout VOUT_A- / db20() \\""
rawfile=$netlist_dir/mc_tb.raw
sim_type=ac
autoload=1}
B 2 1900 1420 2700 1820 {flags=graph,unlocked

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
node="\\"20dB gain ; VOUT_20db db20() \\""
rawfile=$netlist_dir/mc_tb.raw
sim_type=ac
autoload=1}
T {SOURCES} -710 -40 0 0 1 1 {}
T {simulation scripts} -780 -430 0 0 1 1 {}
T {Differential gain simulation} 140 -110 0 0 1 1 {}
T {Common gain simulation} 130 470 0 0 1 1 {}
T {A+ gain simulation} 210 1120 0 0 1 1 {}
T {A- gain simulation} 220 1840 0 0 1 1 {}
T {closed loop 20db simulation} 70 2440 0 0 1 1 {}
T {AC results} 2477.5 -717.5 0 1 1 1 {}
N -760 220 -760 240 {
lab=GND}
N -760 120 -760 160 {
lab=VDD}
N -830 220 -830 240 {
lab=GND}
N -830 120 -830 160 {
lab=VSS}
N -520 270 -520 290 {
lab=VSS}
N -520 290 -520 310 {
lab=VSS}
N -420 120 -420 150 {
lab=VIN+}
N -610 210 -420 210 {
lab=#net1}
N -610 120 -610 150 {
lab=VIN-}
N 450 30 450 70 {
lab=VDD}
N 450 150 450 190 {
lab=VSS}
N 370 130 400 130 {
lab=VIN+}
N 370 90 400 90 {
lab=VIN-}
N 520 110 590 110 {
lab=VOUT}
N 590 170 590 200 {
lab=VSS}
N 450 -10 450 30 {
lab=VDD}
N 500 620 500 660 {
lab=VDD}
N 500 740 500 780 {
lab=VSS}
N 420 720 450 720 {
lab=#net2}
N 420 680 450 680 {
lab=#net2}
N 570 700 640 700 {
lab=VOUT_c}
N 640 760 640 790 {
lab=VSS}
N 500 580 500 620 {
lab=VDD}
N 320 890 320 910 {
lab=VSS}
N 320 910 320 930 {
lab=VSS}
N 320 680 320 710 {
lab=#net2}
N 320 680 420 680 {
lab=#net2}
N 400 680 400 720 {
lab=#net2}
N 400 720 420 720 {
lab=#net2}
N 320 800 320 830 {
lab=#net3}
N 320 710 320 740 {
lab=#net2}
N 450 1370 450 1410 {
lab=#net4}
N 450 1490 450 1530 {
lab=VSS}
N 370 1470 400 1470 {
lab=#net5}
N 370 1430 400 1430 {
lab=#net5}
N 520 1450 590 1450 {
lab=VOUT_A+}
N 590 1510 590 1540 {
lab=VSS}
N 450 1330 450 1370 {
lab=#net4}
N 270 1520 270 1540 {
lab=VSS}
N 270 1540 270 1560 {
lab=VSS}
N 350 1430 350 1470 {
lab=#net5}
N 350 1470 370 1470 {
lab=#net5}
N 270 1430 270 1460 {
lab=#net5}
N 270 1430 370 1430 {
lab=#net5}
N 450 1240 450 1270 {
lab=VDD}
N 460 2000 460 2040 {
lab=VDD}
N 460 2120 460 2160 {
lab=#net6}
N 380 2100 410 2100 {
lab=#net7}
N 380 2060 410 2060 {
lab=#net7}
N 530 2080 600 2080 {
lab=VOUT_A-}
N 600 2140 600 2170 {
lab=VSS}
N 460 1960 460 2000 {
lab=VDD}
N 280 2150 280 2170 {
lab=VSS}
N 280 2170 280 2190 {
lab=VSS}
N 360 2060 360 2100 {
lab=#net7}
N 360 2100 380 2100 {
lab=#net7}
N 280 2060 280 2090 {
lab=#net7}
N 280 2060 380 2060 {
lab=#net7}
N 460 1930 460 1960 {
lab=VDD}
N 460 2220 460 2250 {
lab=VSS}
N 500 2740 500 2780 {
lab=VSS}
N 420 2720 450 2720 {
lab=#net8}
N 570 2700 640 2700 {
lab=VOUT_20db}
N 500 2620 500 2660 {
lab=VDD}
N 600 2650 600 2700 {
lab=VOUT_20db}
N 400 2680 450 2680 {
lab=#net9}
N 600 2560 600 2650 {
lab=VOUT_20db}
N 530 2560 600 2560 {
lab=VOUT_20db}
N 390 2560 470 2560 {
lab=#net9}
N 390 2560 390 2680 {
lab=#net9}
N 390 2680 400 2680 {
lab=#net9}
N 350 2680 390 2680 {
lab=#net9}
N 180 2840 180 2860 {
lab=VSS}
N 180 2860 180 2880 {
lab=VSS}
N 180 2760 180 2780 {
lab=#net8}
N 180 2680 180 2700 {
lab=#net10}
N 180 2680 290 2680 {
lab=#net10}
N 180 2770 300 2770 {
lab=#net8}
N 300 2770 300 2820 {
lab=#net8}
N 300 2820 380 2820 {
lab=#net8}
N 380 2810 380 2820 {
lab=#net8}
N 380 2720 380 2750 {
lab=#net8}
N 380 2720 420 2720 {
lab=#net8}
N 380 2750 380 2810 {
lab=#net8}
N 640 2760 640 2790 {
lab=VSS}
C {devices/lab_pin.sym} -760 120 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -760 190 0 0 {name=V1 value=1.8

}
C {devices/gnd.sym} -760 240 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -830 120 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -830 190 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -830 240 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -520 240 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -520 310 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -420 120 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -420 180 0 0 {name=V4 value="ac 0.5 sin (0 550m 100k)"}
C {devices/vsource.sym} -610 180 0 0 {name=V5 value="ac -0.5"}
C {devices/lab_pin.sym} -610 120 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} 450 -10 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 190 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 370 130 0 0 {name=p4 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 370 90 0 0 {name=p5 sig_type=std_logic lab=VIN-
}
C {devices/capa.sym} 590 140 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 590 200 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 570 110 1 0 {name=p9 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/corner.sym} -660 -300 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} -520 -300 0 0 {name=spice only_toplevel=false
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

set appendwrite
  setseed 12
  reset
  let run=0
  dowhile run < 200
    save all
    ac dec 10 1 50G
    print run
    remzerovec
    write mc_tb.raw
    set appendwrite
    let run = run + 1
    reset
  end
.endc
"}
C {devices/lab_pin.sym} 500 580 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 780 0 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} 640 730 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 640 790 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 700 1 0 {name=p21 sig_type=std_logic lab=VOUT_c}
C {devices/vsource.sym} 320 860 0 0 {name=V6 value=0.9}
C {devices/lab_pin.sym} 320 930 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 320 770 0 0 {name=V7 value="ac 1"}
C {devices/lab_pin.sym} 450 1240 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 1530 0 0 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} 590 1480 0 0 {name=C3
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 590 1540 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 570 1450 1 0 {name=p24 sig_type=std_logic lab=VOUT_A+}
C {devices/vsource.sym} 270 1490 0 0 {name=V8 value=0.9}
C {devices/lab_pin.sym} 270 1560 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 450 1300 2 0 {name=V9 value="ac 1"}
C {devices/lab_pin.sym} 460 1930 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 460 2250 0 0 {name=p27 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} 600 2110 0 0 {name=C4
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 600 2170 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 580 2080 1 0 {name=p29 sig_type=std_logic lab=VOUT_A-}
C {devices/vsource.sym} 280 2120 0 0 {name=V10 value=0.9}
C {devices/lab_pin.sym} 280 2190 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 460 2190 0 0 {name=V11 value="ac 1"}
C {devices/lab_pin.sym} 500 2780 0 0 {name=p41 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 620 2700 1 0 {name=p43 sig_type=std_logic lab=VOUT_20db}
C {devices/lab_pin.sym} 500 2620 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {devices/res.sym} 500 2560 1 0 {name=R2
value=400k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 320 2680 1 0 {name=R3
value=40k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 180 2810 0 0 {name=V12 value=0.9}
C {devices/lab_pin.sym} 180 2880 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 180 2730 0 0 {name=V13 value="ac 1 sin (0 70m 100k)"}
C {devices/capa.sym} 640 2730 0 0 {name=C5
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 640 2790 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 2700 -965 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/mc_tb.raw ac "
}
C {VA001_PMOS_1.8_sky130A.sym} 500 2700 0 0 {name=x8}
C {VA001_PMOS_1.8_sky130A.sym} 460 2080 0 0 {name=x1}
C {VA001_PMOS_1.8_sky130A.sym} 450 1450 0 0 {name=x2}
C {VA001_PMOS_1.8_sky130A.sym} 500 700 0 0 {name=x3}
C {VA001_PMOS_1.8_sky130A.sym} 450 110 0 0 {name=x4}
