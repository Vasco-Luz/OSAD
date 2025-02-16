v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -410 -350 -410 -190 {}
L 4 -410 -190 -90 -190 {}
L 4 -90 -370 -90 -190 {}
L 4 -410 -370 -90 -370 {}
L 4 -410 -370 -410 -350 {}
T {simulation scripts} -500 -450 0 0 1 1 {}
N -370 0 -370 20 {
lab=GND}
N -370 -100 -370 -60 {
lab=VDD}
N -240 0 -240 20 {
lab=GND}
N -240 -100 -240 -60 {
lab=VSS}
N 280 -210 360 -210 {lab=#net1}
N 320 -270 320 -210 {lab=#net1}
N 320 -270 400 -270 {lab=#net1}
N 400 -270 400 -240 {lab=#net1}
N 220 -110 220 -70 {lab=VSS}
N 220 -70 400 -70 {lab=VSS}
N 400 -180 400 -70 {lab=VSS}
N 240 -80 240 -70 {lab=VSS}
N 240 -390 240 -240 {lab=#net2}
N 400 -390 400 -270 {lab=#net1}
N 360 -450 360 -440 {lab=#net3}
N 240 -450 360 -450 {lab=#net3}
N 360 -400 360 -380 {lab=#net2}
N 240 -380 360 -380 {lab=#net2}
N 240 -520 240 -450 {lab=#net3}
N 240 -680 400 -680 {lab=#net4}
N 400 -520 400 -450 {lab=#net5}
N 400 -210 400 -180 {lab=VSS}
N 240 -680 240 -580 {lab=#net4}
N 400 -680 400 -580 {lab=#net4}
N 140 -620 140 -600 {
lab=GND}
N 140 -680 240 -680 {lab=#net4}
N 640 -460 640 -440 {lab=#net3}
N 360 -460 640 -460 {lab=#net3}
N 360 -460 360 -450 {lab=#net3}
N 640 -400 640 -380 {lab=#net2}
N 360 -380 640 -380 {lab=#net2}
N 680 -680 680 -640 {lab=#net4}
N 400 -680 680 -680 {lab=#net4}
N 680 -640 680 -610 {lab=#net4}
N 680 -580 680 -450 {lab=#net6}
N 720 -610 860 -610 {lab=#net6}
N 680 -680 900 -680 {lab=#net4}
N 900 -680 900 -640 {lab=#net4}
N 900 -640 900 -610 {lab=#net4}
N 790 -610 790 -570 {lab=#net6}
N 680 -570 790 -570 {lab=#net6}
N 900 -580 900 -510 {lab=#net7}
N 900 -450 900 -70 {lab=VSS}
N 400 -70 900 -70 {lab=VSS}
N 680 -390 680 -70 {lab=VSS}
N 1280 -680 1280 -640 {lab=VDD}
N 1280 -640 1280 -610 {lab=VDD}
N 1320 -610 1460 -610 {lab=#net8}
N 1500 -680 1500 -640 {lab=VDD}
N 1500 -640 1500 -610 {lab=VDD}
N 1390 -610 1390 -570 {lab=#net8}
N 1280 -570 1390 -570 {lab=#net8}
N 1320 -240 1400 -240 {lab=#net9}
N 1420 -300 1420 -240 {lab=#net9}
N 1420 -300 1500 -300 {lab=#net9}
N 1500 -300 1500 -270 {lab=#net9}
N 1260 -140 1260 -100 {lab=VSS}
N 1260 -100 1440 -100 {lab=VSS}
N 1280 -110 1280 -100 {lab=VSS}
N 1500 -240 1500 -210 {lab=VSS}
N 1400 -240 1460 -240 {lab=#net9}
N 1500 -210 1500 -100 {lab=VSS}
N 1440 -100 1500 -100 {lab=VSS}
N 1260 -240 1280 -240 {lab=VSS}
N 1260 -240 1260 -140 {lab=VSS}
N 1280 -210 1280 -170 {lab=#net10}
N 240 -180 240 -140 {lab=#net11}
N 220 -210 240 -210 {lab=VSS}
N 220 -210 220 -110 {lab=VSS}
N 1280 -680 1380 -680 {lab=VDD}
N 1380 -680 1500 -680 {lab=VDD}
N 1280 -580 1280 -570 {lab=#net8}
N 1280 -380 1280 -270 {lab=#net12}
N 1500 -380 1500 -300 {lab=#net9}
N 1220 -410 1280 -410 {lab=VSS}
N 1500 -410 1560 -410 {lab=VSS}
N 1320 -410 1460 -410 {lab=#net13}
N 1390 -470 1390 -410 {lab=#net13}
N 1390 -470 1500 -470 {lab=#net13}
N 1280 -470 1280 -440 {lab=#net14}
N 1280 -570 1280 -530 {lab=#net8}
N 1500 -480 1500 -470 {lab=#net13}
N 1500 -470 1500 -440 {lab=#net13}
N 1500 -580 1500 -550 {lab=#net15}
N 1500 -490 1500 -480 {lab=#net13}
C {devices/lab_pin.sym} -370 -100 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -370 -30 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -370 20 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -240 -30 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -240 20 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -380 -320 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -240 -100 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/res_high_po_0p35.sym} 240 -110 0 0 {name=R6
L=30
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 320 -70 3 0 {name=p1 sig_type=std_logic lab=VSS
}
C {res.sym} 240 -420 0 0 {name=R1
value=0.001
footprint=1206
device=resistor
m=1}
C {vccs.sym} 400 -420 0 0 {name=G1 value=1000}
C {devices/code.sym} -210 -320 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	

.Temp 27
.param VDD = 5
.param VSS = 0


.control
save all

save @m.xm2.msky130_fd_pr__nfet_g5v0d10v5[vdsat]

dc Temp -40 125 1
plot i(Vmeas1) i(Vmeas2)
plot i(Vmeas3) i(Vmeas4)
wrdata data.csv i(Vmeas3) i(Vmeas4)


op
print i(Vmeas1)
print v(net2)




.endc
"}
C {ammeter.sym} 240 -550 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 -550 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 140 -650 0 0 {name=V3 value=1.8

}
C {devices/gnd.sym} 140 -600 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 260 -210 0 1 {name=M1
L=4
W=0.6
nf=2 mult=8
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 380 -210 0 0 {name=M2
L=4
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {vccs.sym} 680 -420 0 0 {name=G2 value=1000}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 700 -610 0 1 {name=M4
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 880 -610 0 0 {name=M3
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {ammeter.sym} 900 -480 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 1300 -610 0 1 {name=M5
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 1480 -610 0 0 {name=M6
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1360 -100 3 0 {name=p2 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 1300 -240 0 1 {name=M7
L=4
W=0.6
nf=2 mult=8
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 1480 -240 0 0 {name=M8
L=4
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1380 -680 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 1300 -410 0 1 {name=M9
L=1.2
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 1480 -410 0 0 {name=M10
L=1.2
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1220 -410 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1560 -410 0 1 {name=p5 sig_type=std_logic lab=VSS
}
C {ammeter.sym} 1280 -500 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1500 -520 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/res_high_po_0p35.sym} 1280 -140 0 0 {name=R2
L=30
model=res_high_po_0p35
spiceprefix=X
mult=1}
