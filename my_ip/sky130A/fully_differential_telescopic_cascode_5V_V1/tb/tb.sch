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
N 230 330 230 350 {
lab=VSS}
N 230 350 230 370 {
lab=VSS}
N 330 180 330 210 {
lab=VIN+}
N 140 270 330 270 {
lab=#net1}
N 140 180 140 210 {
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
lab=#net2}
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

op
write tb.raw

ac dec 10 1 50G
plot db(v(VOUT)) (180*ph(v(VOUT))/pi)
set appendwrite
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
C {devices/lab_pin.sym} 150 -60 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 120 2 0 {name=p14 sig_type=std_logic lab=VSS
}
C {/home/vasco/Desktop/OSAD/my_ip/sky130A/fully_differential_telescopic_cascode_5V_V1/fd_opamp.sym} 150 30 0 0 {name=x1}
C {devices/vsource.sym} 230 300 0 0 {name=V3 value=2.5}
C {devices/lab_pin.sym} 230 370 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 180 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} 330 240 0 0 {name=V4 value="ac 0.5 sin (0 550m 100k)"}
C {devices/vsource.sym} 140 240 0 0 {name=V5 value="ac -0.5"}
C {devices/lab_pin.sym} 140 180 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} 70 -20 0 0 {name=p1 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 30 20 0 0 {name=p2 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} 330 10 1 0 {name=p3 sig_type=std_logic lab=VOUT
}
