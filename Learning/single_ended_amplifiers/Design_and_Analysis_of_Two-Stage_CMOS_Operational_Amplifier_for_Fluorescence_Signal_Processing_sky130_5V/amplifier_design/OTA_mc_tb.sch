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
N 470 -680 470 -640 {
lab=VSS}
N 370 -740 420 -740 {
lab=VIN+}
N 220 -460 220 -410 {
lab=#net1}
N 470 -920 470 -880 {
lab=VDD}
N 540 -720 590 -720 {
lab=VOUT}
N -350 40 -350 80 {
lab=VSS}
N 380 -700 420 -700 {
lab=Va}
N 470 -820 470 -760 {
lab=#net2}
N 280 -740 370 -740 {lab=VIN+}
N 740 -630 740 -590 {
lab=VSS}
N 590 -720 730 -720 {lab=VOUT}
N 730 -720 740 -720 {lab=VOUT}
N 740 -720 740 -690 {lab=VOUT}
N 220 -740 280 -740 {lab=VIN+}
N 330 -700 380 -700 {lab=Va}
N 220 -350 220 -330 {lab=GND}
N 220 -740 220 -520 {lab=VIN+}
N 330 -640 330 -590 {lab=Va}
N 330 -700 330 -640 {lab=Va}
N 330 -360 330 -320 {
lab=VSS}
N 330 -530 330 -500 {lab=#net3}
N 590 -720 590 -580 {lab=VOUT}
N 460 -540 460 -500 {
lab=VSS}
N 370 -540 460 -540 {lab=VSS}
N 330 -450 330 -420 {lab=#net3}
N 330 -500 330 -450 {lab=#net3}
N 580 -580 590 -580 {lab=VOUT}
N 500 -470 500 -430 {
lab=VSS}
N 500 -580 500 -530 {lab=#net4}
N 500 -580 520 -580 {lab=#net4}
N 370 -580 500 -580 {lab=#net4}
C {devices/lab_pin.sym} -280 40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -280 110 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -280 160 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 470 -640 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -350 110 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -350 160 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -490 -180 0 0 {name=CORNER only_toplevel=true corner=mc}
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
	alter E1 0
	op
	print v(Va)
	ac dec 100 1 10G
	plot db(v(VOUT))
	
.endc
"}
C {devices/lab_pin.sym} 470 -920 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 590 -720 2 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} -350 40 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {ammeter.sym} 470 -850 0 0 {name=Vmeas savecurrent=true}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 470 -730 0 0 {name=x1}
C {capa.sym} 740 -660 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 740 -590 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 220 -380 0 0 {name=V5 value= 0.9}
C {devices/gnd.sym} 220 -330 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 220 -490 0 0 {name=V3 value= "ac 0.5"}
C {devices/lab_pin.sym} 220 -640 0 0 {name=p2 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 330 -320 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 330 -390 0 0 {name=V4 value= "ac -0.5"}
C {vcvs.sym} 330 -560 0 1 {name=E1 value=1}
C {devices/lab_pin.sym} 460 -500 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 330 -660 0 0 {name=p10 sig_type=std_logic lab=Va
}
C {res_ac.sym} 550 -580 1 0 {name=R1
value=1k
ac=1000000000000G
m=1}
C {capa.sym} 500 -500 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 500 -430 0 0 {name=p11 sig_type=std_logic lab=VSS
}
