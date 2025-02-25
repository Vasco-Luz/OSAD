v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {D M11 M4 M4 M11 D 6 transistors
D M11 M4 M4 M11 D} 520 -200 0 0 0.4 0.4 {}
N 440 -80 440 -50 {lab=VSS}
N 200 -80 400 -80 {lab=Ia}
N 180 -80 200 -80 {lab=Ia}
N 140 -140 220 -140 {lab=Ia}
N 220 -140 220 -80 {lab=Ia}
N 140 -80 140 -50 {lab=VSS}
N 140 -190 140 -110 {lab=Ia}
N 440 -190 440 -110 {lab=Ib}
N 140 -50 140 -0 {lab=VSS}
N 440 -50 440 0 {lab=VSS}
N 140 -0 440 0 {lab=VSS}
N -210 -100 -150 -100 {lab=VSS}
N -210 -70 -150 -70 {lab=Ia}
N -210 -40 -150 -40 {lab=Ib}
N -0 -120 0 -110 {lab=Ia}
N 0 -120 140 -120 {lab=Ia}
N 40 -80 40 0 {lab=VSS}
N 40 0 140 0 {lab=VSS}
N 0 -80 0 -50 {lab=VSS}
N -0 -50 -0 -0 {lab=VSS}
N -0 -0 40 -0 {lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 420 -80 0 0 {name=M4
L=2
W=1.5
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 160 -80 0 1 {name=M11
L=2
W=1.5
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {iopin.sym} -210 -100 0 1 {name=p15 lab=VSS}
C {devices/lab_pin.sym} -150 -100 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 0 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 140 -190 2 0 {name=p2 sig_type=std_logic lab=Ia}
C {iopin.sym} -210 -70 0 1 {name=p3 lab=Ia}
C {devices/lab_pin.sym} -150 -70 2 0 {name=p4 sig_type=std_logic lab=Ia}
C {devices/lab_pin.sym} 440 -190 2 0 {name=p5 sig_type=std_logic lab=Ib}
C {iopin.sym} -210 -40 0 1 {name=p6 lab=Ib}
C {devices/lab_pin.sym} -150 -40 2 0 {name=p7 sig_type=std_logic lab=Ib}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 20 -80 0 1 {name=M1
L=2
W=1.5
nf=1 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
