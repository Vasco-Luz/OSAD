v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 40 120 100 {lab=CLKP}
N 120 140 120 180 {lab=VDD}
N -330 170 -260 170 {
lab=VDD}
N -330 210 -260 210 {
lab=VSS}
N -330 250 -260 250 {
lab=VIN}
N -330 290 -260 290 {
lab=VOUT}
N 0 140 90 140 {lab=VIN}
N 0 140 -0 310 {lab=VIN}
N 0 400 90 400 {lab=VIN}
N -0 310 -0 400 {lab=VIN}
N 120 310 120 400 {lab=VSS}
N 120 440 120 500 {lab=CLKN}
N 150 400 240 400 {lab=VOUT}
N 240 310 240 400 {lab=VOUT}
N 240 140 240 310 {lab=VOUT}
N 150 140 240 140 {lab=VOUT}
N -330 330 -260 330 {
lab=CLKP}
N -330 370 -260 370 {
lab=CLKN}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 120 120 1 0 {name=M1
L=0.5
W=1
nf=3 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} -330 170 0 1 {name=p4 lab=VDD}
C {devices/lab_pin.sym} -260 170 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -330 210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -260 210 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -330 250 0 1 {name=p12 lab=VIN}
C {devices/lab_pin.sym} -260 250 2 0 {name=p13 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} -330 290 0 1 {name=p17 lab=VOUT}
C {devices/lab_pin.sym} -260 290 2 0 {name=p18 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 120 180 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 120 40 2 0 {name=p2 sig_type=std_logic lab=CLKP}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 120 420 3 0 {name=M37
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 120 310 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 500 0 0 {name=p8 sig_type=std_logic lab=CLKN}
C {devices/lab_pin.sym} 0 270 0 0 {name=p9 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 240 270 2 0 {name=p10 sig_type=std_logic lab=VOUT}
C {devices/iopin.sym} -330 330 0 1 {name=p11 lab=CLKP}
C {devices/lab_pin.sym} -260 330 2 0 {name=p14 sig_type=std_logic lab=CLKP}
C {devices/iopin.sym} -330 370 0 1 {name=p15 lab=CLKN}
C {devices/lab_pin.sym} -260 370 2 0 {name=p16 sig_type=std_logic lab=CLKN}
