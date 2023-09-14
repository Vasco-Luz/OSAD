v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 -170 -370 -170 {
lab=VDD}
N -390 -140 -370 -140 {
lab=VSS}
N -390 -110 -370 -110 {
lab=VIN+}
N -390 -80 -370 -80 {
lab=VIN-}
N -390 -50 -370 -50 {
lab=VOUT+}
N 50 -90 50 -40 {
lab=VOUT+}
N 270 -80 270 -40 {
lab=VOUT-}
N 50 -10 160 -10 {
lab=VSS}
N 160 -10 270 -10 {
lab=VSS}
N 50 20 50 80 {
lab=#net1}
N 50 80 160 80 {
lab=#net1}
N 160 80 270 80 {
lab=#net1}
N 270 20 270 80 {
lab=#net1}
N 160 80 160 120 {
lab=#net1}
N 160 270 160 280 {
lab=VSS}
N -50 -10 10 -10 {
lab=VIN+}
N 310 -10 340 -10 {
lab=VIN-}
N 110 240 120 240 {
lab=#net2}
N 160 240 170 240 {
lab=VSS}
N 170 240 170 270 {
lab=VSS}
N 160 270 170 270 {
lab=VSS}
N 160 180 160 210 {
lab=#net1}
N 0 240 110 240 {
lab=#net2}
N -40 270 -40 290 {
lab=VSS}
N -50 240 -40 240 {
lab=VSS}
N -50 240 -50 270 {
lab=VSS}
N -50 270 -40 270 {
lab=VSS}
N -40 180 -40 210 {
lab=#net2}
N -40 180 -40 200 {
lab=#net2}
N -40 200 10 200 {
lab=#net2}
N 10 200 10 240 {
lab=#net2}
N -40 160 -40 170 {
lab=#net2}
N -40 170 -40 180 {
lab=#net2}
N -40 90 -40 100 {
lab=VDD}
N 160 120 160 180 {
lab=#net1}
N 50 -220 50 -100 {
lab=VOUT+}
N 50 -230 50 -220 {
lab=VOUT+}
N 270 -220 270 -100 {
lab=VOUT-}
N 270 -230 270 -220 {
lab=VOUT-}
N 50 -320 50 -290 {
lab=VDD}
N 50 -320 270 -320 {
lab=VDD}
N 270 -320 270 -290 {
lab=VDD}
N 90 -260 230 -260 {
lab=#net3}
N 40 -260 50 -260 {
lab=VDD}
N 40 -290 40 -260 {
lab=VDD}
N 40 -290 50 -290 {
lab=VDD}
N 270 -260 280 -260 {
lab=VDD}
N 280 -290 280 -260 {
lab=VDD}
N 270 -290 280 -290 {
lab=VDD}
N 110 -180 210 -180 {
lab=#net3}
N 160 -260 160 -180 {
lab=#net3}
N 80 -210 90 -210 {
lab=VDD}
N 80 -210 80 -200 {
lab=VDD}
N 230 -210 240 -210 {
lab=VDD}
N 240 -210 240 -200 {
lab=VDD}
N 50 -100 50 -90 {
lab=VOUT+}
N 270 -100 270 -80 {
lab=VOUT-}
C {devices/iopin.sym} -390 -170 0 1 {name=p6 lab=VDD}
C {devices/lab_pin.sym} -370 -170 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -390 -140 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} -370 -140 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -390 -110 0 1 {name=p13 lab=VIN+}
C {devices/lab_pin.sym} -370 -110 0 1 {name=p14 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -390 -80 0 1 {name=p18 lab=VIN-}
C {devices/lab_pin.sym} -370 -80 0 1 {name=p19 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -390 -50 0 1 {name=p20 lab=VOUT+}
C {devices/lab_pin.sym} -370 -50 0 1 {name=p21 sig_type=std_logic lab=VOUT+}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 30 -10 0 0 {name=M5
L=0.7
W=45
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 290 -10 0 1 {name=M1
L=0.7
W=45
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 50 -60 2 1 {name=p4 sig_type=std_logic lab=VOUT+}
C {devices/lab_pin.sym} 270 -60 0 1 {name=p5 sig_type=std_logic lab=VOUT-}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 140 240 0 0 {name=M2
L=0.5
W=100
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -20 240 0 1 {name=M3
L=0.5
W=100
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/isource.sym} -40 130 0 0 {name=I0 value=350u}
C {devices/lab_pin.sym} -40 90 3 1 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 280 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -40 290 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 160 -10 1 1 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 -10 0 0 {name=p8 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 340 -10 0 1 {name=p9 sig_type=std_logic lab=VIN-}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 250 -260 0 0 {name=M4
L=1.7
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 150 -320 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 70 -260 0 1 {name=M6
L=1.7
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 80 -180 1 0 {name=R6
L=1*10
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 240 -180 1 0 {name=R1
L=1*10
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 90 -210 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 230 -210 0 0 {name=p3 sig_type=std_logic lab=VDD}
