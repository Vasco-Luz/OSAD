v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -890 -200 -890 -40 {}
L 4 -890 -40 -570 -40 {}
L 4 -570 -220 -570 -40 {}
L 4 -890 -220 -570 -220 {}
L 4 -890 -220 -890 -200 {}
N -650 150 -650 170 {
lab=GND}
N -650 50 -650 90 {
lab=VDD}
N -720 150 -720 170 {
lab=GND}
N -720 50 -720 90 {
lab=VSS}
N -430 -460 -430 -440 {lab=VDD}
N -430 -360 -430 -320 {lab=VSS}
N -390 -400 -350 -400 {lab=VREF}
N -560 150 -560 170 {
lab=GND}
N -560 50 -560 90 {
lab=VCM}
N -70 0 -40 0 {lab=VCM}
N -310 240 -310 260 {
lab=GND}
N -370 180 -250 180 {lab=#net1}
N -370 160 -370 180 {lab=#net1}
N -250 160 -250 180 {lab=#net1}
N -370 30 -370 100 {lab=VA_in}
N -370 -60 -40 -60 {lab=VA_in}
N -250 60 -250 100 {lab=VB_in}
N -250 -30 -250 60 {lab=VB_in}
N -250 -30 -40 -30 {lab=VB_in}
N 340 120 340 160 {
lab=VSS}
N 340 30 340 60 {lab=VB}
N 160 30 340 30 {lab=VB}
N 450 60 450 100 {
lab=VSS}
N 450 -30 450 0 {lab=VA}
N 160 -30 450 -30 {lab=VA}
N -370 -60 -370 30 {lab=VA_in}
N -90 30 -40 30 {lab=VB}
N -70 60 -40 60 {lab=VA}
N -90 30 -90 160 {lab=VB}
N -90 160 240 160 {lab=VB}
N 240 30 240 160 {lab=VB}
N 210 -30 210 150 {lab=VA}
N -70 150 210 150 {lab=VA}
N -70 60 -70 150 {lab=VA}
C {devices/lab_pin.sym} -650 50 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -650 120 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -650 170 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -720 120 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -720 170 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -850 -170 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -720 50 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/code.sym} -720 -170 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 5
.param VSS = 0
.param CL = 3p
.param V_OFF = -400u
.param VCM = 2.5


.control

	save all
        tran 10ns 500u
	plot v(VB) v(VB_in)
	plot v(VA_in) v(VA)

.endc



"}
C {Sky130A/references/EEG_current_reference.sym} -430 -390 0 0 {name=x1}
C {devices/lab_pin.sym} -430 -460 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -430 -320 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -350 -400 0 1 {name=p5 sig_type=std_logic lab=VREF}
C {Sky130A/DDA/DDA002_NMOS_sky130_5V.sym} 40 0 0 0 {name=x2}
C {devices/lab_pin.sym} 40 100 3 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 80 70 1 1 {name=p7 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 40 -100 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -560 120 0 0 {name=V3 value="VCM"

}
C {devices/gnd.sym} -560 170 0 0 {name=l2 lab=GND
value="VCM"}
C {devices/lab_pin.sym} -560 50 0 0 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} -70 0 0 0 {name=p10 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} -310 210 0 0 {name=V4 value="VCM"

}
C {devices/gnd.sym} -310 260 0 0 {name=l4 lab=GND
value="VCM"}
C {capa.sym} 340 90 0 0 {name=C5
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 340 160 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {capa.sym} 450 30 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 450 100 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 350 -30 1 0 {name=p12 sig_type=std_logic lab=VA}
C {devices/vsource.sym} -370 130 0 0 {name=V13 value="ac 1 sin (0 200m 10k)"}
C {devices/vsource.sym} -250 130 0 0 {name=V5 value="ac 1 sin (0 -200m 10k)"}
C {devices/lab_pin.sym} 300 30 1 0 {name=p13 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} -290 -60 1 0 {name=p14 sig_type=std_logic lab=VA_in}
C {devices/lab_pin.sym} -250 20 2 0 {name=p15 sig_type=std_logic lab=VB_in}
