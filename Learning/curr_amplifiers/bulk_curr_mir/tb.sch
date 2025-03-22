v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -670 -210 -670 -50 {}
L 4 -670 -50 -350 -50 {}
L 4 -350 -230 -350 -50 {}
L 4 -670 -230 -350 -230 {}
L 4 -670 -230 -670 -210 {}
T {simulation scripts} -760 -310 0 0 1 1 {}
N -430 140 -430 160 {
lab=GND}
N -430 40 -430 80 {
lab=VDD}
N -500 140 -500 160 {
lab=GND}
N -500 40 -500 80 {
lab=VSS}
N -80 -20 -80 20 {
lab=VDD}
N -80 20 -80 60 {lab=VDD}
N -80 20 170 20 {lab=VDD}
N 170 20 170 60 {lab=VDD}
N -80 90 170 90 {lab=Vc}
N 40 90 40 160 {lab=Vc}
N -80 160 40 160 {lab=Vc}
N -80 120 -80 160 {lab=Vc}
N -160 90 -120 90 {lab=VSS}
N 210 90 250 90 {lab=VSS}
N 170 290 170 310 {
lab=GND}
N -80 160 -80 220 {lab=Vc}
N -80 280 -80 300 {
lab=GND}
N 490 -20 490 20 {
lab=VDD}
N 490 20 490 60 {lab=VDD}
N 490 20 740 20 {lab=VDD}
N 740 20 740 60 {lab=VDD}
N 490 90 740 90 {lab=VDD}
N 490 120 490 160 {lab=#net1}
N 410 90 450 90 {lab=#net1}
N 780 90 820 90 {lab=#net1}
N 490 160 490 220 {lab=#net1}
N 490 280 490 300 {
lab=GND}
N 620 20 620 90 {lab=VDD}
N 410 90 410 150 {lab=#net1}
N 410 150 490 150 {lab=#net1}
N 490 150 710 150 {lab=#net1}
N 710 140 710 150 {lab=#net1}
N 710 140 820 140 {lab=#net1}
N 820 90 820 140 {lab=#net1}
N 170 120 170 140 {lab=#net2}
N 170 200 170 230 {lab=#net3}
N 640 190 740 190 {lab=#net4}
N 740 120 740 190 {lab=#net4}
N 280 190 580 190 {lab=#net3}
N 280 190 280 210 {lab=#net3}
N 170 210 280 210 {lab=#net3}
C {devices/lab_pin.sym} -430 40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -430 110 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -430 160 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -500 110 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -500 160 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -640 -180 0 0 {name=CORNER only_toplevel=true corner=fs}
C {devices/code.sym} -500 -180 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 1
.param VSS = 0



.control
save all

dc V3 0 1 0.01
plot i(Vmeas) i(Vmeas1)
plot v(VC)
.endc
"}
C {devices/lab_pin.sym} -500 40 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -80 -20 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -160 90 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 250 90 0 1 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 170 260 0 0 {name=V3 value=1

}
C {devices/gnd.sym} 170 310 0 0 {name=l2 lab=GND}
C {isource.sym} -80 250 0 0 {name=I0 value=10u}
C {devices/gnd.sym} -80 300 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 190 90 0 1 {name=M1
L=2
W=4
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -100 90 0 0 {name=M2
L=2
W=4
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -80 140 0 0 {name=p4 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 490 -20 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {isource.sym} 490 250 0 0 {name=I1 value=10u}
C {devices/gnd.sym} 490 300 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 760 90 0 1 {name=M3
L=2
W=2
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 470 90 0 0 {name=M4
L=2
W=2
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {ammeter.sym} 170 170 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 610 190 1 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
