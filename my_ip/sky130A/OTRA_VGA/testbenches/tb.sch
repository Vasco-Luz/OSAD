v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {This will display the raw file of the top
most schematic where presumably simulation
has been run} -50 390 0 0 0.2 0.2 {layer=4}
N 40 100 40 120 {
lab=GND}
N 40 0 40 40 {
lab=VDD}
N -90 100 -90 120 {
lab=GND}
N -90 0 -90 40 {
lab=VSS}
N 450 -20 450 20 {
lab=VDD}
N 450 140 450 180 {
lab=VSS}
C {sky130_fd_pr/corner.sym} -30 -210 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} 40 0 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 40 70 0 0 {name=V1 value=1.8

}
C {devices/gnd.sym} 40 120 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -90 0 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -90 70 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -90 120 0 0 {name=l1 lab=GND}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/OTRA_VGA/OTRA.sym} 520 140 0 0 {name=x1}
C {devices/lab_pin.sym} 450 -20 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 180 2 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/simulator_commands.sym} 100 -210 0 0 {name=COMMANDS
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

save @m.x1.xm8.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm8.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm8.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm8.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm8.msky130_fd_pr__nfet_01v8[vds]
save @m.x1.xm8.msky130_fd_pr__nfet_01v8[vgs]

op
write tb.raw

.endc
"}
C {devices/launcher.sym} 30 300 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 10 460 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/test_analog.raw"
}
