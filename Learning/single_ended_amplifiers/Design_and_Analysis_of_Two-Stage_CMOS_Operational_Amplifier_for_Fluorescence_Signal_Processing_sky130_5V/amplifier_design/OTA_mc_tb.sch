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
lab=#net2}
N 470 -820 470 -760 {
lab=#net3}
N 280 -740 370 -740 {lab=VIN+}
N 740 -630 740 -590 {
lab=VSS}
N 590 -720 730 -720 {lab=VOUT}
N 730 -720 740 -720 {lab=VOUT}
N 740 -720 740 -690 {lab=VOUT}
N 220 -740 280 -740 {lab=VIN+}
N 330 -700 380 -700 {lab=#net2}
N 220 -350 220 -330 {lab=GND}
N 330 -700 330 -580 {lab=#net2}
N 220 -740 220 -520 {lab=VIN+}
N 330 -580 330 -500 {lab=#net2}
N 330 -260 330 -240 {lab=GND}
N 330 -500 330 -450 {lab=#net2}
N 330 -390 330 -320 {lab=#net4}
N 370 -440 480 -440 {lab=#net5}
N 420 -400 420 -360 {
lab=VSS}
N 370 -400 420 -400 {lab=VSS}
N 550 -400 550 -360 {
lab=VSS}
N 550 -520 550 -480 {
lab=VDD}
N 600 -460 630 -460 {lab=VOUT}
N 630 -720 630 -460 {lab=VOUT}
N 640 -360 640 -340 {lab=GND}
N 600 -420 640 -420 {lab=#net6}
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
C {devices/vsource.sym} 330 -290 0 0 {name=V7 value= "-0.5"}
C {devices/gnd.sym} 330 -240 0 0 {name=l7 lab=GND}
C {vcvs.sym} 330 -420 0 1 {name=E1 value=1000000000000}
C {devices/lab_pin.sym} 420 -360 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 550 -450 0 1 {name=x2}
C {devices/lab_pin.sym} 550 -360 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 550 -520 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 640 -390 0 0 {name=V4 value= 0.9}
C {devices/gnd.sym} 640 -340 0 0 {name=l4 lab=GND}
