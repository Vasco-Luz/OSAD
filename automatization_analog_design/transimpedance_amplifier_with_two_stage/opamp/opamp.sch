v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 -100 430 -100 {
lab=VDD}
N 250 -100 250 -70 {
lab=VDD}
N 430 -100 430 -70 {
lab=VDD}
N -360 -290 -290 -290 {
lab=VDD}
N -360 -250 -290 -250 {
lab=VSS}
N -360 -210 -290 -210 {
lab=VIN-}
N -360 -170 -290 -170 {
lab=VIN+}
N -360 -130 -290 -130 {
lab=VOUT}
N 290 -70 390 -70 {
lab=#net1}
N 250 -40 250 60 {
lab=#net1}
N 430 -40 430 60 {
lab=#net2}
N 290 90 390 90 {
lab=#net2}
N 340 -70 340 -30 {
lab=#net1}
N 250 -10 340 -10 {
lab=#net1}
N 340 40 340 90 {
lab=#net2}
N 340 40 430 40 {
lab=#net2}
N 430 90 500 90 {
lab=VSS}
N 250 120 250 190 {
lab=#net3}
N 430 120 430 190 {
lab=#net4}
N 290 220 390 220 {
lab=#net4}
N 340 170 340 220 {
lab=#net4}
N 340 170 430 170 {
lab=#net4}
N 250 250 250 310 {
lab=#net5}
N 250 370 250 410 {
lab=VSS}
N 250 410 430 410 {
lab=VSS}
N 430 250 430 410 {
lab=VSS}
N 430 220 500 220 {
lab=VSS}
N 180 220 250 220 {
lab=VSS}
N 190 90 250 90 {
lab=VSS}
N 340 -30 340 -10 {
lab=#net1}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 410 -70 0 0 {name=M2
L=L_M_1_2
W=W_M_1_2
nf= 2
mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 270 -70 0 1 {name=M1
L=L_M_1_2
W=W_M_1_2
nf= 2
mult=m_M_1_2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} -360 -290 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -290 -290 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -360 -250 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -290 -250 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -360 -210 0 1 {name=p12 lab=VIN-}
C {devices/lab_pin.sym} -290 -210 2 0 {name=p13 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -360 -170 0 1 {name=p17 lab=VIN+}
C {devices/lab_pin.sym} -290 -170 2 0 {name=p18 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -360 -130 0 1 {name=p19 lab=VOUT}
C {devices/lab_pin.sym} -290 -130 2 0 {name=p20 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 340 -100 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 410 90 0 0 {name=M4
L=L_M_3_4
W=W_M_3_4
nf=2 mult=m_M_3_4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 270 90 0 1 {name=M3
L=L_M_3_4
W=W_M_3_4
nf=2 mult=m_M_3_4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 500 90 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 190 90 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 270 220 0 1 {name=M5
L=L_M_5_6
W=W_M_5_6
nf=2 mult=4*m_M_5_6
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 410 220 0 0 {name=M6
L=L_M_5_6
W=W_M_5_6
nf=2 mult=m_M_5_6
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/res.sym} 250 340 0 0 {name=R1
value=R1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 500 220 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 220 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 410 3 0 {name=p10 sig_type=std_logic lab=VSS}
