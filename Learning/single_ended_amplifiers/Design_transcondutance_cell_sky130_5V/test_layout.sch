v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -1160 -100 -1160 60 {}
L 4 -1160 60 -840 60 {}
L 4 -840 -120 -840 60 {}
L 4 -1160 -120 -840 -120 {}
L 4 -1160 -120 -1160 -100 {}
T {simulation scripts} -1250 -200 0 0 1 1 {}
N -1120 250 -1120 270 {
lab=GND}
N -1120 150 -1120 190 {
lab=VDD}
N -990 250 -990 270 {
lab=GND}
N -990 150 -990 190 {
lab=VSS}
N -350 -240 -350 -200 {
lab=VDD}
N -370 -110 -370 -80 {
lab=#net1}
N -370 30 -370 70 {
lab=VSS}
N -370 -20 -370 30 {
lab=VSS}
N -330 70 -330 90 {
lab=GND}
N -330 -110 -330 -80 {
lab=#net2}
N -330 -20 -330 10 {
lab=#net3}
C {devices/lab_pin.sym} -1120 150 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -1120 220 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -1120 270 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -990 220 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -990 270 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -1130 -70 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -990 150 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/code.sym} -960 -70 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	

.Temp 27
.param VDD = 5
.param VSS = 0
.include ./Desktop/OSAD/Learning/single_ended_amplifiers/Design_transcondutance_cell_sky130_5V/pmos_current_mirror.spice


.control
save all

save @m.xm2.msky130_fd_pr__nfet_g5v0d10v5[vdsat]

dc V3 0 5 0.001
plot i(Vmeas)





.endc
"}
C {/home/vasco/Desktop/OSAD/Learning/single_ended_amplifiers/Design_transcondutance_cell_sky130_5V/pmos_current_mirror.sym} -300 -120 0 0 {name=x1}
C {devices/lab_pin.sym} -350 -240 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} -370 -50 0 0 {name=I0 value=7u}
C {devices/lab_pin.sym} -370 70 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -330 40 0 0 {name=V3 value=0

}
C {devices/gnd.sym} -330 90 0 0 {name=l2 lab=GND}
C {ammeter.sym} -330 -50 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
