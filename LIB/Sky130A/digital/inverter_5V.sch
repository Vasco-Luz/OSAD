v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -10 40 60 {lab=Y}
N -0 -40 -0 90 {lab=A}
N 40 -70 40 -40 {lab=VDD}
N 40 90 40 120 {lab=VSS}
N 40 -100 40 -70 {lab=VDD}
N 40 120 40 150 {lab=VSS}
N -290 -40 -220 -40 {
lab=VDD}
N -290 0 -220 0 {
lab=VSS}
N -290 40 -220 40 {
lab=A}
N -290 80 -220 80 {
lab=Y}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 20 -40 0 0 {name=M1
L=0.5
W=1
nf=3 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 20 90 0 0 {name=M2
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 40 -100 2 1 {name=p19 lab=VDD}
C {devices/lab_pin.sym} 40 150 2 1 {name=p1 lab=VSS}
C {devices/lab_pin.sym} 0 30 2 1 {name=p2 lab=A}
C {devices/lab_pin.sym} 40 30 2 0 {name=p3 lab=Y}
C {devices/iopin.sym} -290 -40 0 1 {name=p4 lab=VDD}
C {devices/lab_pin.sym} -220 -40 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -290 0 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -220 0 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -290 40 0 1 {name=p12 lab=A}
C {devices/lab_pin.sym} -220 40 2 0 {name=p13 sig_type=std_logic lab=A}
C {devices/iopin.sym} -290 80 0 1 {name=p17 lab=Y}
C {devices/lab_pin.sym} -220 80 2 0 {name=p18 sig_type=std_logic lab=Y}
