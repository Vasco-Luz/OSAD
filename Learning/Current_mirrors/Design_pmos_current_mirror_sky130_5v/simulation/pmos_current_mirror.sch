v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Dummys} -290 -60 0 0 0.4 0.4 {}
T {Layout pattern} -300 130 0 0 0.4 0.4 {}
T {D M1 M2 M2 M1 D
D M1 M2 M2 M1 D
D M1 M2 M2 M1 D} -310 180 0 0 0.4 0.4 {}
N -60 40 -60 60 {lab=Iref}
N -20 10 10 10 {lab=Iref}
N 10 10 10 60 {lab=Iref}
N -60 60 10 60 {lab=Iref}
N -60 -20 -60 10 {lab=VDD}
N -60 -70 -60 -20 {lab=VDD}
N 10 10 140 10 {lab=Iref}
N 180 -40 180 -20 {lab=VDD}
N -60 -40 180 -40 {lab=VDD}
N 180 -20 180 10 {lab=VDD}
N 180 40 180 60 {lab=Iout}
N -60 60 -60 100 {lab=Iref}
N 180 60 180 100 {lab=Iout}
N -250 -30 -250 -20 {lab=VDD}
N -250 -30 -60 -30 {lab=VDD}
N -210 -30 -210 10 {lab=VDD}
N -250 -20 -250 10 {lab=VDD}
N -250 40 -210 40 {lab=VDD}
N -210 10 -210 40 {lab=VDD}
N -400 80 -370 80 {lab=VDD}
N -400 110 -370 110 {lab=VDD}
N -400 140 -370 140 {lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -40 10 0 1 {name=M1
L=2.6
W=1
nf=2 mult=3
model=pfet_g5v0d10v5
spiceprefix=X
}
C {lab_pin.sym} -60 -70 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 160 10 0 0 {name=M2
L=2.6
W=1
nf=2 mult=3
model=pfet_g5v0d10v5
spiceprefix=X
}
C {lab_pin.sym} -60 100 0 0 {name=p1 sig_type=std_logic lab=Iref}
C {lab_pin.sym} 180 100 0 0 {name=p2 sig_type=std_logic lab=Iout}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -230 10 0 1 {name=M3
L=2.6
W=1
nf=1 mult=6
model=pfet_g5v0d10v5
spiceprefix=X
}
C {iopin.sym} -400 80 0 1 {name=p3 lab=VDD}
C {lab_pin.sym} -370 80 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {iopin.sym} -400 110 0 1 {name=p6 lab=Iref}
C {lab_pin.sym} -370 110 0 1 {name=p7 sig_type=std_logic lab=Iref}
C {iopin.sym} -400 140 0 1 {name=p8 lab=Iout}
C {lab_pin.sym} -370 140 0 1 {name=p9 sig_type=std_logic lab=Iout}
