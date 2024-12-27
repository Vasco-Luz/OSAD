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
B 2 1990 -700 2790 -300 {flags=graph,unlocked
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"read; read  \\""
sim_type=tran
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 1990 -300 2790 100 {flags=graph,unlocked
y1=0.18
y2=1.98
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-2.5e-07
x2=4.75e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=7
node="\\"read_precharge; read_precharge\\""
sim_type=tran
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 1990 100 2790 500 {flags=graph,unlocked
y1=-3.7e-06
y2=1.9
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=8
node="\\"Q; Q_read\\""
sim_type=tran
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 1990 500 2790 900 {flags=graph,unlocked
y1=1.7
y2=1.9
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=7
node="\\"-Q_read; -Q_read\\""
sim_type=tran
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 2790 -700 3590 -300 {flags=graph,unlocked
y1=-9.3e-17
y2=0.019
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"inv; y\\""
sim_type=tran
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 2790 -300 3590 100 {flags=graph,unlocked
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"wr; wr\\""
sim_type=tran
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 2790 100 3590 500 {flags=graph,unlocked
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"B_line; B_line\\""
sim_type=tran
rawfile=$netlist_dir/tb.raw
autoload=1}
B 2 2790 500 3590 900 {flags=graph,unlocked
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=2.5e-05
x2=0.000125
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"B_line_neg; B_line_neg\\""
sim_type=tran
rawfile=$netlist_dir/tb.raw
autoload=1}
T {tran results} 2297.5 -825 0 0 1 1 {}
T {SOURCES} -1380 -550 0 0 1 1 {}
T {simulation scripts} -1450 -940 0 0 1 1 {}
N -1430 -290 -1430 -270 {
lab=GND}
N -1430 -390 -1430 -350 {
lab=VDD}
N -1500 -290 -1500 -270 {
lab=GND}
N -1500 -390 -1500 -350 {
lab=VSS}
N 580 -310 580 -270 {
lab=VDD}
N 580 -150 580 -130 {
lab=VSS}
N 580 -130 580 -110 {
lab=VSS}
N 330 -210 510 -210 {
lab=read}
N 330 -150 330 -130 {
lab=VSS}
N 330 -130 330 -110 {
lab=VSS}
N 860 -230 860 -100 {
lab=-Q_read}
N 860 -100 860 -60 {
lab=-Q_read}
N 660 0 660 20 {
lab=VSS}
N 660 20 660 40 {
lab=VSS}
N 860 0 860 20 {
lab=VSS}
N 860 20 860 40 {
lab=VSS}
N 660 -500 660 -460 {
lab=VDD}
N 660 -500 860 -500 {
lab=VDD}
N 860 -500 860 -460 {
lab=VDD}
N 620 -430 660 -430 {
lab=VDD}
N 620 -500 620 -430 {
lab=VDD}
N 620 -500 660 -500 {
lab=VDD}
N 860 -430 900 -430 {
lab=VDD}
N 900 -500 900 -430 {
lab=VDD}
N 860 -500 900 -500 {
lab=VDD}
N 730 -320 730 -300 {
lab=VSS}
N 730 -300 730 -280 {
lab=VSS}
N 730 -430 730 -380 {
lab=read_precharge}
N 700 -430 730 -430 {
lab=read_precharge}
N 790 -320 790 -300 {
lab=VSS}
N 790 -300 790 -280 {
lab=VSS}
N 790 -430 820 -430 {
lab=#net1}
N 650 -230 660 -230 {
lab=Q_read}
N 650 -190 860 -190 {
lab=-Q_read}
N 660 -400 660 -230 {
lab=Q_read}
N 660 -230 660 -60 {
lab=Q_read}
N 860 -380 860 -230 {
lab=-Q_read}
N 790 -430 790 -380 {
lab=#net1}
N 860 -400 860 -380 {
lab=-Q_read}
N 500 130 570 130 {
lab=y}
N 410 -200 410 130 {
lab=read}
N 410 -210 410 -200 {
lab=read}
N 570 190 570 210 {
lab=VSS}
N 570 210 570 230 {
lab=VSS}
N 200 420 200 440 {
lab=VSS}
N 200 440 200 460 {
lab=VSS}
N 200 360 340 360 {
lab=#net2}
N 280 380 340 380 {
lab=#net3}
N 660 420 660 440 {
lab=VSS}
N 660 440 660 460 {
lab=VSS}
N 480 360 660 360 {
lab=wr}
N 490 510 490 530 {
lab=VSS}
N 490 530 490 550 {
lab=VSS}
N 490 400 490 450 {
lab=B_line_neg}
N 480 400 490 400 {
lab=B_line_neg}
N 580 490 580 510 {
lab=VSS}
N 580 510 580 530 {
lab=VSS}
N 480 380 580 380 {
lab=B_line}
N 580 380 580 430 {
lab=B_line}
N 280 380 280 450 {
lab=#net3}
N 280 510 280 530 {
lab=VSS}
N 280 530 280 550 {
lab=VSS}
C {devices/lab_pin.sym} -1430 -390 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -1430 -320 0 0 {name=V1 value=1.8

}
C {devices/gnd.sym} -1430 -270 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1500 -390 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1500 -320 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -1500 -270 0 0 {name=l1 lab=GND}
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
.include ~/PDK/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.include /home/vasco/Desktop/OSAD/my_ip/LIB/digital/inverter.spice

VVPWR VPWR 0 1.8
VVGND VGND 0 0
VVNB VNB 0 0
VVPB VPB 0 1.8

.control
save all
op
write tb.raw
set appendwrite

tran 1ns 100u
set appendwrite
write tb.raw

.endc
"}
C {devices/launcher.sym} 2260 -1015 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb.raw tran "
}
C {devices/launcher.sym} 1650 -760 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 330 -180 0 0 {name=V17 value=  "PULSE(0 1.8 500n 100n 100n 1u 2u)"}
C {Memory/SRAM_001_1_8_sky130A.sym} 590 -210 0 0 {name=x1}
C {devices/lab_pin.sym} 580 -310 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 580 -110 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 -110 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 40 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 860 40 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 730 -350 0 0 {name=V6 value= "PULSE(1.8 0 0n 1n 1n 200n 20u)"}
C {devices/lab_pin.sym} 730 -280 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -380 0 0 {name=p10 sig_type=std_logic lab=Q_read}
C {devices/lab_pin.sym} 860 -380 0 0 {name=p11 sig_type=std_logic lab=-Q_read}
C {devices/lab_pin.sym} 730 -430 1 0 {name=p14 sig_type=std_logic lab=read_precharge}
C {devices/lab_pin.sym} 420 -210 1 0 {name=p15 sig_type=std_logic lab=read}
C {devices/lab_pin.sym} 780 -500 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 -280 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_nf.sym} 840 -430 0 0 {name=M2
L=0.15
W=12
nf=20 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} 680 -430 0 1 {name=M1
L=0.15
W=12
nf=20 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 790 -350 0 0 {name=V3 value= "PULSE(1.8 0 0n 1n 1n 200n 20u)"}
C {devices/lab_pin.sym} 570 130 1 0 {name=p7 sig_type=std_logic lab=y}
C {devices/lab_pin.sym} 570 230 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 860 -30 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 660 -30 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 570 160 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 200 390 0 0 {name=V4 value=  "PULSE(0 1.8 500n 100n 100n 1u 2u)"}
C {devices/lab_pin.sym} 200 460 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 460 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 660 390 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 490 550 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 490 480 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 580 530 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 580 460 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 630 360 1 0 {name=p22 sig_type=std_logic lab=wr}
C {devices/lab_pin.sym} 580 400 2 0 {name=p23 sig_type=std_logic lab=B_line}
C {devices/vsource.sym} 280 480 0 0 {name=V5 value=  "PULSE(0 1.8 500n 100n 100n 1u 2u)"}
C {devices/lab_pin.sym} 280 550 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 430 2 0 {name=p24 sig_type=std_logic lab=B_line_neg}
C {digital/inverter.sym} 470 130 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR}
