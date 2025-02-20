v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 670 -960 670 -800 {}
L 4 670 -800 990 -800 {}
L 4 990 -980 990 -800 {}
L 4 670 -980 990 -980 {}
L 4 670 -980 670 -960 {}
T {simulation scripts} 580 -1060 0 0 1 1 {}
T {This is for monte carlo} 560 -530 0 0 0.4 0.4 {}
N 1220 -600 1220 -580 {
lab=GND}
N 1220 -700 1220 -660 {
lab=VDD}
N 1150 -600 1150 -580 {
lab=GND}
N 1150 -700 1150 -660 {
lab=VSS}
N 900 -170 900 -130 {
lab=VSS}
N 800 -230 850 -230 {
lab=#net1}
N 900 -410 900 -370 {
lab=VDD}
N 970 -210 1020 -210 {
lab=VOUT_DC}
N 810 -190 850 -190 {
lab=VOUT_DC}
N 900 -310 900 -250 {
lab=#net2}
N 710 -230 800 -230 {lab=#net1}
N 1170 -120 1170 -80 {
lab=VSS}
N 1160 -210 1170 -210 {lab=VOUT_DC}
N 1170 -210 1170 -180 {lab=VOUT_DC}
N 650 -230 710 -230 {lab=#net1}
N 760 -190 810 -190 {lab=VOUT_DC}
N 650 -170 650 -150 {lab=GND}
N 760 -190 760 -130 {lab=VOUT_DC}
N 1020 -210 1020 -70 {lab=VOUT_DC}
N 1010 -70 1020 -70 {lab=VOUT_DC}
N 760 -130 760 -70 {lab=VOUT_DC}
N 760 -70 1010 -70 {lab=VOUT_DC}
N 1060 -210 1160 -210 {lab=VOUT_DC}
N 1020 -210 1060 -210 {lab=VOUT_DC}
C {devices/lab_pin.sym} 1220 -700 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1220 -630 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} 1220 -580 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1150 -630 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} 1150 -580 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} 700 -930 0 0 {name=CORNER only_toplevel=true corner=mc}
C {devices/code.sym} 840 -930 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 5
.param VSS = 0
.param CL = 3p
.param mc_mm_switch = 1

.control

	save all
	dc V12 0 1.8 0.01
	plot v(VOUT_DC)
	wrdata mc_dc.csv v(VOUT_DC) i(Vmeas1)
.endc
"}
C {devices/lab_pin.sym} 1150 -700 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 900 -130 0 0 {name=p30 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 900 -410 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1060 -210 3 0 {name=p32 sig_type=std_logic lab=VOUT_DC
}
C {ammeter.sym} 900 -340 0 0 {name=Vmeas1 savecurrent=true}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 900 -220 0 0 {name=x5}
C {capa.sym} 1170 -150 0 0 {name=C9
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1170 -80 0 0 {name=p33 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 650 -200 0 0 {name=V12 value= 0.9}
C {devices/gnd.sym} 650 -150 0 0 {name=l7 lab=GND}
