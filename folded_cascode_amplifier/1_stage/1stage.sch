v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -90 -30 -50 {
lab=#net1}
N 170 -90 170 -50 {
lab=#net1}
N 70 -100 70 -90 {
lab=#net1}
N 70 -210 70 -160 {
lab=IBIAS}
N -30 -90 70 -90 {
lab=#net1}
N 70 -90 170 -90 {
lab=#net1}
N -30 -20 -20 -20 {
lab=#net1}
N -20 -50 -20 -20 {
lab=#net1}
N -30 -50 -20 -50 {
lab=#net1}
N 160 -20 170 -20 {
lab=#net1}
N 160 -50 160 -20 {
lab=#net1}
N 160 -50 170 -50 {
lab=#net1}
N -100 -20 -70 -20 {
lab=VIN+}
N 210 -20 240 -20 {
lab=VIN-}
N 440 220 440 240 {
lab=VSS}
N 440 240 440 250 {
lab=VSS}
N 440 50 440 80 {
lab=#net2}
N 370 190 440 190 {
lab=VSS}
N 370 20 440 20 {
lab=VSS}
N 440 80 440 160 {
lab=#net2}
N -30 10 -30 110 {
lab=#net2}
N -30 110 440 110 {
lab=#net2}
N 480 190 610 190 {
lab=VB1}
N 650 220 650 250 {
lab=VSS}
N 650 190 720 190 {
lab=VSS}
N 650 20 720 20 {
lab=VSS}
N 650 60 650 160 {
lab=#net3}
N 650 50 650 60 {
lab=#net3}
N 480 20 610 20 {
lab=VB2}
N 170 10 170 70 {
lab=#net3}
N 170 70 650 70 {
lab=#net3}
N 550 -300 550 -280 {
lab=VDD}
N 440 -170 440 -130 {
lab=#net4}
N 430 -200 440 -200 {
lab=VDD}
N 430 -230 430 -200 {
lab=VDD}
N 430 -100 440 -100 {
lab=#net4}
N 430 -130 430 -100 {
lab=#net4}
N 430 -130 440 -130 {
lab=#net4}
N 440 -70 440 -10 {
lab=VOUT+}
N 650 -70 650 -10 {
lab=VOUT-}
N 650 -170 650 -130 {
lab=#net5}
N 440 -280 650 -280 {
lab=VDD}
N 650 -200 660 -200 {
lab=VDD}
N 660 -230 660 -200 {
lab=VDD}
N 480 -100 600 -100 {
lab=VB3}
N 600 -100 610 -100 {
lab=VB3}
N 480 -200 610 -200 {
lab=VB4}
N 650 -230 660 -230 {
lab=VDD}
N 650 -280 650 -230 {
lab=VDD}
N 430 -230 440 -230 {
lab=VDD}
N 440 -280 440 -230 {
lab=VDD}
N -400 -430 -350 -430 {
lab=IBIAS}
N -400 -400 -350 -400 {
lab=VDD}
N -400 -340 -350 -340 {
lab=VB4}
N -400 -310 -350 -310 {
lab=VB3}
N -400 -280 -350 -280 {
lab=VB2}
N -400 -250 -350 -250 {
lab=VB1}
N -400 -370 -350 -370 {
lab=VSS}
N -400 -220 -350 -220 {
lab=VOUT+}
N -400 -190 -350 -190 {
lab=VOUT-}
N -400 -160 -350 -160 {
lab=VIN+}
N -400 -130 -350 -130 {
lab=VIN-}
N 650 -100 660 -100 {
lab=#net5}
N 660 -130 660 -100 {
lab=#net5}
N 650 -130 660 -130 {
lab=#net5}
N -400 -90 -350 -90 {
lab=VCMFB}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 190 -20 0 1 {name=M9
L=1
W=80
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -50 -20 0 0 {name=M1
L=1
W=80
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/res.sym} 70 -130 0 0 {name=R1
value=0.1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 70 -210 1 0 {name=p2 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} -100 -20 0 0 {name=p1 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 240 -20 0 1 {name=p3 sig_type=std_logic lab=VIN-}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 460 20 0 1 {name=M5
L=1.2
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 460 190 0 1 {name=M2
L=1.5
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 440 250 2 1 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 370 190 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 370 20 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 630 20 0 0 {name=M3
L=1.2
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 630 190 0 0 {name=M4
L=1.5
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 650 250 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 720 190 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 720 20 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 460 -100 0 1 {name=M6
L=1.2
W=35
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 460 -200 0 1 {name=M7
L=1.5
W=50
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 550 -300 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 630 -200 0 0 {name=M8
L=1.5
W=50
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 630 -100 0 0 {name=M10
L=1.2
W=35
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 440 -40 0 0 {name=p10 sig_type=std_logic lab=VOUT+}
C {devices/lab_pin.sym} 650 -40 0 1 {name=p11 sig_type=std_logic lab=VOUT-}
C {devices/iopin.sym} -400 -430 0 1 {name=p12 lab=IBIAS}
C {devices/lab_pin.sym} -350 -430 2 0 {name=p13 sig_type=std_logic lab=IBIAS}
C {devices/iopin.sym} -400 -400 0 1 {name=p14 lab=VDD}
C {devices/lab_pin.sym} -350 -400 2 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -400 -340 0 1 {name=p16 lab=VB4}
C {devices/lab_pin.sym} -350 -340 2 0 {name=p17 sig_type=std_logic lab=VB4}
C {devices/iopin.sym} -400 -310 0 1 {name=p18 lab=VB3}
C {devices/lab_pin.sym} -350 -310 2 0 {name=p19 sig_type=std_logic lab=VB3}
C {devices/iopin.sym} -400 -280 0 1 {name=p20 lab=VB2}
C {devices/lab_pin.sym} -350 -280 2 0 {name=p21 sig_type=std_logic lab=VB2}
C {devices/iopin.sym} -400 -250 0 1 {name=p22 lab=VB1}
C {devices/lab_pin.sym} -350 -250 2 0 {name=p23 sig_type=std_logic lab=VB1}
C {devices/iopin.sym} -400 -370 0 1 {name=p24 lab=VSS}
C {devices/lab_pin.sym} -350 -370 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -400 -220 0 1 {name=p27 lab=VOUT+}
C {devices/lab_pin.sym} -350 -220 2 0 {name=p28 sig_type=std_logic lab=VOUT+}
C {devices/iopin.sym} -400 -190 0 1 {name=p29 lab=VOUT-}
C {devices/lab_pin.sym} -350 -190 2 0 {name=p30 sig_type=std_logic lab=VOUT-}
C {devices/iopin.sym} -400 -160 0 1 {name=p31 lab=VIN+}
C {devices/lab_pin.sym} -350 -160 2 0 {name=p32 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -400 -130 0 1 {name=p33 lab=VIN-}
C {devices/lab_pin.sym} -350 -130 2 0 {name=p34 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 540 -200 3 0 {name=p35 sig_type=std_logic lab=VB4}
C {devices/lab_pin.sym} 540 -100 3 0 {name=p36 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} 540 20 3 0 {name=p37 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 540 190 3 0 {name=p38 sig_type=std_logic lab=VB1}
C {devices/iopin.sym} -400 -90 0 1 {name=p39 lab=VCMFB}
C {devices/lab_pin.sym} -350 -90 2 0 {name=p40 sig_type=std_logic lab=VCMFB}
