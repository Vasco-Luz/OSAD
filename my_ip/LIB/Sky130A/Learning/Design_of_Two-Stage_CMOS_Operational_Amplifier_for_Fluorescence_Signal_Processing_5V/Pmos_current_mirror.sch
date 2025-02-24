v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Layout pattern} 180 200 0 0 0.4 0.4 {}
T {D M3 M2 M2 M3 D M4 M4 M4 M4 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M4 M4 M4 M4 D  31 transistors
D M3 M2 M2 M3 D M4 M4 M4 M4 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M7 M4 M4 M4 M4 D} 20 240 0 0 0.4 0.4 {}
T {We do the layout} -20 350 0 0 0.4 0.4 {}
N -460 -110 -460 -70 {lab=VDD}
N -460 -70 -460 -40 {lab=VDD}
N -420 -40 -280 -40 {lab=IA}
N -240 -110 -240 -70 {lab=VDD}
N -240 -70 -240 -40 {lab=VDD}
N -350 -40 -350 0 {lab=IA}
N -460 0 -350 0 {lab=IA}
N -460 -110 -360 -110 {lab=VDD}
N -360 -110 -240 -110 {lab=VDD}
N -460 -10 -460 0 {lab=IA}
N 150 -30 260 -30 {lab=IA}
N 300 -110 300 -60 {lab=VDD}
N -240 -110 110 -110 {lab=VDD}
N 300 -60 300 -30 {lab=VDD}
N 110 -110 300 -110 {lab=VDD}
N 750 -30 860 -30 {lab=IA}
N 900 -110 900 -60 {lab=VDD}
N 900 -60 900 -30 {lab=VDD}
N 710 -110 900 -110 {lab=VDD}
N 300 -110 710 -110 {lab=VDD}
N -460 -0 -460 60 {lab=IA}
N -240 -10 -240 50 {lab=IB}
N -240 50 -240 60 {lab=IB}
N 300 0 300 60 {lab=IC}
N 300 60 300 70 {lab=IC}
N 900 0 900 60 {lab=ID}
N 900 60 900 70 {lab=ID}
N -870 -60 -810 -60 {lab=VDD}
N -880 40 -820 40 {lab=IA}
N -880 80 -820 80 {lab=IB}
N -890 120 -830 120 {lab=IC}
N -890 160 -830 160 {lab=ID}
N -60 -110 -60 -80 {lab=VDD}
N -20 -110 -20 -90 {lab=VDD}
N -20 -90 -20 -80 {lab=VDD}
N -60 -50 -60 10 {lab=IA}
C {devices/lab_pin.sym} -360 -110 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -260 -40 0 0 {name=M2
L=2.2
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -440 -40 0 1 {name=M3
L=2.2
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 280 -30 0 0 {name=M4
L=2.2
W=1
nf=2 mult=8
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 880 -30 0 0 {name=M7
L=2.2
W=1
nf=2 mult=16
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 750 -30 2 1 {name=p4 sig_type=std_logic lab=IA}
C {devices/lab_pin.sym} 150 -30 2 1 {name=p2 sig_type=std_logic lab=IA}
C {devices/lab_pin.sym} -460 20 2 1 {name=p3 sig_type=std_logic lab=IA}
C {devices/lab_pin.sym} -240 20 2 1 {name=p5 sig_type=std_logic lab=IB}
C {devices/lab_pin.sym} 300 20 2 1 {name=p6 sig_type=std_logic lab=IC}
C {devices/lab_pin.sym} 900 30 2 1 {name=p7 sig_type=std_logic lab=ID}
C {iopin.sym} -870 -60 0 1 {name=p13 lab=VDD}
C {devices/lab_pin.sym} -810 -60 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {iopin.sym} -880 40 0 1 {name=p8 lab=IA}
C {devices/lab_pin.sym} -820 40 2 0 {name=p9 sig_type=std_logic lab=IA}
C {iopin.sym} -880 80 0 1 {name=p10 lab=IB}
C {devices/lab_pin.sym} -820 80 2 0 {name=p11 sig_type=std_logic lab=IB}
C {iopin.sym} -890 120 0 1 {name=p12 lab=IC}
C {devices/lab_pin.sym} -830 120 2 0 {name=p15 sig_type=std_logic lab=IC}
C {iopin.sym} -890 160 0 1 {name=p16 lab=ID}
C {devices/lab_pin.sym} -830 160 2 0 {name=p17 sig_type=std_logic lab=ID}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -40 -80 0 1 {name=M1
L=2.2
W=1
nf=1 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -60 -30 2 1 {name=p18 sig_type=std_logic lab=IA}
