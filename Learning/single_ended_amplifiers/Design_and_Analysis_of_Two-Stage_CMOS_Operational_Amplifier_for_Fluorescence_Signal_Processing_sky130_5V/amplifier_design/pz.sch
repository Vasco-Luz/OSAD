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
N 360 -40 360 10 {
lab=#net1}
N 360 70 360 90 {lab=GND}
N 360 -320 360 -100 {lab=VIN+}
N 360 -330 360 -320 {lab=VIN+}
N 360 -330 560 -330 {lab=VIN+}
N 360 -10 470 -10 {lab=#net1}
N 470 -270 470 -70 {lab=#net2}
N 470 -270 560 -270 {lab=#net2}
N 600 -230 600 -210 {lab=VSS}
N 600 -210 600 -200 {lab=VSS}
N 600 -410 600 -370 {
lab=VDD}
N 860 -210 860 -170 {
lab=VSS}
N 850 -300 860 -300 {lab=VOUT_noise}
N 860 -300 860 -270 {lab=VOUT_noise}
N 710 -300 850 -300 {lab=VOUT_noise}
N -190 120 -190 140 {
lab=GND}
N -190 20 -190 60 {
lab=VDD}
N -260 120 -260 140 {
lab=GND}
N -260 20 -260 60 {
lab=VSS}
C {devices/lab_pin.sym} 360 -260 0 0 {name=p27 sig_type=std_logic lab=VIN+
}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 630 -300 0 0 {name=x1}
C {devices/vsource.sym} 360 40 0 0 {name=V3 value= "VCM"}
C {devices/gnd.sym} 360 90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 360 -70 0 0 {name=V4 value= "ac 0.5"}
C {devices/vsource.sym} 470 -40 0 0 {name=V5 value= "V_OFF"}
C {devices/lab_pin.sym} 600 -200 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 600 -410 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {capa.sym} 860 -240 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 860 -170 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 820 -300 1 0 {name=p5 sig_type=std_logic lab=VOUT_noise

}
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
C {devices/code.sym} -260 -200 0 0 {name=spice only_toplevel=false
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
	pz VIN+ 0 0 VOUT_noise vol pz
	print all
.endc



"}
