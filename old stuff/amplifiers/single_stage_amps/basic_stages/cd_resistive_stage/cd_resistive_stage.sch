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
N -90 -150 -60 -150 {
lab=VOUT}
N 270 -120 320 -120 {
lab=GND}
N 200 -50 270 -50 {
lab=VIN}
N 270 -90 270 -50 {
lab=VIN}
N 270 -160 270 -150 {
lab=VOUT}
N 270 -190 270 -160 {
lab=VOUT}
N 270 -220 270 -190 {
lab=VOUT}
N 290 -250 320 -250 {
lab=VDD}
N 210 -120 230 -120 {
lab=VB}
N 270 -300 270 -280 {
lab=VDD}
N -90 -120 -50 -120 {}
C {devices/iopin.sym} -90 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -60 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -90 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -60 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -90 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} -60 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} -90 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} -60 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 200 -50 0 0 {name=p10 sig_type=std_logic lab=VIN
}
C {sky130_fd_pr/res_high_po_0p35.sym} 270 -250 2 0 {name=R1
L=1*6
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 320 -250 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 250 -120 0 0 {name=M1
L=1
W=50
nf=1 mult=10
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 320 -120 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 210 -120 0 0 {name=p15 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} 270 -300 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 270 -180 2 0 {name=p4 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} -50 -120 0 1 {name=p5 sig_type=std_logic lab=VB
}
C {devices/iopin.sym} -90 -120 0 1 {name=p13 lab=VB}
