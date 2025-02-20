v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1220 -290 -1220 -130 {}
L 4 -1220 -130 -900 -130 {}
L 4 -900 -310 -900 -130 {}
L 4 -1220 -310 -900 -310 {}
L 4 -1220 -310 -1220 -290 {}
T {simulation scripts} -1310 -390 0 0 1 1 {}
T {DC testbench} -550 70 0 0 0.4 0.4 {}
N -980 60 -980 80 {
lab=GND}
N -980 -40 -980 0 {
lab=VDD}
N -1050 60 -1050 80 {
lab=GND}
N -480 -130 -480 -90 {
lab=VSS}
N -670 270 -670 310 {
lab=VSS}
N -580 -190 -530 -190 {
lab=VIN+}
N -670 90 -670 140 {
lab=VIN+}
N -480 -370 -480 -330 {
lab=VDD}
N -410 -170 -360 -170 {
lab=VOUT}
N -670 200 -670 270 {
lab=VSS}
N -1050 -40 -1050 0 {
lab=VSS}
N -380 -170 -380 -40 {
lab=VOUT}
N -570 -40 -380 -40 {
lab=VOUT}
N -570 -150 -570 -40 {
lab=VOUT}
N -570 -150 -530 -150 {
lab=VOUT}
N -480 -270 -480 -210 {
lab=#net1}
C {devices/lab_pin.sym} -980 -40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -980 30 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -980 80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -480 -90 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1050 30 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -1050 80 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -1190 -260 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -1040 -260 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 1.8
.param VSS = 0

.control
save all
dc V4 0 5 0.01
wrdata VIN_sweep_DC.csv v(VOUT) i(Vmeas)
plot v(VOUT) v(VIN+)
plot i(Vmeas)

.endc
"}
C {devices/lab_pin.sym} -670 310 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -580 -190 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -670 170 0 0 {name=V4 value= 2.5}
C {devices/lab_pin.sym} -670 90 0 0 {name=p3 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} -480 -370 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -360 -170 2 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} -1050 -40 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {ammeter.sym} -480 -300 0 0 {name=Vmeas savecurrent=true}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} -480 -180 0 0 {name=x1}
