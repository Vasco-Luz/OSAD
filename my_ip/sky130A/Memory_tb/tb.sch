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
N 540 770 540 810 {
lab=VDD}
N 540 930 540 950 {
lab=VSS}
N 540 950 540 970 {
lab=VSS}
N 290 870 470 870 {
lab=read}
N 290 930 290 950 {
lab=VSS}
N 290 950 290 970 {
lab=VSS}
N 820 850 820 980 {
lab=#net2}
N 820 980 820 1020 {
lab=#net2}
N 620 1080 620 1100 {
lab=VSS}
N 620 1100 620 1120 {
lab=VSS}
N 820 1080 820 1100 {
lab=VSS}
N 820 1100 820 1120 {
lab=VSS}
N 620 580 620 620 {
lab=VDD}
N 620 580 820 580 {
lab=VDD}
N 820 580 820 620 {
lab=VDD}
N 580 650 620 650 {
lab=VDD}
N 580 580 580 650 {
lab=VDD}
N 580 580 620 580 {
lab=VDD}
N 820 650 860 650 {
lab=VDD}
N 860 580 860 650 {
lab=VDD}
N 820 580 860 580 {
lab=VDD}
N 690 760 690 780 {
lab=VSS}
N 690 780 690 800 {
lab=VSS}
N 690 650 690 700 {
lab=#net3}
N 660 650 690 650 {
lab=#net3}
N 750 760 750 780 {
lab=VSS}
N 750 780 750 800 {
lab=VSS}
N 750 650 780 650 {
lab=#net4}
N 610 850 620 850 {
lab=#net5}
N 610 890 820 890 {
lab=#net2}
N 620 680 620 850 {
lab=#net5}
N 620 850 620 1020 {
lab=#net5}
N 820 700 820 850 {
lab=#net2}
N 750 650 750 700 {
lab=#net4}
N 820 680 820 700 {
lab=#net2}
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
.control
save all
save @m.x1.xm1.msky130_fd_pr__pfet_01v8[gm]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8[vth]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8[gds]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8[gmbs]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8[vds]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8[vgs]


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


tran 100ps 5u
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
C {capa.sym} 660 -30 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
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
C {capa.sym} 860 -30 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 290 900 0 0 {name=V4 value=  "PULSE(0 1.8 500n 100n 100n 100n 200n)"}
C {Memory/SRAM_001_1_8_sky130A.sym} 550 870 0 0 {name=x2}
C {devices/lab_pin.sym} 540 770 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 970 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 970 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {capa.sym} 620 1050 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 620 1120 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 1120 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 690 730 0 0 {name=V5 value= "PULSE(1.8 0 0n 1n 1n 200n 400n)"}
C {devices/lab_pin.sym} 690 800 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 870 1 0 {name=p24 sig_type=std_logic lab=read}
C {devices/lab_pin.sym} 740 580 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 750 800 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_nf.sym} 800 650 0 0 {name=M3
L=0.15
W=12
nf=20 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} 640 650 0 1 {name=M4
L=0.15
W=12
nf=20 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 750 730 0 0 {name=V7 value= "PULSE(0 1.8 0n 1n 1n 200n 400n)"}
C {capa.sym} 820 1050 0 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
