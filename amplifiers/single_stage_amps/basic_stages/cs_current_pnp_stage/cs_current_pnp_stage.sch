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
N 400 -180 470 -180 {
lab=VOUT}
N -90 -150 -60 -150 {
lab=VOUT}
N 350 -50 350 -20 {
lab=VSS}
N 350 -20 350 0 {
lab=VSS}
N 350 -330 350 -290 {
lab=VDD}
N 350 -350 350 -330 {
lab=VDD}
N -90 -110 -60 -110 {
lab=VB}
N 350 -200 350 -170 {
lab=#net1}
N 350 -110 350 -80 {
lab=VSS}
N 350 -80 350 -60 {
lab=VSS}
N 350 -140 390 -140 {
lab=VSS}
N 230 -140 240 -140 {
lab=VIN}
N 350 -220 350 -200 {
lab=#net1}
N 350 -180 400 -180 {
lab=#net1}
N 260 -140 310 -140 {
lab=VIN}
N 240 -140 260 -140 {
lab=VIN}
N 350 -290 350 -280 {
lab=VDD}
N 350 -250 400 -250 {
lab=VDD}
N 290 -250 310 -250 {
lab=VB}
N 350 -60 350 -50 {
lab=VSS}
C {devices/lab_pin.sym} 470 -180 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/iopin.sym} -90 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -60 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -90 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -60 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -90 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} -60 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} -90 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} -60 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 350 -350 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -90 -110 0 1 {name=p2 lab=VB}
C {devices/lab_pin.sym} -60 -110 2 0 {name=p4 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 350 0 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 -140 0 0 {name=p13 sig_type=std_logic lab=VIN
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 330 -140 0 0 {name=M1
L=0.8
W=80
nf=10 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -250 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 290 -250 0 0 {name=p18 sig_type=std_logic lab=VB

}
C {sky130_fd_pr/pnp_05v5.sym} 330 -250 0 0 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {devices/lab_pin.sym} 390 -140 0 1 {name=p10 sig_type=std_logic lab=VSS}
