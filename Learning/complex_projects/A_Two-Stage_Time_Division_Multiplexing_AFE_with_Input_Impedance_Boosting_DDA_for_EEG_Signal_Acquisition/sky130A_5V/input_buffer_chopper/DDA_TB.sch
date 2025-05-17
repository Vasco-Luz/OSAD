v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -200 -200 -200 -40 {}
L 4 -200 -40 120 -40 {}
L 4 120 -220 120 -40 {}
L 4 -200 -220 120 -220 {}
L 4 -200 -220 -200 -200 {}
N 40 150 40 170 {
lab=GND}
N 40 50 40 90 {
lab=VDD}
N -30 150 -30 170 {
lab=GND}
N -30 50 -30 90 {
lab=VSS}
N 260 -460 260 -440 {lab=VDD}
N 260 -360 260 -320 {lab=VSS}
N 300 -400 340 -400 {lab=VREF}
N 130 150 130 170 {
lab=GND}
N 130 50 130 90 {
lab=VCM}
N 620 -0 650 0 {lab=VCM}
N 380 390 380 410 {
lab=GND}
N 320 330 440 330 {lab=#net1}
N 320 160 320 180 {lab=#net2}
N 440 160 440 180 {lab=#net3}
N 320 30 320 100 {lab=#net4}
N 320 -60 650 -60 {lab=#net4}
N 320 30 650 30 {lab=#net4}
N 440 60 440 100 {lab=#net5}
N 440 60 650 60 {lab=#net5}
N 440 -30 440 60 {lab=#net5}
N 440 -30 650 -30 {lab=#net5}
N 1030 120 1030 160 {
lab=VSS}
N 1030 30 1030 60 {lab=#net6}
N 850 30 1030 30 {lab=#net6}
N 1140 60 1140 100 {
lab=VSS}
N 1140 -30 1140 0 {lab=VA}
N 850 -30 1140 -30 {lab=VA}
N 320 -60 320 30 {lab=#net4}
N 440 220 440 260 {lab=#net3}
N 320 320 320 330 {lab=#net1}
N 440 320 440 330 {lab=#net1}
N 320 180 320 260 {lab=#net2}
N 440 180 440 220 {lab=#net3}
C {devices/lab_pin.sym} 40 50 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 40 120 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} 40 170 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -30 120 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -30 170 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -160 -170 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -30 50 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/code.sym} -30 -170 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp -40
.param VDD = 5
.param VSS = 0
.param CL = 3p
.param V_OFF = -400u
.param VCM = 2.5


.control

	save all
	ac dec 100 1 10G
	plot db(v(VA)) (180+(180*ph(v(VA))/pi))	
	op
	print v(VA)
	print (5*-I(V1))
	tran 10n 500u
        plot v(VA)


.endc



"}
C {Sky130A/references/EEG_current_reference.sym} 260 -390 0 0 {name=x1}
C {devices/lab_pin.sym} 260 -460 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -320 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 340 -400 0 1 {name=p5 sig_type=std_logic lab=VREF}
C {Sky130A/DDA/DDA002_NMOS_sky130_5V.sym} 730 0 0 0 {name=x2}
C {devices/lab_pin.sym} 730 100 3 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 770 70 1 1 {name=p7 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 730 -100 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 130 120 0 0 {name=V3 value="VCM"

}
C {devices/gnd.sym} 130 170 0 0 {name=l2 lab=GND
value="VCM"}
C {devices/lab_pin.sym} 130 50 0 0 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 620 0 0 0 {name=p10 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 380 360 0 0 {name=V4 value="VCM"

}
C {devices/gnd.sym} 380 410 0 0 {name=l4 lab=GND
value="VCM"}
C {devices/vsource.sym} 320 130 0 0 {name=V17 value= "ac 0.5"}
C {devices/vsource.sym} 440 130 0 0 {name=V5 value= "ac -0.5"}
C {capa.sym} 1030 90 0 0 {name=C5
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1030 160 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {capa.sym} 1140 30 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1140 100 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1040 -30 1 0 {name=p12 sig_type=std_logic lab=VA}
C {devices/vsource.sym} 320 290 0 0 {name=V13 value="ac 1 sin (0 200u 10k)"}
C {devices/vsource.sym} 440 290 0 0 {name=V6 value="ac 1 sin (0 -200u 10k)"}
