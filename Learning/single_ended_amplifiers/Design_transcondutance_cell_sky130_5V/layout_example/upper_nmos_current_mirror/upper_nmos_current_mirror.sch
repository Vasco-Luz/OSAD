v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 -110 270 0 {lab=IC}
N 490 -110 490 -30 {lab=ID}
N 210 -140 270 -140 {lab=VSS}
N 490 -140 550 -140 {lab=VSS}
N 310 -140 450 -140 {lab=IB}
N 380 -200 380 -140 {lab=IB}
N 380 -200 490 -200 {lab=IB}
N 270 -200 270 -170 {lab=IA}
N 490 -210 490 -200 {lab=IB}
N 490 -200 490 -170 {lab=IB}
N 270 -240 270 -200 {lab=IA}
N 490 -240 490 -210 {lab=IB}
N 690 -130 750 -130 {lab=VSS}
N 690 -160 700 -160 {lab=VSS}
N 700 -160 700 -130 {lab=VSS}
N 650 -180 650 -130 {lab=VSS}
N 650 -180 690 -180 {lab=VSS}
N 690 -180 690 -160 {lab=VSS}
N 690 -100 710 -100 {lab=VSS}
N 710 -130 710 -100 {lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 290 -140 0 1 {name=M9
L=1.2
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 470 -140 0 0 {name=M10
L=1.2
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 210 -140 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 550 -140 0 1 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 270 -240 0 0 {name=p1 sig_type=std_logic lab=IA
}
C {devices/lab_pin.sym} 490 -240 0 0 {name=p2 sig_type=std_logic lab=IB
}
C {devices/lab_pin.sym} 270 0 0 0 {name=p3 sig_type=std_logic lab=IC
}
C {devices/lab_pin.sym} 490 -30 0 0 {name=p6 sig_type=std_logic lab=ID
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 670 -130 0 0 {name=M1
L=1.2
W=0.6
nf=1 mult=12
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 750 -130 0 1 {name=p7 sig_type=std_logic lab=VSS
}
