v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -270 -260 -270 -100 {}
L 4 -270 -100 50 -100 {}
L 4 50 -280 50 -100 {}
L 4 -270 -280 50 -280 {}
L 4 -270 -280 -270 -260 {}
T {simulation scripts} -360 -360 0 0 1 1 {}
N 280 100 280 120 {
lab=GND}
N 280 0 280 40 {
lab=VDD}
N 210 100 210 120 {
lab=GND}
N 210 0 210 40 {
lab=VSS}
N 740 -270 740 -230 {
lab=VSS}
N 520 -70 520 -20 {
lab=#net1}
N 740 -570 740 -530 {
lab=VDD}
N 850 -340 900 -340 {
lab=VOUT}
N 740 -470 740 -410 {
lab=#net2}
N 1050 -250 1050 -210 {
lab=VSS}
N 900 -340 1040 -340 {lab=VOUT}
N 1040 -340 1050 -340 {lab=VOUT}
N 1050 -340 1050 -310 {lab=VOUT}
N 520 -370 580 -370 {lab=VIN}
N 520 40 520 60 {lab=GND}
N 520 -350 520 -130 {lab=VIN}
N 630 -310 630 -250 {lab=VOUT}
N 630 -310 700 -310 {lab=VOUT}
N 580 -370 700 -370 {lab=VIN}
N 520 -370 520 -350 {lab=VIN}
N 890 -340 890 -150 {lab=VOUT}
N 630 -150 890 -150 {lab=VOUT}
N 630 -250 630 -150 {lab=VOUT}
N 700 -370 700 -360 {lab=VIN}
N 700 -320 700 -310 {lab=VOUT}
N 740 -300 740 -270 {lab=VSS}
N 740 -410 740 -380 {lab=#net2}
N 810 -340 850 -340 {lab=VOUT}
C {devices/lab_pin.sym} 280 0 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 280 70 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} 280 120 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 210 70 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} 210 120 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -240 -240 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -80 -240 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 1.8
.param VCM = 0.8
.param V_amp = 0.6
.param VSS = 0
.param CL = 3p
.param mc_mm_switch = 1


.control

	save all
	tran 100p 5u
	plot v(VOUT) v(VIN)

.endc

"}
C {devices/lab_pin.sym} 210 0 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 740 -230 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 740 -570 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 900 -340 2 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {ammeter.sym} 740 -500 0 0 {name=Vmeas savecurrent=true}
C {capa.sym} 1050 -280 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1050 -210 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 520 10 0 0 {name=V5 value= "VCM"}
C {devices/gnd.sym} 520 60 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 520 -100 0 0 {name=V13 value="ac 1 sin (0 "V_amp" 1Mega)"}
C {devices/lab_pin.sym} 520 -300 2 0 {name=p2 sig_type=std_logic lab=VIN}
C {Sky130A/single ended amplifiers/VA001_sky130_1_8V.sym} 740 -340 0 0 {name=x1}
