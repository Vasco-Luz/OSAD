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
N 360 -350 360 -310 {
lab=VDD}
N 180 -170 230 -170 {
lab=VIN}
N 420 -210 470 -210 {
lab=VOUT}
N 360 -230 360 -200 {
lab=VOUT}
N 360 -210 410 -210 {
lab=VOUT}
N 260 -210 260 -190 {
lab=VDD}
N 290 -170 320 -170 {
lab=#net1}
N 360 -310 360 -300 {
lab=VDD}
N 360 -240 360 -230 {
lab=VOUT}
N 380 -270 390 -270 {
lab=VDD}
N 360 -140 360 -100 {
lab=#net2}
N 360 -40 360 -30 {
lab=#net3}
N 360 -30 360 -20 {
lab=#net3}
N 380 -70 390 -70 {
lab=VDD}
N 360 -170 380 -170 {
lab=#net2}
N 380 -170 380 -130 {
lab=#net2}
N 360 -130 380 -130 {
lab=#net2}
N 410 -210 420 -210 {
lab=VOUT}
C {devices/lab_pin.sym} 540 -210 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/iopin.sym} -90 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -60 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -90 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -60 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -90 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} -60 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} -90 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} -60 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 360 -340 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -170 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {sky130_fd_pr/npn_05v5.sym} 340 -170 0 0 {name=Q2
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 260 -170 1 0 {name=R6
L=0.35
model=res_high_po_0p35
spiceprefix=X
 mult=3}
C {devices/lab_pin.sym} 260 -210 1 0 {name=p10 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po_0p35.sym} 360 -270 2 0 {name=R1
L=1*8
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 390 -270 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po_0p35.sym} 360 -70 2 0 {name=R8
L=0.35
model=res_high_po_0p35
spiceprefix=X
 mult=3}
C {devices/lab_pin.sym} 390 -70 2 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -20 0 1 {name=p13 sig_type=std_logic lab=VSS}
