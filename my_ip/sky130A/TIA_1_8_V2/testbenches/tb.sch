v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {This will display the raw file of the top
most schematic where presumably simulation
has been run} -500 520 0 0 0.2 0.2 {layer=4}
N -410 230 -410 250 {
lab=GND}
N -410 130 -410 170 {
lab=VDD}
N -540 230 -540 250 {
lab=GND}
N -540 130 -540 170 {
lab=VSS}
N -70 200 -70 240 {
lab=VDD}
N -70 340 -70 360 {
lab=GND}
C {sky130_fd_pr/corner.sym} -300 -120 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} -170 -120 0 0 {name=COMMANDS
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

save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[vth]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gds]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gmbs]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[vds]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[vgs]

save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vth]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gds]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gmbs]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vds]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vgs]


op
write tb.raw

.endc
"}
C {devices/lab_pin.sym} -410 130 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -410 200 0 0 {name=V1 value=1.8

}
C {devices/gnd.sym} -410 250 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -540 130 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -540 200 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -540 250 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} -420 430 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -440 590 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/test_analog.raw"
}
C {devices/lab_pin.sym} -70 200 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -70 360 0 0 {name=l2 lab=GND}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/TIA_1_8_V2/TI.sym} -70 280 0 0 {name=x1}
