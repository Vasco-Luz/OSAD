v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -430 -230 -430 -70 {}
L 4 -430 -70 -110 -70 {}
L 4 -110 -250 -110 -70 {}
L 4 -430 -250 -110 -250 {}
L 4 -430 -250 -430 -230 {}
T {simulation scripts} -520 -330 0 0 1 1 {}
N -190 120 -190 140 {
lab=GND}
N -190 20 -190 60 {
lab=VDD}
N -260 120 -260 140 {
lab=GND}
N -260 20 -260 60 {
lab=VSS}
N 790 -370 790 -330 {
lab=VSS}
N 570 -170 570 -120 {
lab=#net1}
N 790 -670 790 -630 {
lab=VDD}
N 790 -570 790 -510 {
lab=#net2}
N 1100 -350 1100 -310 {
lab=VSS}
N 1090 -440 1100 -440 {lab=VOUT}
N 1100 -440 1100 -410 {lab=VOUT}
N 570 -450 630 -450 {lab=VIN+}
N 570 -60 570 -40 {lab=GND}
N 570 -450 570 -230 {lab=VIN+}
N 680 -350 680 -300 {lab=Va}
N 680 -410 680 -350 {lab=Va}
N 680 -70 680 -30 {
lab=VSS}
N 680 -240 680 -210 {lab=#net3}
N 950 -440 950 -300 {lab=VOUT}
N 810 -250 810 -210 {
lab=VSS}
N 720 -250 810 -250 {lab=VSS}
N 680 -160 680 -130 {lab=#net3}
N 680 -210 680 -160 {lab=#net3}
N 940 -300 950 -300 {lab=VOUT}
N 850 -180 850 -140 {
lab=VSS}
N 850 -290 850 -240 {lab=#net4}
N 850 -290 870 -290 {lab=#net4}
N 720 -290 850 -290 {lab=#net4}
N 680 -410 750 -410 {lab=Va}
N 630 -470 750 -470 {lab=VIN+}
N 630 -470 630 -450 {lab=VIN+}
N 880 -300 880 -290 {lab=#net4}
N 870 -290 880 -290 {lab=#net4}
N 1080 -440 1090 -440 {lab=VOUT}
N 900 -440 950 -440 {lab=VOUT}
N 950 -440 980 -440 {lab=VOUT}
N 980 -440 1080 -440 {lab=VOUT}
C {devices/lab_pin.sym} -190 20 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -190 90 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -190 140 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -260 90 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -260 140 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -400 -200 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -260 20 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/code.sym} -260 -220 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 5
.param VSS = 0
.param CL = 3p
.param V_OFF = -889u
.param VCM=2.5


.control
	save all
	ac dec 100 1 10G
	plot db(v(VOUT)) (180+(180*ph(v(VOUT))/pi))
	pz VIN+ 0 0 VOUT vol pz
	print all
.endc



"}
C {devices/lab_pin.sym} 790 -330 0 0 {name=p23 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 790 -670 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {ammeter.sym} 790 -600 0 0 {name=Vmeas savecurrent=true}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 820 -440 0 0 {name=x5}
C {capa.sym} 1100 -380 0 0 {name=C5
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1100 -310 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 570 -90 0 0 {name=V16 value= "VCM"}
C {devices/gnd.sym} 570 -40 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 570 -200 0 0 {name=V17 value= "ac 0.5"}
C {devices/lab_pin.sym} 680 -30 0 0 {name=p28 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 680 -100 0 0 {name=V18 value= "ac -0.5"}
C {vcvs.sym} 680 -270 0 1 {name=E1 value=1}
C {devices/lab_pin.sym} 810 -210 0 0 {name=p29 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 680 -370 0 0 {name=p30 sig_type=std_logic lab=Va
}
C {res_ac.sym} 910 -300 1 0 {name=R1
value=1k
ac=1000000000000G
m=1}
C {capa.sym} 850 -210 0 0 {name=C6
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 850 -140 0 0 {name=p31 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 980 -440 1 0 {name=p1 sig_type=std_logic lab=VOUT

}
C {devices/lab_pin.sym} 570 -380 0 0 {name=p7 sig_type=std_logic lab=VIN+
}
