v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 150 50 150 {
lab=#net1}
N -130 20 -130 120 {
lab=#net1}
N -130 180 -130 210 {
lab=VSS}
N 90 180 90 210 {
lab=VSS}
N -140 150 -130 150 {
lab=VSS}
N -140 150 -140 180 {
lab=VSS}
N -140 180 -130 180 {
lab=VSS}
N 90 150 100 150 {
lab=VSS}
N 100 150 100 180 {
lab=VSS}
N 90 180 100 180 {
lab=VSS}
N 90 50 90 120 {
lab=#net2}
N -130 100 -50 100 {
lab=#net1}
N -50 100 -50 150 {
lab=#net1}
N -420 -70 -360 -70 {
lab=IBIAS}
N -420 -30 -360 -30 {
lab=VSS}
N -420 10 -360 10 {
lab=VIN}
N -130 -70 -130 -40 {
lab=IBIAS}
N -170 -10 -130 -10 {
lab=VSS}
N -130 -50 -90 -50 {
lab=IBIAS}
N -90 -50 -90 -10 {
lab=IBIAS}
N -90 -10 50 -10 {
lab=IBIAS}
N 90 -70 90 -40 {
lab=VIN}
N 90 20 90 50 {
lab=#net2}
N 90 -10 150 -10 {}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -110 150 0 1 {name=M5
L=0.7
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 70 150 0 0 {name=M1
L=0.7
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 90 -70 1 0 {name=p2 sig_type=std_logic lab=VIN
}
C {devices/iopin.sym} -420 -70 0 1 {name=p1 lab=IBIAS}
C {devices/lab_pin.sym} -360 -70 2 0 {name=p3 sig_type=std_logic lab=IBIAS
}
C {devices/iopin.sym} -420 -30 0 1 {name=p4 lab=VSS}
C {devices/lab_pin.sym} -360 -30 2 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -130 210 2 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 90 210 2 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/iopin.sym} -420 10 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} -360 10 2 0 {name=p9 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} -130 -70 2 0 {name=p10 sig_type=std_logic lab=IBIAS
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -110 -10 0 1 {name=M2
L=0.7
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -170 -10 2 1 {name=p11 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 70 -10 0 0 {name=M3
L=0.7
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 150 -10 2 0 {name=p12 sig_type=std_logic lab=VSS
}
