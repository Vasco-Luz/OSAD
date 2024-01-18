v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -420 -70 -360 -70 {
lab=IBIAS}
N -420 -30 -360 -30 {
lab=VSS}
N -420 10 -360 10 {
lab=VIN}
N 270 150 310 150 {
lab=VSS}
N 270 180 270 190 {
lab=VSS}
N 270 90 270 120 {
lab=#net1}
N 270 60 310 60 {
lab=VSS}
N 210 150 230 150 {
lab=IBIAS}
N 270 0 270 30 {
lab=IBIAS}
N 210 10 210 150 {
lab=IBIAS}
N 210 10 270 10 {
lab=IBIAS}
N 180 60 230 60 {
lab=VB1}
N 440 60 460 60 {
lab=VB1}
N 500 90 500 120 {
lab=#net2}
N 500 180 500 190 {
lab=VSS}
N 500 150 540 150 {
lab=VSS}
N 500 60 540 60 {
lab=VSS}
N 500 0 500 30 {
lab=VIN}
N -80 -190 -10 -190 {
lab=#net3}
N -10 -190 -10 -150 {
lab=#net3}
N -80 -130 -80 -110 {
lab=VSS}
N -10 70 20 70 {
lab=VSS}
N -10 150 20 150 {
lab=VSS}
N -10 100 -10 120 {
lab=#net4}
N -10 180 -10 200 {
lab=VSS}
N -50 70 -50 150 {
lab=VB1}
N -50 40 -50 70 {
lab=VB1}
N -50 40 -10 40 {
lab=VB1}
N -10 10 -10 40 {
lab=VB1}
N 210 150 210 220 {
lab=IBIAS}
N 210 220 390 220 {
lab=IBIAS}
N 390 150 390 220 {
lab=IBIAS}
N 390 150 460 150 {
lab=IBIAS}
N -10 -60 -10 -50 {
lab=VB1}
N -10 -90 -10 -60 {
lab=VB1}
N -10 -50 -10 0 {
lab=VB1}
N -10 -0 -10 10 {
lab=VB1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 250 150 0 0 {name=M5
L=0.7
W=50
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 480 150 0 0 {name=M1
L=0.7
W=50
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 500 0 1 0 {name=p2 sig_type=std_logic lab=VIN
}
C {devices/iopin.sym} -420 -70 0 1 {name=p1 lab=IBIAS}
C {devices/lab_pin.sym} -360 -70 2 0 {name=p3 sig_type=std_logic lab=IBIAS
}
C {devices/iopin.sym} -420 -30 0 1 {name=p4 lab=VSS}
C {devices/lab_pin.sym} -360 -30 2 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/iopin.sym} -420 10 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} -360 10 2 0 {name=p9 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 270 0 2 0 {name=p10 sig_type=std_logic lab=IBIAS
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 250 60 0 0 {name=M2
L=0.7
W=50
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 480 60 0 0 {name=M3
L=0.7
W=50
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 310 150 2 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 270 190 2 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 310 60 2 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 180 60 0 0 {name=p13 sig_type=std_logic lab=VB1
}
C {devices/lab_pin.sym} 440 60 0 0 {name=p14 sig_type=std_logic lab=VB1
}
C {devices/lab_pin.sym} 500 190 2 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 540 150 2 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 540 60 2 0 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/isource.sym} -10 -120 0 0 {name=I0 value=200u}
C {devices/vsource.sym} -80 -160 0 0 {name=V1 value=5
}
C {devices/lab_pin.sym} -80 -110 2 1 {name=p19 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -30 70 0 0 {name=M4
L=2
W=10
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -30 150 0 0 {name=M6
L=2
W=10
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 20 70 2 0 {name=p20 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 20 150 2 0 {name=p21 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -10 200 2 0 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -10 20 2 0 {name=p23 sig_type=std_logic lab=VB1
}
