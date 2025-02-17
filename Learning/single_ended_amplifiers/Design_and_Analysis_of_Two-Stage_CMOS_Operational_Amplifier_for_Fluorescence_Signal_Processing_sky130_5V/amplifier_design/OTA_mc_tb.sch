v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -520 -210 -520 -50 {}
L 4 -520 -50 -200 -50 {}
L 4 -200 -230 -200 -50 {}
L 4 -520 -230 -200 -230 {}
L 4 -520 -230 -520 -210 {}
T {simulation scripts} -610 -310 0 0 1 1 {}
N -280 140 -280 160 {
lab=GND}
N -280 40 -280 80 {
lab=VDD}
N -350 140 -350 160 {
lab=GND}
N 220 -50 220 -10 {
lab=VSS}
N 120 -110 170 -110 {
lab=#net1}
N -30 170 -30 220 {
lab=#net1}
N 220 -290 220 -250 {
lab=VDD}
N 290 -90 340 -90 {
lab=VOUT}
N -350 40 -350 80 {
lab=VSS}
N 320 -90 320 40 {
lab=VOUT}
N 130 -70 170 -70 {
lab=VOUT}
N 220 -190 220 -130 {
lab=#net2}
N -30 -110 -30 170 {lab=#net1}
N 30 -110 120 -110 {lab=#net1}
N 490 0 490 40 {
lab=VSS}
N 340 -90 480 -90 {lab=VOUT}
N 480 -90 490 -90 {lab=VOUT}
N 490 -90 490 -60 {lab=VOUT}
N -30 -110 30 -110 {lab=#net1}
N 80 -70 130 -70 {lab=VOUT}
N -30 280 -30 300 {lab=GND}
N 80 -70 80 50 {lab=VOUT}
N 80 50 320 50 {lab=VOUT}
N 320 40 320 50 {lab=VOUT}
C {devices/lab_pin.sym} -280 40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -280 110 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -280 160 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 220 -10 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -350 110 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -350 160 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -490 -180 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} -360 -180 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 1.8
.param VSS = 0
.param CL = 3p


.control
	save all
	setseed 10
	op
	print v(VOUT)
.endc
"}
C {devices/lab_pin.sym} 220 -290 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -90 2 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} -350 40 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {ammeter.sym} 220 -220 0 0 {name=Vmeas savecurrent=true}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 220 -100 0 0 {name=x1}
C {capa.sym} 490 -30 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 490 40 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -30 250 0 0 {name=V5 value= 0.9}
C {devices/gnd.sym} -30 300 0 0 {name=l2 lab=GND}
