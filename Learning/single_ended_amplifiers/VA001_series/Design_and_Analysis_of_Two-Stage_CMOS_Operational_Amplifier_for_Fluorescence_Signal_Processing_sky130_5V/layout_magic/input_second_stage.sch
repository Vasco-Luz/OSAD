v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 0 120 30 {lab=#net1}
N 120 30 120 80 {lab=#net1}
N -340 -100 -280 -100 {lab=VSS}
N 30 -0 80 -0 {lab=Ib}
N -340 -60 -280 -60 {lab=Ib}
N 120 -120 120 -30 {lab=VOUT}
N -340 -20 -280 -20 {lab=VOUT}
N 340 10 340 40 {lab=VSS}
N 300 10 300 40 {lab=VSS}
N 300 -20 340 -20 {lab=VSS}
N 300 -20 300 10 {lab=VSS}
N 300 40 300 70 {lab=VSS}
N 300 70 340 70 {lab=VSS}
N 340 40 340 70 {lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 100 0 0 0 {name=M13
L=1
W=4
nf=1 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {iopin.sym} -340 -100 0 1 {name=p15 lab=VSS}
C {devices/lab_pin.sym} -280 -100 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 90 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {iopin.sym} -340 -60 0 1 {name=p2 lab=Ib}
C {devices/lab_pin.sym} -280 -60 2 0 {name=p3 sig_type=std_logic lab=Ib}
C {devices/lab_pin.sym} 30 0 2 1 {name=p4 sig_type=std_logic lab=Ib}
C {iopin.sym} -340 -20 0 1 {name=p5 lab=VOUT}
C {devices/lab_pin.sym} -280 -20 2 0 {name=p6 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 120 -110 2 0 {name=p7 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 320 10 0 0 {name=M1
L=1
W=4
nf=2 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 340 70 2 0 {name=p8 sig_type=std_logic lab=VSS}
