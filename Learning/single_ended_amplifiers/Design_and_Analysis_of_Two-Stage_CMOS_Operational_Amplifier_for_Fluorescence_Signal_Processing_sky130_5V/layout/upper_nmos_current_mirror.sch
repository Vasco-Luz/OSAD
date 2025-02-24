v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {D M10 D D M9 M9 D D M10 D 10 transistors
D M10 D D M9 M9 D D M10 D} 440 -320 0 0 0.4 0.4 {}
T {I will be doing this layout} 470 -240 0 0 0.4 0.4 {}
N 120 -70 180 -70 {lab=VSS}
N 400 -70 460 -70 {lab=VSS}
N 220 -70 360 -70 {lab=IB}
N 290 -130 290 -70 {lab=IB}
N 290 -130 400 -130 {lab=IB}
N 180 -130 180 -100 {lab=IA}
N 400 -140 400 -130 {lab=IB}
N 400 -130 400 -100 {lab=IB}
N 400 -150 400 -140 {lab=IB}
N 180 -40 180 -0 {lab=IC}
N 400 -40 400 0 {lab=ID}
N 180 -160 180 -130 {lab=IA}
N 400 -160 400 -150 {lab=IB}
N -20 -40 -20 -0 {lab=VSS}
N -20 -70 -20 -40 {lab=VSS}
N 20 -70 20 -40 {lab=VSS}
N -20 -40 20 -40 {lab=VSS}
N -20 -120 -20 -100 {lab=IA}
N -20 -120 180 -120 {lab=IA}
N 660 -40 660 0 {lab=VSS}
N 660 -70 660 -40 {lab=VSS}
N 700 -70 700 -40 {lab=VSS}
N 660 -40 700 -40 {lab=VSS}
N 660 -120 660 -100 {lab=IB}
N 660 -140 660 -120 {lab=IB}
N 400 -140 660 -140 {lab=IB}
N 540 80 540 120 {lab=VSS}
N 540 50 540 80 {lab=VSS}
N 580 50 580 80 {lab=VSS}
N 540 80 580 80 {lab=VSS}
N 540 0 540 20 {lab=ID}
N 540 -20 540 0 {lab=ID}
N 400 -20 540 -20 {lab=ID}
N -290 -250 -230 -250 {lab=VSS}
N -290 -210 -230 -210 {lab=IA}
N -290 -170 -230 -170 {lab=IB}
N -290 -130 -230 -130 {lab=IC}
N -290 -90 -230 -90 {lab=ID}
C {devices/lab_pin.sym} 120 -70 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 460 -70 0 1 {name=p5 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 200 -70 0 1 {name=M9
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 380 -70 0 0 {name=M10
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 180 -160 2 0 {name=p1 sig_type=std_logic lab=IA}
C {devices/lab_pin.sym} 400 -160 2 0 {name=p2 sig_type=std_logic lab=IB}
C {devices/lab_pin.sym} 180 0 2 0 {name=p3 sig_type=std_logic lab=IC}
C {devices/lab_pin.sym} 400 0 2 0 {name=p6 sig_type=std_logic lab=ID}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 0 -70 0 1 {name=M1
L=2
W=1
nf=1 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -20 0 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 680 -70 0 1 {name=M2
L=2
W=1
nf=1 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 660 0 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 560 50 0 1 {name=M3
L=2
W=1
nf=1 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 540 120 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {iopin.sym} -290 -250 0 1 {name=p13 lab=VSS}
C {devices/lab_pin.sym} -230 -250 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {iopin.sym} -290 -210 0 1 {name=p10 lab=IA}
C {devices/lab_pin.sym} -230 -210 2 0 {name=p11 sig_type=std_logic lab=IA}
C {iopin.sym} -290 -170 0 1 {name=p12 lab=IB}
C {devices/lab_pin.sym} -230 -170 2 0 {name=p15 sig_type=std_logic lab=IB}
C {iopin.sym} -290 -130 0 1 {name=p16 lab=IC}
C {devices/lab_pin.sym} -230 -130 2 0 {name=p17 sig_type=std_logic lab=IC}
C {iopin.sym} -290 -90 0 1 {name=p18 lab=ID}
C {devices/lab_pin.sym} -230 -90 2 0 {name=p19 sig_type=std_logic lab=ID}
