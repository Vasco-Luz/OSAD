v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -240 170 -240 {
lab=VDD}
N 140 -210 170 -210 {
lab=VSS}
N 140 -180 170 -180 {
lab=VIN}
N 470 -210 540 -210 {
lab=VOUT}
N 140 -150 170 -150 {
lab=VOUT}
N 420 -230 420 -200 {
lab=VOUT}
N 420 -140 420 -110 {
lab=#net1}
N 420 -110 420 -90 {
lab=#net1}
N 420 -420 420 -380 {
lab=VDD}
N 330 -170 380 -170 {
lab=VIN}
N 420 -170 460 -170 {
lab=#net2}
N 420 -250 420 -230 {
lab=VOUT}
N 420 -320 420 -310 {
lab=#net3}
N 370 -280 380 -280 {
lab=#net3}
N 370 -310 370 -280 {
lab=#net3}
N 370 -310 420 -310 {
lab=#net3}
N 420 -210 470 -210 {
lab=VOUT}
N 420 -280 450 -280 {
lab=#net4}
C {devices/lab_pin.sym} 540 -210 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/iopin.sym} 140 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 170 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 140 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 170 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 140 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} 170 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} 140 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} 170 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/ammeter.sym} 420 -350 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 420 -410 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/npn_05v5.sym} 400 -170 0 0 {name=Q1
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 400 -280 0 0 {name=Q3
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {devices/lab_pin.sym} 330 -170 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 450 -280 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -170 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -90 0 1 {name=p13 sig_type=std_logic lab=VSS}
