v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {D M7 D M8 M8 M8 M8 M8 M8 M8 M8 D M7 D  14 transistors
D M7 D M8 M8 M8 M8 M8 M8 M8 M8 D M7 D} 140 280 0 0 0.4 0.4 {}
N 170 110 250 110 {lab=ID}
N 270 50 270 110 {lab=ID}
N 270 50 350 50 {lab=ID}
N 350 50 350 80 {lab=ID}
N 350 110 350 140 {lab=VSS}
N 250 110 310 110 {lab=ID}
N 110 110 130 110 {lab=VSS}
N 130 30 130 80 {lab=IC}
N 130 140 130 180 {lab=IE}
N 350 140 350 180 {lab=VSS}
N -380 -30 -320 -30 {lab=VSS}
N -380 10 -320 10 {lab=IC}
N 350 10 350 50 {lab=ID}
N -390 60 -330 60 {lab=ID}
N -390 100 -330 100 {lab=IE}
N 600 120 600 170 {lab=VSS}
N 560 120 560 150 {lab=VSS}
N 560 150 600 150 {lab=VSS}
N 500 -0 500 30 {lab=VSS}
N 460 0 460 20 {lab=VSS}
N 460 20 460 30 {lab=VSS}
N 460 30 500 30 {lab=VSS}
N 500 30 500 50 {lab=VSS}
N 600 90 620 90 {lab=ID}
N 620 90 630 90 {lab=ID}
N 500 -80 500 -30 {lab=IC}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 330 110 0 0 {name=M7
L=3.2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 150 110 0 1 {name=M8
L=3.2
W=1
nf=8 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {iopin.sym} -380 -30 0 1 {name=p15 lab=VSS}
C {devices/lab_pin.sym} -320 -30 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {iopin.sym} -380 10 0 1 {name=p17 lab=IC}
C {devices/lab_pin.sym} -320 10 2 0 {name=p18 sig_type=std_logic lab=IC}
C {devices/lab_pin.sym} 350 10 2 0 {name=p1 sig_type=std_logic lab=ID}
C {devices/lab_pin.sym} 350 180 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 130 30 2 0 {name=p3 sig_type=std_logic lab=IC}
C {devices/lab_pin.sym} 130 180 2 0 {name=p4 sig_type=std_logic lab=IE}
C {devices/lab_pin.sym} 110 110 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {iopin.sym} -390 60 0 1 {name=p6 lab=ID}
C {devices/lab_pin.sym} -330 60 2 0 {name=p7 sig_type=std_logic lab=ID}
C {iopin.sym} -390 100 0 1 {name=p8 lab=IE}
C {devices/lab_pin.sym} -330 100 2 0 {name=p9 sig_type=std_logic lab=IE}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 580 120 0 0 {name=M1
L=3.2
W=1
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 600 170 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 480 0 0 0 {name=M2
L=3.2
W=1
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 500 50 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 90 2 0 {name=p12 sig_type=std_logic lab=ID}
C {devices/lab_pin.sym} 500 -80 2 0 {name=p13 sig_type=std_logic lab=IC}
