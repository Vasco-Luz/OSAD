v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {This will display the raw file of the top
most schematic where presumably simulation
has been run} -320 340 0 0 0.2 0.2 {layer=4}
N -580 -110 -580 -90 {
lab=GND}
N -580 -210 -580 -170 {
lab=VDD}
N -710 -110 -710 -90 {
lab=GND}
N -710 -210 -710 -170 {
lab=VSS}
N -470 140 -470 160 {
lab=VSS}
N -470 160 -470 180 {
lab=VSS}
N -560 80 -370 80 {
lab=#net1}
N -560 -10 -560 20 {
lab=VIN-}
N -370 -20 -370 10 {
lab=VIN+}
N -370 10 -370 20 {
lab=VIN+}
N 60 -280 60 -240 {
lab=VDD}
N 60 -120 60 -80 {
lab=VSS}
N 0 -260 0 -230 {
lab=VIN+}
N 0 -230 0 -220 {
lab=VIN+}
N -0 -170 0 -140 {}
N 0 -190 -0 -170 {}
N -0 -220 0 -190 {}
C {devices/lab_pin.sym} -580 -210 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -580 -140 0 0 {name=V1 value=1.8

}
C {devices/gnd.sym} -580 -90 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -710 -210 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -710 -140 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -710 -90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -470 110 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -470 180 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -370 50 0 0 {name=V4 value="ac 0.5 sin (0 550m 100k)"}
C {devices/vsource.sym} -560 50 0 0 {name=V5 value="ac -0.5"}
C {devices/lab_pin.sym} -560 -10 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {devices/simulator_commands.sym} -500 -470 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
.options savecurrents
.TEMP 27
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
write op_tb.raw

.endc
"}
C {sky130_fd_pr/corner.sym} -650 -480 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -240 250 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} -370 -20 0 0 {name=p4 sig_type=std_logic lab=VIN+
}
C {devices/launcher.sym} -260 410 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/test_analog.raw"
}
C {DDA001_PMOS_1.8_sky130A .sym} 80 -180 0 0 {name=x1}
C {devices/lab_pin.sym} 60 -280 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 60 -80 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 0 -260 0 0 {name=p5 sig_type=std_logic lab=VIN+
}
