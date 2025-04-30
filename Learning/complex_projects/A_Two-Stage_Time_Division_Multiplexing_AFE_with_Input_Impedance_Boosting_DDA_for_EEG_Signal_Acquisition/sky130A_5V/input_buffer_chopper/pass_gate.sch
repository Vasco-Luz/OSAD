v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -600 50 -600 210 {}
L 4 -600 210 -280 210 {}
L 4 -280 30 -280 210 {}
L 4 -600 30 -280 30 {}
L 4 -600 30 -600 50 {}
T {simulation scripts} -690 -50 0 0 1 1 {}
N -330 650 -330 670 {
lab=GND}
N -330 550 -330 590 {
lab=VDD}
N -480 650 -480 670 {
lab=GND}
N -480 550 -480 590 {
lab=VSS}
N 40 310 40 350 {
lab=VSS}
N 40 240 40 250 {
lab=VIN}
N 40 240 150 240 {lab=VIN}
N 180 160 180 200 {lab=VDD}
N 180 280 180 320 {lab=VSS}
N 250 240 300 240 {lab=VOUT}
N 300 240 350 240 {lab=VOUT}
N 320 440 320 480 {lab=VIN}
N 320 480 320 490 {lab=VIN}
N 320 620 320 690 {lab=VOUT}
N 400 520 430 520 {lab=VSS}
N 190 520 230 520 {lab=VDD}
N 230 520 240 520 {lab=VDD}
N 40 620 40 670 {
lab=#net1}
N 40 730 40 750 {lab=GND}
N 40 560 240 560 {lab=VC}
N 550 650 550 690 {
lab=VSS}
N 540 560 550 560 {lab=Va}
N 550 560 550 590 {lab=Va}
N 400 560 540 560 {lab=Va}
N 320 820 320 860 {lab=VOUT}
N 320 860 320 870 {lab=VOUT}
N 320 990 320 1060 {lab=VIN}
N 400 900 430 900 {lab=VSS}
N 190 900 230 900 {lab=VDD}
N 230 900 240 900 {lab=VDD}
N 550 1030 550 1070 {
lab=VSS}
N 540 940 550 940 {lab=VB}
N 550 940 550 970 {lab=VB}
N 400 940 540 940 {lab=VB}
N 320 610 320 620 {lab=VOUT}
N 110 940 240 940 {lab=VC}
N 110 560 110 940 {lab=VC}
C {sky130_fd_pr/corner.sym} -570 70 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -420 70 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 5
.param VCM = 2
.param V_ref = 1.2
.param VSS = 0
.param CL = 3p


.control

	save all
	tran 100p 10u

	plot v(VIN) v(VOUT)

	plot v(VC) v(Va) v(VB)

.endc

"}
C {devices/lab_pin.sym} -330 550 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -330 620 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -330 670 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -480 620 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -480 670 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -480 550 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {Sky130A/digital/inverter_5V.sym} 200 240 0 0 {name=x1}
C {devices/lab_pin.sym} 40 350 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 40 280 0 0 {name=V19 value="PULSE(0 5 0n 1n 1n 1u 2u)"}
C {devices/lab_pin.sym} 180 160 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 320 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 350 240 2 0 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 40 240 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {Sky130A/switches/passgate.sym} 320 560 0 0 {name=x2}
C {devices/lab_pin.sym} 320 440 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 320 690 2 0 {name=p7 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 430 520 2 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 190 520 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 40 700 0 0 {name=V5 value= 2.5}
C {devices/gnd.sym} 40 750 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 40 590 0 0 {name=V13 value="ac 1 sin (0 1 1Mega)"}
C {capa.sym} 550 620 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 550 690 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 550 560 2 0 {name=p12 sig_type=std_logic lab=Va}
C {Sky130A/switches/passgate.sym} 320 940 0 0 {name=x3}
C {devices/lab_pin.sym} 430 900 2 0 {name=p15 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 190 900 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {capa.sym} 550 1000 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 550 1070 0 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 550 940 2 0 {name=p18 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 320 820 2 0 {name=p13 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 320 1060 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 180 560 3 0 {name=p19 sig_type=std_logic lab=VC}
