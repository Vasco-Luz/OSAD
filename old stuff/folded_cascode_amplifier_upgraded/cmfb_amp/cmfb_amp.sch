v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -260 110 -220 {
lab=VDD}
N 150 -260 330 -260 {
lab=VDD}
N 100 -190 110 -190 {
lab=VDD}
N 100 -220 100 -190 {
lab=VDD}
N 100 -220 110 -220 {
lab=VDD}
N 370 -190 380 -190 {
lab=VDD}
N 380 -220 380 -190 {
lab=VDD}
N 370 -220 380 -220 {
lab=VDD}
N 110 -160 110 -130 {
lab=#net1}
N 370 -160 370 -130 {
lab=VOUT}
N 370 -260 370 -220 {
lab=VDD}
N 330 -260 370 -260 {
lab=VDD}
N 110 -260 150 -260 {
lab=VDD}
N 110 -70 370 -70 {
lab=VSS}
N 110 -40 110 20 {
lab=#net2}
N 370 -40 370 20 {
lab=#net3}
N 110 -130 110 -100 {
lab=#net1}
N 370 -130 370 -100 {
lab=VOUT}
N 110 20 110 60 {
lab=#net2}
N 150 90 330 90 {
lab=VB2}
N 370 20 370 60 {
lab=#net3}
N 110 120 110 140 {
lab=#net4}
N 370 120 370 140 {
lab=#net5}
N 150 170 320 170 {
lab=VB1}
N 320 170 330 170 {
lab=VB1}
N 110 200 110 230 {
lab=VSS}
N 110 230 370 230 {
lab=VSS}
N 370 200 370 230 {
lab=VSS}
N -400 -430 -340 -430 {
lab=VDD}
N -400 -400 -340 -400 {
lab=VSS}
N 40 -70 70 -70 {
lab=VIN+}
N 150 -190 150 -160 {
lab=#net1}
N 110 -160 150 -160 {
lab=#net1}
N 150 -190 330 -190 {
lab=#net1}
N 410 -70 440 -70 {
lab=VIN-}
N -400 -370 -340 -370 {
lab=VIN+}
N -400 -340 -340 -340 {
lab=VIN-}
N -400 -310 -340 -310 {
lab=VB1}
N -400 -280 -340 -280 {
lab=VB2}
N -400 -250 -340 -250 {
lab=VOUT}
N 20 90 110 90 {
lab=VSS}
N 20 170 110 170 {
lab=VSS}
N 370 170 460 170 {
lab=VSS}
N 370 90 460 90 {
lab=VSS}
C {devices/iopin.sym} -400 -430 0 1 {name=p12 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 130 -190 0 1 {name=M9
L=1
W=30
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 350 -190 0 0 {name=M1
L=1
W=30
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 240 -260 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 90 -70 0 0 {name=M5
L=0.7
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 390 -70 0 1 {name=M4
L=0.7
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 230 -70 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 130 90 0 1 {name=M2
L=1.5
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 130 170 0 1 {name=M6
L=1.2
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 350 170 0 0 {name=M7
L=1.5
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -340 -430 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -400 -400 0 1 {name=p4 lab=VSS}
C {devices/lab_pin.sym} -340 -400 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 40 -70 0 0 {name=p6 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 370 -130 2 0 {name=p7 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 440 -70 0 1 {name=p8 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 240 170 3 0 {name=p9 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 240 230 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 90 3 0 {name=p11 sig_type=std_logic lab=VB2}
C {devices/iopin.sym} -400 -370 0 1 {name=p13 lab=VIN+}
C {devices/lab_pin.sym} -340 -370 2 0 {name=p14 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -400 -340 0 1 {name=p15 lab=VIN-}
C {devices/lab_pin.sym} -340 -340 2 0 {name=p16 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -400 -310 0 1 {name=p17 lab=VB1}
C {devices/lab_pin.sym} -340 -310 2 0 {name=p18 sig_type=std_logic lab=VB1}
C {devices/iopin.sym} -400 -280 0 1 {name=p19 lab=VB2}
C {devices/lab_pin.sym} -340 -280 2 0 {name=p20 sig_type=std_logic lab=VB2}
C {devices/iopin.sym} -400 -250 0 1 {name=p21 lab=VOUT}
C {devices/lab_pin.sym} -340 -250 2 0 {name=p22 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 20 90 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 170 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 90 3 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 170 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 350 90 0 0 {name=M3
L=1.5
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
