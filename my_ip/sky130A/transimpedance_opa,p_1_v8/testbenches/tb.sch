v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 940 -700 1740 -300 {flags=graph

y2=100
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
y1=-40
color=4
node="\\"Differencial gain ; vout db20() %0\\""}
B 2 940 -300 1740 100 {flags=graph
y1=0
y2=180
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
node="\\"Phase ; ph(vout) 180 + \\""}
B 2 940 100 1740 500 {flags=graph

y2=100
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
y1=-20

color=6
node="\\"CMRR ; vout VOUT_c / db20() %0\\""}
B 2 940 500 1740 900 {flags=graph

y2=100
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
y1=-40


color=7
node="\\"PSSR+ ; vout VOUT_A+ / db20() %0\\""}
B 2 940 900 1740 1300 {flags=graph

y2=100
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
y1=-40


color=8
node="\\"PSSR- ; vout VOUT_A- / db20() %0\\""}
B 2 940 1300 1740 1700 {flags=graph

y2=21
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


color=9
node="\\"20dB gain ; VOUT_20db db20() %0\\""}
B 2 1990 -700 2790 -300 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=1
x2=5e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="\\"inverter with 10 gain; vout_20db \\"
\\"input signal; net10\\""
sim_type=ac}
B 2 1990 -300 2790 100 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=1
x2=5e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=ac
color=6
node="\\"buffer swing; VOUT_swing\\""}
B 2 1990 100 2790 500 {flags=graph
y1=-0.0661532
y2=1.8816
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=1
x2=5e+10

subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=ac
color="6 4 8"
node="\\"output wave; VOUT_rate\\"
\\"slew rate; VOUT_rate deriv0()s\\"
\\"input square wave;net14\\""
divx=20}
B 2 3050 -690 3850 -290 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=1
x2=5e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"dc variation; VOUT\\""
sim_type=ac}
B 2 3050 -290 3850 110 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=1
x2=5e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=ac
color="10 12"
node="\\"buffer swing dc; VOUT_swing\\"
\\"VIN; net1\\""}
B 2 3048.75 108.75 3848.75 508.75 {flags=graph
y1=9.7e-06
y2=0.11
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=1
x2=5e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


sim_type=ac

color=21
node="\\"offset; VOUT_swing net1 -\\""}
T {AC results} 1162.5 -837.5 0 0 1 1 {}
T {tran results} 2297.5 -825 0 0 1 1 {}
T {DC waves} 3257.5 -785 0 0 1 1 {}
N -190 -180 -190 -160 {
lab=GND}
N -190 -280 -190 -240 {
lab=VDD}
N -320 -180 -320 -160 {
lab=GND}
N -320 -280 -320 -240 {
lab=VSS}
N -80 70 -80 90 {
lab=VSS}
N -80 90 -80 110 {
lab=VSS}
N 20 -80 20 -50 {
lab=VIN+}
N -170 10 20 10 {
lab=#net1}
N -170 -80 -170 -50 {
lab=VIN-}
N 470 -620 470 -580 {
lab=VDD}
N 470 -500 470 -460 {
lab=VSS}
N 390 -520 420 -520 {
lab=VIN+}
N 390 -560 420 -560 {
lab=VIN-}
N 540 -540 610 -540 {
lab=VOUT}
N 610 -480 610 -450 {
lab=VSS}
N 470 -660 470 -620 {
lab=VDD}
N -440 10 -440 50 {
lab=VDD}
N -440 130 -440 170 {
lab=VSS}
N -520 110 -490 110 {
lab=#net2}
N -520 70 -490 70 {
lab=#net2}
N -370 90 -300 90 {
lab=VOUT_c}
N -300 150 -300 180 {
lab=VSS}
N -440 -30 -440 10 {
lab=VDD}
N -620 280 -620 300 {
lab=VSS}
N -620 300 -620 320 {
lab=VSS}
N -620 70 -620 100 {
lab=#net2}
N -620 70 -520 70 {
lab=#net2}
N -540 70 -540 110 {
lab=#net2}
N -540 110 -520 110 {
lab=#net2}
N -620 190 -620 220 {
lab=#net3}
N -620 100 -620 130 {
lab=#net2}
N -430 530 -430 570 {
lab=#net4}
N -430 650 -430 690 {
lab=VSS}
N -510 630 -480 630 {
lab=#net5}
N -510 590 -480 590 {
lab=#net5}
N -360 610 -290 610 {
lab=VOUT_A+}
N -290 670 -290 700 {
lab=VSS}
N -430 490 -430 530 {
lab=#net4}
N -610 680 -610 700 {
lab=VSS}
N -610 700 -610 720 {
lab=VSS}
N -530 590 -530 630 {
lab=#net5}
N -530 630 -510 630 {
lab=#net5}
N -610 590 -610 620 {
lab=#net5}
N -610 590 -510 590 {
lab=#net5}
N -430 400 -430 430 {
lab=VDD}
N -430 900 -430 940 {
lab=VDD}
N -430 1020 -430 1060 {
lab=#net6}
N -510 1000 -480 1000 {
lab=#net7}
N -510 960 -480 960 {
lab=#net7}
N -360 980 -290 980 {
lab=VOUT_A-}
N -290 1040 -290 1070 {
lab=VSS}
N -430 860 -430 900 {
lab=VDD}
N -610 1050 -610 1070 {
lab=VSS}
N -610 1070 -610 1090 {
lab=VSS}
N -530 960 -530 1000 {
lab=#net7}
N -530 1000 -510 1000 {
lab=#net7}
N -610 960 -610 990 {
lab=#net7}
N -610 960 -510 960 {
lab=#net7}
N -430 830 -430 860 {
lab=VDD}
N -430 1120 -430 1150 {
lab=VSS}
N -350 1460 -350 1500 {
lab=VSS}
N -430 1440 -400 1440 {
lab=#net8}
N -280 1420 -210 1420 {
lab=VOUT_20db}
N -350 1340 -350 1380 {
lab=VDD}
N -250 1370 -250 1420 {
lab=VOUT_20db}
N -450 1400 -400 1400 {
lab=#net9}
N -250 1280 -250 1370 {
lab=VOUT_20db}
N -320 1280 -250 1280 {
lab=VOUT_20db}
N -460 1280 -380 1280 {
lab=#net9}
N -460 1280 -460 1400 {
lab=#net9}
N -460 1400 -450 1400 {
lab=#net9}
N -500 1400 -460 1400 {
lab=#net9}
N -670 1560 -670 1580 {
lab=VSS}
N -670 1580 -670 1600 {
lab=VSS}
N -670 1480 -670 1500 {
lab=#net8}
N -670 1400 -670 1420 {
lab=#net10}
N -670 1400 -560 1400 {
lab=#net10}
N -670 1490 -550 1490 {
lab=#net8}
N -550 1490 -550 1540 {
lab=#net8}
N -550 1540 -470 1540 {
lab=#net8}
N -470 1530 -470 1540 {
lab=#net8}
N -470 1440 -470 1470 {
lab=#net8}
N -470 1440 -430 1440 {
lab=#net8}
N -470 1470 -470 1530 {
lab=#net8}
N -340 1770 -340 1810 {
lab=VSS}
N -420 1750 -390 1750 {
lab=#net11}
N -340 1650 -340 1690 {
lab=VDD}
N -440 1710 -390 1710 {
lab=VOUT_swing}
N -450 1710 -440 1710 {
lab=VOUT_swing}
N -460 1750 -420 1750 {
lab=#net11}
N -270 1730 -210 1730 {
lab=VOUT_swing}
N -210 1480 -210 1510 {
lab=VSS}
N -460 1750 -460 1770 {
lab=#net11}
N -210 1630 -210 1730 {
lab=VOUT_swing}
N -450 1630 -210 1630 {
lab=VOUT_swing}
N -450 1630 -450 1710 {
lab=VOUT_swing}
N -1030 1900 -1030 1940 {
lab=VSS}
N -1110 1880 -1080 1880 {
lab=#net12}
N -1030 1780 -1030 1820 {
lab=VDD}
N -1150 1880 -1110 1880 {
lab=#net12}
N -960 1860 -900 1860 {
lab=VOUT_rate}
N -1150 2040 -1150 2060 {
lab=VSS}
N -1150 2060 -1150 2080 {
lab=VSS}
N -1150 1960 -1150 1980 {
lab=#net12}
N -1150 1880 -1150 1900 {
lab=#net12}
N -810 1920 -810 1950 {
lab=VSS}
N -900 1860 -810 1860 {
lab=VOUT_rate}
N -1300 1910 -1300 1930 {
lab=VSS}
N -1300 1930 -1300 1950 {
lab=VSS}
N -1300 1840 -1300 1850 {
lab=#net13}
N -1300 1840 -1080 1840 {
lab=#net13}
N -1150 1900 -1150 1960 {
lab=#net12}
N -460 1830 -460 1860 {
lab=VIN-}
C {devices/lab_pin.sym} -190 -280 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -190 -210 0 0 {name=V1 value=1.8

}
C {devices/gnd.sym} -190 -160 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -320 -280 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -320 -210 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -320 -160 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -80 40 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -80 110 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 -80 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} 20 -20 0 0 {name=V4 value="ac 0.5 sin (0 550m 100k)"}
C {devices/vsource.sym} -170 -20 0 0 {name=V5 value="ac -0.5"}
C {devices/lab_pin.sym} -170 -80 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} 470 -660 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -460 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 390 -520 0 0 {name=p4 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 390 -560 0 0 {name=p5 sig_type=std_logic lab=VIN-
}
C {devices/capa.sym} 610 -510 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 610 -450 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 590 -540 1 0 {name=p9 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/corner.sym} -510 -440 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -370 -440 0 0 {name=spice only_toplevel=false
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

tran 1ns 100u
set appendwrite
write tb.raw
noise v(VOUT,VSS) V4 dec 10 1 10G
set appendwrite
write tb.raw
plot inoise_spectrum

dc V3 0 1.8 0.00001 
set appendwrite
write tb.raw
.endc
"}
C {devices/launcher.sym} 260 -245 0 0 {name=h5
descr="ac simulation waves" 
tclcommand="xschem raw_read $netlist_dir/tb.raw ac"
}
C {devices/launcher.sym} 260 -200 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/transimpedance_opa,p_1_v8/op_amp.sym} 470 -540 0 0 {name=x1}
C {devices/lab_pin.sym} -440 -30 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -440 170 0 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} -300 120 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -300 180 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -320 90 1 0 {name=p21 sig_type=std_logic lab=VOUT_c}
C {devices/vsource.sym} -620 250 0 0 {name=V6 value=0.9}
C {devices/lab_pin.sym} -620 320 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -620 160 0 0 {name=V7 value="ac 1"}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/transimpedance_opa,p_1_v8/op_amp.sym} -440 90 0 0 {name=x2}
C {devices/lab_pin.sym} -430 400 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -430 690 0 0 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} -290 640 0 0 {name=C3
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -290 700 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -310 610 1 0 {name=p24 sig_type=std_logic lab=VOUT_A+}
C {devices/vsource.sym} -610 650 0 0 {name=V8 value=0.9}
C {devices/lab_pin.sym} -610 720 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -430 460 2 0 {name=V9 value="ac 1"}
C {devices/lab_pin.sym} -430 830 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -430 1150 0 0 {name=p27 sig_type=std_logic lab=VSS
}
C {devices/capa.sym} -290 1010 0 0 {name=C4
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -290 1070 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -310 980 1 0 {name=p29 sig_type=std_logic lab=VOUT_A-}
C {devices/vsource.sym} -610 1020 0 0 {name=V10 value=0.9}
C {devices/lab_pin.sym} -610 1090 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -430 1090 0 0 {name=V11 value="ac 1"}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/transimpedance_opa,p_1_v8/op_amp.sym} -430 610 0 0 {name=x4}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/transimpedance_opa,p_1_v8/op_amp.sym} -430 980 0 0 {name=x5}
C {devices/lab_pin.sym} -350 1500 0 0 {name=p41 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -230 1420 1 0 {name=p43 sig_type=std_logic lab=VOUT_20db}
C {devices/lab_pin.sym} -350 1340 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {devices/res.sym} -350 1280 1 0 {name=R2
value=400k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -530 1400 1 0 {name=R3
value=40k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -670 1530 0 0 {name=V12 value=0.9}
C {devices/lab_pin.sym} -670 1600 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -670 1450 0 0 {name=V13 value="ac 1 sin (0 70m 100k)"}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/transimpedance_opa,p_1_v8/op_amp.sym} -350 1420 0 0 {name=x3}
C {devices/launcher.sym} 255 -152.5 0 0 {name=h2
descr="tran simulation waves" 
tclcommand="xschem raw_read $netlist_dir/tb.raw tran"
}
C {devices/lab_pin.sym} -340 1810 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -340 1650 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/transimpedance_opa,p_1_v8/op_amp.sym} -340 1730 0 0 {name=x6}
C {devices/capa.sym} -210 1450 0 0 {name=C5
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -210 1510 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -460 1800 0 0 {name=V15 value="ac 1 sin (0 500m 100k)"}
C {devices/lab_pin.sym} -210 1660 2 0 {name=p31 sig_type=std_logic lab=VOUT_swing}
C {devices/lab_pin.sym} -1030 1940 0 0 {name=p32 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -1030 1780 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/transimpedance_opa,p_1_v8/op_amp.sym} -1030 1860 0 0 {name=x7}
C {devices/vsource.sym} -1150 2010 0 0 {name=V16 value=0.9}
C {devices/lab_pin.sym} -1150 2080 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -880 1860 1 0 {name=p35 sig_type=std_logic lab=VOUT_rate}
C {devices/capa.sym} -810 1890 0 0 {name=C6
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -810 1950 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1300 1950 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -1300 1880 0 0 {name=V19 value="PULSE(0 1.8 0n 1n 1n 1u 2u)"}
C {devices/launcher.sym} 255 -97.5 0 0 {name=h3
descr="dc simulation waves" 
tclcommand="xschem raw_read $netlist_dir/tb.raw dc"
}
C {devices/lab_pin.sym} -460 1860 0 0 {name=p38 sig_type=std_logic lab=VIN-
}
