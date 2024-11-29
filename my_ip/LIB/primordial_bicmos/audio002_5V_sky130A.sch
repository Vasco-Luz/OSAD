v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 -30 -80 -30 {
lab=VDD}
N -150 10 -80 10 {
lab=VSS}
N -150 50 -80 50 {
lab=VIN}
N -150 90 -80 90 {
lab=VOUT}
N 680 250 810 250 {
lab=VOUT}
N 240 110 310 110 {
lab=VIN}
N 350 0 350 80 {
lab=VDD}
N 350 80 350 110 {
lab=VDD}
N 350 140 350 320 {
lab=#net1}
N 280 350 310 350 {
lab=VSS}
N 280 350 280 430 {
lab=VSS}
N 280 430 350 430 {
lab=VSS}
N 350 380 350 430 {
lab=VSS}
N 350 350 410 350 {
lab=VDD}
N 350 180 450 180 {
lab=#net1}
N 490 210 490 260 {
lab=#net2}
N 490 260 540 260 {
lab=#net2}
N 580 290 580 330 {
lab=#net3}
N 580 330 640 330 {
lab=#net3}
N 490 180 520 180 {
lab=VSS}
N 580 260 610 260 {
lab=VSS}
N 680 330 710 330 {
lab=VSS}
N 350 0 490 0 {
lab=VDD}
N 490 0 490 150 {
lab=VDD}
N 580 0 580 230 {
lab=VDD}
N 490 -0 580 0 {
lab=VDD}
N 350 430 680 430 {
lab=VSS}
N 680 360 680 370 {
lab=#net4}
N 580 0 680 -0 {
lab=VDD}
N 680 -0 680 150 {
lab=VDD}
N 680 210 680 300 {
lab=VOUT}
C {devices/iopin.sym} -150 -30 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -80 -30 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -150 10 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -80 10 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -150 50 0 1 {name=p12 lab=VIN}
C {devices/lab_pin.sym} -80 50 2 0 {name=p13 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} -150 90 0 1 {name=p17 lab=VOUT}
C {devices/lab_pin.sym} -80 90 2 0 {name=p18 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 810 250 2 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 240 110 2 1 {name=p10 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 280 430 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 350 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 350 0 2 1 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/npn_05v5.sym} 470 180 0 0 {name=Q2
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 560 260 0 0 {name=Q1
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 660 330 0 0 {name=Q3
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {devices/lab_pin.sym} 520 180 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 260 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 710 330 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {res.sym} 680 400 0 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {res.sym} 680 180 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 330 110 0 0 {name=M2
L=0.5
W=4
nf=4 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 330 350 0 0 {name=M1
L=0.5
W=3
nf=4 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
