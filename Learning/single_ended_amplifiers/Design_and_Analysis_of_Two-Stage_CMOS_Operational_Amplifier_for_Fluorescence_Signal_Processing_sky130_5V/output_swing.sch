v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -390 -180 -390 -20 {}
L 4 -390 -20 -70 -20 {}
L 4 -70 -200 -70 -20 {}
L 4 -390 -200 -70 -200 {}
L 4 -390 -200 -390 -180 {}
T {simulation scripts} -480 -280 0 0 1 1 {}
N 160 180 160 200 {
lab=GND}
N 160 80 160 120 {
lab=VDD}
N 90 180 90 200 {
lab=GND}
N 90 80 90 120 {
lab=VSS}
N 620 -190 620 -150 {
lab=VSS}
N 400 10 400 60 {
lab=#net1}
N 620 -490 620 -450 {
lab=VDD}
N 730 -260 780 -260 {
lab=VOUT}
N 620 -390 620 -330 {
lab=#net2}
N 930 -170 930 -130 {
lab=VSS}
N 780 -260 920 -260 {lab=VOUT}
N 920 -260 930 -260 {lab=VOUT}
N 930 -260 930 -230 {lab=VOUT}
N 400 -290 460 -290 {lab=VIN}
N 400 120 400 140 {lab=GND}
N 400 -270 400 -50 {lab=VIN}
N 510 -230 510 -170 {lab=VOUT}
N 510 -230 580 -230 {lab=VOUT}
N 460 -290 580 -290 {lab=VIN}
N 400 -290 400 -270 {lab=VIN}
N 770 -260 770 -70 {lab=VOUT}
N 510 -70 770 -70 {lab=VOUT}
N 510 -170 510 -70 {lab=VOUT}
C {devices/lab_pin.sym} 160 80 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 160 150 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} 160 200 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 90 150 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} 90 200 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -360 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -210 -160 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 5
.param VCM = 1.5
.param V_amp = 1.5
.param VSS = 0
.param CL = 3p
.param mc_mm_switch = 1


.control

	save all
	tran 100p 5u
	plot v(VOUT) v(VIN)

.endc

"}
C {devices/lab_pin.sym} 90 80 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 620 -150 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 620 -490 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 780 -260 2 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {ammeter.sym} 620 -420 0 0 {name=Vmeas savecurrent=true}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 650 -260 0 0 {name=x1}
C {capa.sym} 930 -200 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 930 -130 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 400 90 0 0 {name=V5 value= "VCM"}
C {devices/gnd.sym} 400 140 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 400 -20 0 0 {name=V13 value="ac 1 sin (0 "V_amp" 1Mega)"}
C {devices/lab_pin.sym} 400 -220 2 0 {name=p2 sig_type=std_logic lab=VIN}
