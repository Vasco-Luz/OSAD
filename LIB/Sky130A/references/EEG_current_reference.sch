v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -630 -100 -610 -100 {lab=VDD}
N -630 -70 -610 -70 {lab=VSS}
N -630 -40 -610 -40 {lab=VREF}
N -300 -260 -300 -220 {lab=VDD}
N -80 -260 -80 -220 {lab=VDD}
N -260 180 -180 180 {lab=#net1}
N -160 120 -160 180 {lab=#net1}
N -160 120 -80 120 {lab=#net1}
N -80 120 -80 150 {lab=#net1}
N -320 280 -320 320 {lab=VSS}
N -320 320 -140 320 {lab=VSS}
N -300 310 -300 320 {lab=VSS}
N -80 180 -80 210 {lab=VSS}
N -180 180 -120 180 {lab=#net1}
N -80 210 -80 320 {lab=VSS}
N -140 320 -80 320 {lab=VSS}
N -320 180 -300 180 {lab=VSS}
N -320 180 -320 280 {lab=VSS}
N -300 210 -300 250 {lab=#net2}
N -300 -260 -200 -260 {lab=VDD}
N -200 -260 -80 -260 {lab=VDD}
N -300 40 -300 150 {lab=#net3}
N -80 40 -80 120 {lab=#net1}
N -360 10 -300 10 {lab=VSS}
N -80 10 -20 10 {lab=VSS}
N -260 10 -120 10 {lab=#net4}
N -190 -50 -190 10 {lab=#net4}
N -190 -50 -80 -50 {lab=#net4}
N -300 -50 -300 -20 {lab=VB1}
N -300 -150 -300 -110 {lab=VB1}
N -80 -60 -80 -50 {lab=#net4}
N -80 -50 -80 -20 {lab=#net4}
N -80 -160 -80 -130 {lab=#net4}
N -80 -70 -80 -60 {lab=#net4}
N -300 -220 -300 -190 {lab=VDD}
N -260 -190 -120 -190 {lab=VB1}
N -80 -220 -80 -190 {lab=VDD}
N -190 -190 -190 -150 {lab=VB1}
N -300 -150 -190 -150 {lab=VB1}
N -300 -160 -300 -150 {lab=VB1}
N -300 -110 -300 -50 {lab=VB1}
N -80 -130 -80 -70 {lab=#net4}
C {iopin.sym} -630 -100 0 1 {name=p13 lab=VDD}
C {devices/lab_pin.sym} -610 -100 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {iopin.sym} -630 -70 0 1 {name=p15 lab=VSS}
C {devices/lab_pin.sym} -610 -70 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {iopin.sym} -630 -40 0 1 {name=p21 lab=VREF}
C {devices/lab_pin.sym} -610 -40 2 0 {name=p22 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} -220 320 3 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -200 -260 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -360 10 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -20 10 0 1 {name=p5 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -280 10 0 1 {name=M9
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -100 10 0 0 {name=M10
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -100 -190 0 0 {name=M3
L=2.5
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -280 -190 0 1 {name=M4
L=2.5
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -100 180 0 0 {name=M5
L=3
W=1.2
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -280 180 0 1 {name=M6
L=3
W=1.2
nf=2 mult=8
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} -300 280 0 0 {name=R2
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -190 -150 2 0 {name=p1 sig_type=std_logic lab=VREF}
