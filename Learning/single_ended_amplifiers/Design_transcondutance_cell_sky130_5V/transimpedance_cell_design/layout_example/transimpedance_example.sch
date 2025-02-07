v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -290 -310 -290 -270 {lab=VDD}
N -290 -270 -290 -240 {lab=VDD}
N -250 -240 -110 -240 {lab=VB1}
N -70 -310 -70 -270 {lab=VDD}
N -70 -270 -70 -240 {lab=VDD}
N -180 -240 -180 -200 {lab=VB1}
N -290 -200 -180 -200 {lab=VB1}
N -250 130 -170 130 {lab=#net1}
N -150 70 -150 130 {lab=#net1}
N -150 70 -70 70 {lab=#net1}
N -70 70 -70 100 {lab=#net1}
N -310 230 -310 270 {lab=VSS}
N -310 270 -130 270 {lab=VSS}
N -290 260 -290 270 {lab=VSS}
N -70 130 -70 160 {lab=VSS}
N -170 130 -110 130 {lab=#net1}
N -70 160 -70 270 {lab=VSS}
N -130 270 -70 270 {lab=VSS}
N -310 130 -290 130 {lab=VSS}
N -310 130 -310 230 {lab=VSS}
N -290 160 -290 200 {lab=#net2}
N -290 -310 -190 -310 {lab=VDD}
N -190 -310 -70 -310 {lab=VDD}
N -290 -210 -290 -200 {lab=VB1}
N -290 -10 -290 100 {lab=#net3}
N -70 -10 -70 70 {lab=#net1}
N -350 -40 -290 -40 {lab=VSS}
N -70 -40 -10 -40 {lab=VSS}
N -250 -40 -110 -40 {lab=VB2}
N -180 -100 -180 -40 {lab=VB2}
N -180 -100 -70 -100 {lab=VB2}
N -290 -100 -290 -70 {lab=VB1}
N -290 -200 -290 -160 {lab=VB1}
N -70 -110 -70 -100 {lab=VB2}
N -70 -100 -70 -70 {lab=VB2}
N -70 -210 -70 -180 {lab=VB2}
N -70 -120 -70 -110 {lab=VB2}
N -290 -160 -290 -100 {lab=VB1}
N -70 -180 -70 -120 {lab=VB2}
N -540 -260 -510 -260 {lab=VDD}
N -540 -220 -510 -220 {lab=VSS}
N -540 -180 -510 -180 {lab=VB1}
N -540 -140 -510 -140 {lab=VB2}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -270 -240 0 1 {name=M5
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -90 -240 0 0 {name=M6
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -210 270 3 0 {name=p2 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -270 130 0 1 {name=M7
L=4
W=0.6
nf=2 mult=8
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -90 130 0 0 {name=M8
L=4
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -190 -310 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -270 -40 0 1 {name=M9
L=2
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -90 -40 0 0 {name=M10
L=2
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -350 -40 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -10 -40 0 1 {name=p5 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/res_high_po_0p35.sym} -290 230 0 0 {name=R2
L=30
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {iopin.sym} -540 -260 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -510 -260 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {iopin.sym} -540 -220 0 1 {name=p7 lab=VSS}
C {devices/lab_pin.sym} -510 -220 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {iopin.sym} -540 -180 0 1 {name=p9 lab=VB1}
C {devices/lab_pin.sym} -510 -180 2 0 {name=p10 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} -290 -150 2 0 {name=p11 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} -70 -150 2 0 {name=p12 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} -510 -140 2 0 {name=p13 sig_type=std_logic lab=VB2}
C {iopin.sym} -540 -140 0 1 {name=p14 lab=VB2}
