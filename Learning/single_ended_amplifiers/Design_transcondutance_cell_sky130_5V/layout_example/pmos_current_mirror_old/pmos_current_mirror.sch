v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -250 120 -210 {lab=VDD}
N 120 -210 120 -180 {lab=VDD}
N 160 -180 300 -180 {lab=IA}
N 340 -250 340 -210 {lab=VDD}
N 340 -210 340 -180 {lab=VDD}
N 230 -180 230 -140 {lab=IA}
N 120 -140 230 -140 {lab=IA}
N 120 -250 220 -250 {lab=VDD}
N 220 -250 340 -250 {lab=VDD}
N 120 -150 120 -140 {lab=IA}
N 120 -140 120 -70 {lab=IA}
N 340 -150 340 -80 {lab=IB}
N 520 -210 520 -180 {lab=VDD}
N 520 -250 520 -210 {lab=VDD}
N 340 -250 520 -250 {lab=VDD}
N 480 -250 480 -180 {lab=VDD}
N 520 -180 520 -150 {lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 140 -180 0 1 {name=M5
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 320 -180 0 0 {name=M6
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 220 -250 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 120 -70 0 0 {name=p1 sig_type=std_logic lab=IA}
C {devices/lab_pin.sym} 340 -80 0 0 {name=p2 sig_type=std_logic lab=IB}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 500 -180 0 0 {name=M1
L=3
W=1.5
nf=1 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
