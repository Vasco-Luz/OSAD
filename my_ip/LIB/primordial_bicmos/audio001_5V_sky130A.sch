v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Common emitter with an NMOS as the input} -50 -250 0 0 1 1 {}
N -150 -30 -80 -30 {
lab=VDD}
N -150 10 -80 10 {
lab=VSS}
N -150 50 -80 50 {
lab=VIN}
N -150 90 -80 90 {
lab=VOUT}
N 350 140 350 180 {
lab=#net1}
N 350 180 520 180 {
lab=#net1}
N 560 210 560 270 {
lab=VSS}
N 350 110 400 110 {
lab=VSS}
N 560 180 610 180 {
lab=VSS}
N 350 -10 350 80 {
lab=VDD}
N 350 -10 560 -10 {
lab=VDD}
N 560 -10 560 60 {
lab=VDD}
N 560 120 560 150 {
lab=VOUT}
N 560 140 690 140 {
lab=VOUT}
N 240 110 310 110 {
lab=VIN}
N 490 90 540 90 {
lab=VSS}
C {devices/iopin.sym} -150 -30 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -80 -30 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -150 10 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -80 10 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -150 50 0 1 {name=p12 lab=VIN}
C {devices/lab_pin.sym} -80 50 2 0 {name=p13 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} -150 90 0 1 {name=p17 lab=VOUT}
C {devices/lab_pin.sym} -80 90 2 0 {name=p18 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 400 110 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 180 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 330 110 0 0 {name=M37
L=0.5
W=4
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 690 140 2 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 560 270 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 110 2 1 {name=p10 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 430 -10 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/npn_05v5.sym} 540 180 0 0 {name=Q2
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_2p85.sym} 560 90 0 0 {name=R14

L=4
model=res_high_po_2p85
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 490 90 2 1 {name=p11 sig_type=std_logic lab=VSS}
