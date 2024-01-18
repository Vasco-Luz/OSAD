v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -660 -410 -610 -410 {
lab=IBIAS}
N -190 -50 -190 -20 {
lab=VB2}
N -240 10 -210 10 {
lab=VDD}
N -190 40 -190 60 {
lab=VB1}
N -190 120 -190 150 {
lab=#net1}
N -190 210 -190 230 {
lab=VSS}
N -260 180 -190 180 {
lab=VSS}
N -260 90 -190 90 {
lab=VSS}
N -150 90 -70 90 {
lab=VB2}
N -70 -30 -70 90 {
lab=VB2}
N -190 -30 -70 -30 {
lab=VB2}
N -150 180 -130 180 {
lab=VB1}
N -130 60 -130 180 {
lab=VB1}
N -190 60 -130 60 {
lab=VB1}
N -190 -290 -190 -270 {
lab=VDD}
N -70 90 0 90 {
lab=VB2}
N 40 90 110 90 {
lab=VSS}
N 40 180 110 180 {
lab=VSS}
N -130 180 0 180 {
lab=VB1}
N 40 210 40 230 {
lab=VSS}
N 40 120 40 150 {
lab=#net2}
N 40 30 40 60 {
lab=VB3}
N 40 -230 40 -210 {
lab=VDD}
N 30 -180 40 -180 {
lab=VDD}
N 30 -210 30 -180 {
lab=VDD}
N 30 -210 40 -210 {
lab=VDD}
N 30 -100 40 -100 {
lab=#net3}
N 30 -130 30 -100 {
lab=#net3}
N 30 -130 40 -130 {
lab=#net3}
N 40 -150 40 -130 {
lab=#net3}
N 40 -70 40 -50 {
lab=VB4}
N 40 10 40 30 {
lab=VB3}
N 80 -100 80 30 {
lab=VB3}
N 40 30 80 30 {
lab=VB3}
N 80 -180 90 -180 {
lab=VB4}
N 90 -180 90 -60 {
lab=VB4}
N 40 -60 90 -60 {
lab=VB4}
N -190 -240 -180 -240 {
lab=VDD}
N -180 -270 -180 -240 {
lab=VDD}
N -190 -270 -180 -270 {
lab=VDD}
N -400 -190 -360 -190 {
lab=#net4}
N -360 -240 -360 -190 {
lab=#net4}
N -360 -240 -230 -240 {
lab=#net4}
N -400 -290 -400 -270 {
lab=VDD}
N -410 -240 -400 -240 {
lab=VDD}
N -410 -270 -410 -240 {
lab=VDD}
N -410 -270 -400 -270 {
lab=VDD}
N -400 -190 -400 -180 {
lab=#net4}
N -410 -150 -400 -150 {
lab=#net4}
N -410 -180 -410 -150 {
lab=#net4}
N -410 -180 -400 -180 {
lab=#net4}
N -360 -150 -230 -150 {
lab=IBIAS}
N -400 -120 -400 -80 {
lab=IBIAS}
N -400 -100 -360 -100 {
lab=IBIAS}
N -360 -150 -360 -100 {
lab=IBIAS}
N -190 -120 -190 -50 {
lab=VB2}
N -190 -150 -180 -150 {
lab=#net5}
N -180 -180 -180 -150 {
lab=#net5}
N -190 -180 -180 -180 {
lab=#net5}
N -190 -210 -190 -180 {
lab=#net5}
N -400 -210 -400 -190 {
lab=#net4}
N -400 -80 -400 -30 {
lab=IBIAS}
N -660 -380 -610 -380 {
lab=VDD}
N -660 -350 -610 -350 {
lab=VSS}
N -660 -320 -610 -320 {
lab=VB1}
N -660 -290 -610 -290 {
lab=VB2}
N -660 -260 -610 -260 {
lab=VB3}
N -660 -230 -610 -230 {
lab=VB4}
C {devices/iopin.sym} -660 -410 0 1 {name=p2 lab=IBIAS}
C {devices/lab_pin.sym} -610 -410 2 0 {name=p7 sig_type=std_logic lab=IBIAS}
C {sky130_fd_pr/res_high_po_0p69.sym} -190 10 0 0 {name=R7
L=1*20
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -170 90 0 1 {name=M5
L=0.8
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -170 180 0 1 {name=M1
L=1.5
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -190 -290 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -240 10 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 20 180 0 0 {name=M3
L=1.5
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 20 90 0 0 {name=M2
L=0.8
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 60 -180 0 1 {name=M9
L=2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 60 -100 0 1 {name=M4
L=0.8
W=15
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p69.sym} 40 -20 0 0 {name=R1
L=1*20
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 40 -230 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 20 -20 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -210 -240 0 0 {name=M8
L=2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -380 -240 0 1 {name=M10
L=2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -400 -290 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -380 -150 0 1 {name=M11
L=0.8
W=15
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -210 -150 0 0 {name=M12
L=0.8
W=15
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -400 -30 3 0 {name=p4 sig_type=std_logic lab=IBIAS}
C {devices/iopin.sym} -660 -380 0 1 {name=p8 lab=VDD}
C {devices/lab_pin.sym} -610 -380 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -660 -350 0 1 {name=p11 lab=VSS}
C {devices/lab_pin.sym} -610 -350 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -260 90 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -260 180 2 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 110 180 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 110 90 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -190 230 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 40 230 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -60 180 3 0 {name=p19 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} -60 90 3 0 {name=p20 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 80 30 2 0 {name=p21 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} 90 -180 2 0 {name=p22 sig_type=std_logic lab=VB4}
C {devices/iopin.sym} -660 -320 0 1 {name=p23 lab=VB1}
C {devices/lab_pin.sym} -610 -320 2 0 {name=p24 sig_type=std_logic lab=VB1}
C {devices/iopin.sym} -660 -290 0 1 {name=p25 lab=VB2}
C {devices/lab_pin.sym} -610 -290 2 0 {name=p26 sig_type=std_logic lab=VB2}
C {devices/iopin.sym} -660 -260 0 1 {name=p27 lab=VB3}
C {devices/lab_pin.sym} -610 -260 2 0 {name=p28 sig_type=std_logic lab=VB3}
C {devices/iopin.sym} -660 -230 0 1 {name=p29 lab=VB4}
C {devices/lab_pin.sym} -610 -230 2 0 {name=p30 sig_type=std_logic lab=VB4}
