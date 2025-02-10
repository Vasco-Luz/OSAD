v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1620 -480 -960 -480 {}
L 4 -960 -480 -870 -480 {}
L 4 -870 -480 -870 -140 {}
L 4 -1610 -140 -870 -140 {}
L 4 -1620 -480 -1620 -140 {}
L 4 -1620 -140 -1610 -140 {}
B 2 2410 -830 3210 -430 {flags=graph,unlocked

y2=34
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=11
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y1=-65
color=4
node="\\"Differencial gain ; vout db20() %0\\""

sim_type=ac
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 2410 -430 3210 -30 {flags=graph,unlocked
y1=-34.9
y2=324.1
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
B 2 2410 -30 3210 370 {flags=graph,unlocked

y2=0.01
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=11
divx=10
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y1=0

color=6
node="\\"CMRR ; vout VC / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 2410 370 3210 770 {flags=graph,unlocked

y2=33
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
y1=-21


color=7
node="\\"PSSR+ ; vout VOUT_A+ / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 2410 770 3210 1170 {flags=graph,unlocked

y2=69
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
y1=-4.7


color=8
node="\\"PSSR- ; vout VOUT_A- / db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 2410 1170 3210 1570 {flags=graph,unlocked

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
y1=-110


color=9
node="\\"20dB gain ; VOUT_20db db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 3460 -830 4260 -430 {flags=graph,unlocked
y1=0
y2=0.01
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
B 2 3460 -430 4260 -30 {flags=graph,unlocked
y1=0
y2=0.01
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
B 2 3460 -30 4260 370 {flags=graph,unlocked
y1=0
y2=0.01
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
B 2 4520 -820 5320 -420 {flags=graph,unlocked
y1=4.9e-08
y2=2.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=3.3
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
B 2 4520 -420 5320 -20 {flags=graph,unlocked
y1=1.6
y2=1.7
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=3.3
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
B 2 4518.75 -21.25 5318.75 378.75 {flags=graph,unlocked
y1=-0.097
y2=0.5
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


sim_type=dc

color=21
node="\\"offset; VOUT_swing net1 -\\""
rawfile=$netlist_dir/tb.raw
x2=1.8}
B 2 4518.75 378.75 5318.75 778.75 {flags=graph,unlocked
y1=0.00044
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
B 2 2410 1570 3210 1970 {flags=graph,unlocked

y2=6.9
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
y1=-110


color=17
node="\\"transimpedance ; VOUT_photo db20() %0\\""
rawfile=$netlist_dir/tb.raw
sim_type=ac
autoload=1}
B 2 3460 370 4260 770 {flags=graph,unlocked
y1=0
y2=0.01
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
T {SOURCES} -1380 -550 0 0 1 1 {}
T {Differential gain simulation} 140 -500 0 0 1 1 {}
T {AC results} 2987.5 -967.5 0 1 1 1 {}
T {tran results} 3767.5 -955 0 0 1 1 {}
T {DC waves} 4727.5 -915 0 0 1 1 {}
N -1430 -290 -1430 -270 {
lab=GND}
N -1430 -390 -1430 -350 {
lab=VDD}
N -1500 -290 -1500 -270 {
lab=GND}
N -1500 -390 -1500 -350 {
lab=VSS}
N -1190 -240 -1190 -200 {
lab=VSS}
N -1090 -390 -1090 -360 {
lab=VIN+}
N -1280 -300 -1090 -300 {
lab=#net1}
N -1280 -390 -1280 -360 {
lab=VIN-}
N 200 -280 200 -230 {lab=VDD}
N 200 -150 200 -110 {lab=VSS}
N 120 -210 150 -210 {lab=VIN-}
N 120 -170 150 -170 {lab=VIN+}
N 270 -190 540 -190 {lab=VOUT}
N 540 -130 540 -100 {
lab=VSS}
C {devices/lab_pin.sym} -1430 -390 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -1430 -320 0 0 {name=V1 value=3.3

}
C {devices/gnd.sym} -1430 -270 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1500 -390 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1500 -320 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -1500 -270 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -1190 -270 0 0 {name=V3 value=1.65}
C {devices/lab_pin.sym} -1190 -200 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1090 -390 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -1090 -330 0 0 {name=V4 value= "ac 0.5 sin (0 1m 100k)"}
C {devices/vsource.sym} -1280 -330 0 0 {name=V5 value="ac -0.5"}
C {devices/lab_pin.sym} -1280 -390 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {devices/code_shown.sym} -720 -530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerHBT.lib hbt_typ
"}
C {devices/code_shown.sym} -720 -450 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/code_shown.sym} -1130 -830 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
op
ac dec 10 1 100G
set appendwrite
write tb.raw
plot db(v(VOUT)) (180*ph(v(VOUT))/pi)
dc V4 0 3.3 0.001
set appendwrite
tran 10ns 50u
set appendwrite
write tb.raw
plot v(VOUT) V(VIN+)


.endc
"}
C {devices/lab_pin.sym} 480 -360 3 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 290 -140 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {sg13g2_pr/rhigh.sym} 190 -290 0 0 {name=R1
w=1e-6
l=2e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {devices/lab_pin.sym} 80 -140 0 0 {name=p14 sig_type=std_logic lab=VIN+}
C {sg13g2_pr/rppd.sym} 280 60 0 0 {name=R2
w=0.5e-6
l=1.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {devices/lab_pin.sym} 280 120 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 700 -130 2 0 {name=p17 sig_type=std_logic lab=VOUT}
C {sg13g2_pr/pnpMPA.sym} 680 -230 0 0 {name=Q3
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
}
C {sg13g2_pr/rhigh.sym} 700 -310 0 0 {name=R3
w=2e-6
l=0.5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 700 40 0 0 {name=R4
w=0.5e-6
l=5.4e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {devices/lab_pin.sym} 590 -230 3 0 {name=p4 sig_type=std_logic lab=Vout_1_stage}
C {devices/lab_pin.sym} 120 -170 0 0 {name=p14 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 340 -190 2 0 {name=p17 sig_type=std_logic lab=VOUT}
C {devices/launcher.sym} 3730 -1145 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb.raw tran "
}
C {devices/lab_pin.sym} 490 -140 0 1 {name=p5 sig_type=std_logic lab=VIN-}
C {sg13g2_pr/npn13G2l.sym} 170 -140 0 0 {name=Q4
model=npn13G2l
spiceprefix=X
Nx=1
le=1.0e-6}
C {sg13g2_pr/npn13G2l.sym} 400 -140 0 1 {name=Q1
model=npn13G2l
spiceprefix=X
Nx=1
le=1.0e-6}
C {devices/lab_pin.sym} 120 -210 2 1 {name=p5 sig_type=std_logic lab=VIN-}
C {ihp-sg13g2/Amplifiers/amp001_3_3_ihp-sg13g2.sym} 200 -190 0 0 {name=x1}
C {devices/lab_pin.sym} 200 -280 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -110 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 540 -160 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 540 -100 0 0 {name=p19 sig_type=std_logic lab=VSS}
