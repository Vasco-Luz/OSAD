v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -240 -60 -240 {
lab=VDD}
N -90 -210 -60 -210 {
lab=VSS}
N -90 -180 -60 -180 {
lab=VIN}
N 470 -210 540 -210 {
lab=VOUT}
N -90 -150 -60 -150 {
lab=VOUT}
N 350 -140 350 -110 {
lab=VSS}
N 350 -360 350 -320 {
lab=VDD}
N 180 -170 230 -170 {
lab=VIN}
N 420 -210 470 -210 {
lab=VOUT}
N 260 -210 260 -190 {
lab=VDD}
N 350 -230 350 -200 {
lab=VOUT}
N 350 -140 350 -110 {
lab=VSS}
N 350 -170 390 -170 {
lab=VSS}
N 350 -250 350 -230 {
lab=VOUT}
N 350 -320 350 -310 {
lab=VDD}
N 300 -280 310 -280 {
lab=VDD}
N 300 -310 300 -280 {
lab=VDD}
N 300 -310 350 -310 {
lab=VDD}
N 350 -210 400 -210 {
lab=VOUT}
N 350 -280 380 -280 {
lab=VSS}
N 400 -210 420 -210 {
lab=VOUT}
N 290 -170 310 -170 {
lab=#net1}
C {devices/lab_pin.sym} 540 -210 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/iopin.sym} -90 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -60 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -90 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -60 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -90 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} -60 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} -90 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} -60 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 350 -350 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -170 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 390 -170 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 -110 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 260 -170 1 0 {name=R6
L=0.35
model=res_high_po_0p35
spiceprefix=X
 mult=3}
C {devices/lab_pin.sym} 260 -210 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/npn_05v5.sym} 330 -170 0 0 {name=Q2
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 330 -280 0 0 {name=M5
L=3
W=10
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 380 -280 0 1 {name=p14 sig_type=std_logic lab=VSS}
