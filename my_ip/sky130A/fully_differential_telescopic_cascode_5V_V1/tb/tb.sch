v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {This will display the raw file of the top
most schematic where presumably simulation
has been run} -240 310 0 0 0.2 0.2 {layer=4}
N -150 20 -150 40 {
lab=GND}
N -150 -80 -150 -40 {
lab=VDD}
N -280 20 -280 40 {
lab=GND}
N -280 -80 -280 -40 {
lab=VSS}
N 150 -60 150 -20 {
lab=VDD}
N 150 80 150 120 {
lab=VSS}
C {sky130_fd_pr/corner.sym} -40 -330 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} 90 -330 0 0 {name=COMMANDS
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

op
write tb.raw

.endc
"}
C {devices/lab_pin.sym} -150 -80 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -150 -10 0 0 {name=V1 value=5

}
C {devices/gnd.sym} -150 40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -280 -80 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -280 -10 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -280 40 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} -170 220 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -180 380 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/test_analog.raw"
}
C {/home/gim/Desktop/OSAD/my_ip/sky130A/fully_differential_telescopic_cascode_5V_V1/fd_opamp.sym} 150 30 0 0 {name=x1}
C {devices/lab_pin.sym} 150 -60 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 120 2 0 {name=p14 sig_type=std_logic lab=VSS
}
