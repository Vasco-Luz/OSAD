v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 0 -530 0 -190 {}
L 4 -400 -520 -400 -190 {}
L 4 -400 -530 -400 -520 {}
L 4 -400 -190 -390 -190 {}
L 4 -140 -890 -140 -730 {}
L 4 -140 -730 180 -730 {}
L 4 180 -910 180 -730 {}
L 4 -140 -910 180 -910 {}
L 4 -140 -910 -140 -890 {}
L 4 -400 -530 0 -530 {}
L 4 -390 -190 0 -190 {}
T {SOURCES} -290 -600 0 0 1 1 {}
T {simulation scripts} -230 -990 0 0 1 1 {}
T {This will display the raw file of the top
most schematic where presumably simulation
has been run} 90 -250 0 0 0.2 0.2 {layer=4}
N -210 -340 -210 -320 {
lab=GND}
N -210 -440 -210 -400 {
lab=VDD}
N -330 -340 -330 -320 {
lab=GND}
N -330 -440 -330 -400 {
lab=VSS}
N 360 -630 360 -590 {
lab=VDD}
N 360 -510 360 -470 {
lab=VSS}
C {devices/lab_pin.sym} -210 -440 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -210 -370 0 0 {name=V1 value=5

}
C {devices/gnd.sym} -210 -320 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -330 -440 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -330 -370 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -330 -320 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -110 -860 0 0 {name=CORNER1 only_toplevel=true corner=tt}
C {/home/vasco/Desktop/OSAD/automatization_analog_design/transimpedance_amplifier_with_two_stage/opamp/opamp.sym} 360 -550 0 0 {name=x1}
C {devices/lab_pin.sym} 360 -630 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -470 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/simulator_commands.sym} 30 -860 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
.options savecurrents
.TEMP 27



.param W_M_1_2=1
.param L_M_1_2=0.5
.param m_M_1_2=1

.param W_M_3_4=1
.param L_M_3_4=0.5
.param m_M_3_4=1

.param W_M_5_6=1
.param L_M_5_6=0.5
.param m_M_5_6=1

.param R1=1k




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

save @m.x1.xm3.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm3.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm3.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm3.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm4.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm4.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm4.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm4.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[vgs]

save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vth]
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vds]
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vgs]


op
set appendwrite
write testbench_bias_generator.raw
wrdata M1.txt @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[vth] @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[vds] @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[vgs] @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[id]
wrdata M2.txt @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[vth] @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[vds] @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[vgs] @m.x1.xm2.msky130_fd_pr__pfet_g5v0d10v5[id]
wrdata M3.txt @m.x1.xm3.msky130_fd_pr__nfet_g5v0d10v5[vth] @m.x1.xm3.msky130_fd_pr__nfet_g5v0d10v5[vds] @m.x1.xm3.msky130_fd_pr__nfet_g5v0d10v5[vgs] @m.x1.xm3.msky130_fd_pr__nfet_g5v0d10v5[id]
wrdata M4.txt @m.x1.xm4.msky130_fd_pr__nfet_g5v0d10v5[vth] @m.x1.xm4.msky130_fd_pr__nfet_g5v0d10v5[vds] @m.x1.xm4.msky130_fd_pr__nfet_g5v0d10v5[vgs] @m.x1.xm4.msky130_fd_pr__nfet_g5v0d10v5[id]
wrdata M5.txt @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[vth] @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[vds] @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[vgs] @m.x1.xm5.msky130_fd_pr__nfet_g5v0d10v5[id]
wrdata M6.txt @m.x1.xm4.msky130_fd_pr__nfet_g5v0d10v5[vth] @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vds] @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vgs] @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[id]

dc TEMP -40 125 1
plot @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[id]

wrdata variation.txt @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[id]

.endc
"}
C {devices/launcher.sym} 160 -340 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 150 -180 0 0 {name=h3
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/testbench_bias_generator.raw"
}
