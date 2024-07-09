v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -1120 -70 -460 -70 {}
L 4 -460 -70 -370 -70 {}
L 4 -370 -70 -370 270 {}
L 4 -1110 270 -370 270 {}
L 4 -1120 -60 -1120 270 {}
L 4 -1120 -70 -1120 -60 {}
L 4 -1120 270 -1110 270 {}
L 4 -1530 -80 -1530 80 {}
L 4 -1530 80 -1210 80 {}
L 4 -1210 -100 -1210 80 {}
L 4 -1530 -100 -1210 -100 {}
L 4 -1530 -100 -1530 -80 {}
L 4 -40 -100 -40 160 {}
L 4 80 -120 480 -120 {}
L 4 480 -120 480 160 {}
L 4 -40 160 360 160 {}
L 4 360 160 480 160 {}
L 4 -40 -120 80 -120 {}
L 4 -40 -120 -40 -100 {}
B 2 1070 -160 1870 240 {flags=graph,unlocked

y2=81
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-35
x2=-4.52288
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

sim_type=tran

autoload=1
rawfile=$netlist_dir/tb.raw}
T {This will display the raw file of the top
most schematic where presumably simulation
has been run} -240 310 0 0 0.2 0.2 {layer=4}
T {SOURCES} -880 -140 0 0 1 1 {}
T {simulation scripts} -1620 -180 0 0 1 1 {}
T {Differential gain simulation} -130 -200 0 0 1 1 {}
T {AC results} 1647.5 -297.5 0 1 1 1 {}
N -570 140 -570 160 {
lab=GND}
N -570 40 -570 80 {
lab=VDD}
N -700 140 -700 160 {
lab=GND}
N -700 40 -700 80 {
lab=VSS}
N 150 -60 150 -20 {
lab=VDD}
N 150 80 150 120 {
lab=VSS}
N -910 170 -910 190 {
lab=VSS}
N -910 190 -910 210 {
lab=VSS}
N -810 20 -810 50 {
lab=VIN+}
N -1000 110 -810 110 {
lab=#net1}
N -1000 20 -1000 50 {
lab=VIN-}
N 70 -20 70 10 {
lab=VIN+}
N 70 10 110 10 {
lab=VIN+}
N 30 20 30 50 {
lab=VIN-}
N 30 50 110 50 {
lab=VIN-}
N 200 10 330 10 {
lab=VOUT}
N 200 50 330 50 {
lab=VOUT2}
N 330 10 400 10 {
lab=VOUT}
N 400 -70 400 -50 {
lab=VSS}
N 400 -80 400 -70 {
lab=VSS}
N 330 50 400 50 {
lab=VOUT2}
N 400 110 400 120 {
lab=VSS}
N 450 430 450 470 {
lab=VDD}
N 450 570 450 610 {
lab=VSS}
N 500 500 630 500 {
lab=VOUT_20db+}
N 500 540 630 540 {
lab=VOUT_20db-}
N 630 500 700 500 {
lab=VOUT_20db+}
N 700 420 700 440 {
lab=VSS}
N 700 410 700 420 {
lab=VSS}
N 630 540 700 540 {
lab=VOUT_20db-}
N 700 600 700 610 {
lab=VSS}
N 490 370 560 370 {
lab=VOUT_20db+}
N 560 370 560 500 {
lab=VOUT_20db+}
N 560 540 560 670 {
lab=VOUT_20db-}
N 490 670 560 670 {
lab=VOUT_20db-}
N 190 540 230 540 {
lab=#net2}
N 230 540 240 540 {
lab=#net2}
N 360 370 430 370 {
lab=#net3}
N 360 370 360 540 {
lab=#net3}
N 360 540 410 540 {
lab=#net3}
N 300 540 360 540 {
lab=#net3}
N 320 670 430 670 {
lab=#net4}
N 320 500 320 670 {
lab=#net4}
N 320 500 410 500 {
lab=#net4}
N 300 500 320 500 {
lab=#net4}
N -10 740 -10 760 {
lab=VSS}
N -10 760 -10 780 {
lab=VSS}
N 90 590 90 620 {
lab=#net5}
N -100 680 90 680 {
lab=#net6}
N -100 590 -100 620 {
lab=#net2}
N 90 500 90 590 {
lab=#net5}
N 90 500 200 500 {
lab=#net5}
N 200 500 240 500 {
lab=#net5}
N -100 540 190 540 {
lab=#net2}
N -100 540 -100 590 {
lab=#net2}
C {sky130_fd_pr/corner.sym} -1510 -40 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} -1380 -40 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
.options savecurrents
.TEMP 27
.control
save all
save @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm3.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm3.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm3.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm3.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm4.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm4.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm4.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm4.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm7.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm7.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm7.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm7.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm11.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm11.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm11.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm11.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm13.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm13.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm13.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm13.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm14.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm14.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm14.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm14.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm15.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm15.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm15.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm15.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm16.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm16.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm16.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm16.msky130_fd_pr__nfet_g5v0d10v5[vgs]


save @m.x1.xm17.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm17.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm17.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm17.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm18.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm18.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm18.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm18.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm19.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm19.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm19.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm19.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm20.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm20.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm20.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm20.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm21.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm21.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm21.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm21.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm22.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm22.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm22.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm22.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm23.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm23.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm23.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm23.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm24.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm24.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm24.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm24.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm25.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm25.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm25.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm25.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm26.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm26.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm26.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm26.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm27.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm27.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.x1.xm27.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.x1.xm27.msky130_fd_pr__pfet_g5v0d10v5[vgs]

save @m.x1.xm28.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm28.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm28.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm28.msky130_fd_pr__nfet_g5v0d10v5[vgs]

op
set appendwrite
write tb.raw

ac dec 10 1 50G
plot db(v(VOUT)) (180*ph(v(VOUT))/pi)
plot db(v(VOUT_20db+)) 
set appendwrite
write tb.raw

tran 1ns 100u
plot v(VOUT) v(VOUT2)
plot v(VOUT_20db+) 
set appendwrite
write tb.raw
.endc
"}
C {devices/lab_pin.sym} -570 40 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -570 110 0 0 {name=V1 value=5

}
C {devices/gnd.sym} -570 160 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -700 40 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -700 110 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -700 160 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} -170 220 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -180 380 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/test_analog.raw"
}
C {devices/lab_pin.sym} 150 -60 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 120 2 0 {name=p14 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -910 140 0 0 {name=V3 value=1}
C {devices/lab_pin.sym} -910 210 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -810 20 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -810 80 0 0 {name=V4 value="ac 0.5 sin (0 900u 100k)"}
C {devices/vsource.sym} -1000 80 0 0 {name=V5 value="ac -0.5 sin (0 -900u 100k)"}
C {devices/lab_pin.sym} -1000 20 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} 70 -20 0 0 {name=p1 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 30 20 0 0 {name=p2 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} 330 10 1 0 {name=p3 sig_type=std_logic lab=VOUT
}
C {devices/capa-2.sym} 400 -20 2 0 {name=C1
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {devices/lab_pin.sym} 400 -80 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/capa-2.sym} 400 80 0 1 {name=C2
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {devices/lab_pin.sym} 400 120 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 50 3 0 {name=p6 sig_type=std_logic lab=VOUT2
}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/fully_differential_telescopic_cascode_5V_V1/fd_opamp.sym} 150 30 0 0 {name=x1}
C {devices/lab_pin.sym} 450 430 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 610 2 0 {name=p15 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 630 500 1 0 {name=p18 sig_type=std_logic lab=VOUT_20db+
}
C {devices/capa-2.sym} 700 470 2 0 {name=C3
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {devices/lab_pin.sym} 700 410 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/capa-2.sym} 700 570 0 1 {name=C4
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {devices/lab_pin.sym} 700 610 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/fully_differential_telescopic_cascode_5V_V1/fd_opamp.sym} 450 520 0 0 {name=x2}
C {devices/res.sym} 460 370 1 0 {name=R2
value=400k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 270 500 1 0 {name=R3
value=40k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 630 540 3 0 {name=p22 sig_type=std_logic lab=VOUT_20db-
}
C {devices/res.sym} 460 670 1 0 {name=R1
value=400k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 270 540 1 0 {name=R4
value=40k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -10 710 0 0 {name=V6 value=1}
C {devices/lab_pin.sym} -10 780 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 90 650 0 0 {name=V7 value="ac 1 sin (0 10m 100k)"}
C {devices/vsource.sym} -100 650 0 0 {name=V8 value="ac -1 sin (0 -10m 100k)"}
C {devices/launcher.sym} 1020 -425 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb.raw tran "
}
