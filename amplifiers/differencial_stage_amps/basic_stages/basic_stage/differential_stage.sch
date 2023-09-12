v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -80 -30 -30 {
lab=VOUT+}
N 190 -70 190 -30 {
lab=VOUT-}
N -30 -140 190 -140 {
lab=VDD}
N 190 -80 190 -70 {
lab=VOUT-}
N -30 0 80 0 {
lab=VSS}
N 80 0 190 0 {
lab=VSS}
N -30 30 -30 90 {
lab=#net1}
N -30 90 80 90 {
lab=#net1}
N 80 90 190 90 {
lab=#net1}
N 190 30 190 90 {
lab=#net1}
N 80 90 80 130 {
lab=#net1}
N 80 280 80 290 {
lab=VSS}
N -130 0 -70 0 {
lab=VIN+}
N 230 0 260 0 {
lab=VIN-}
N 30 250 40 250 {
lab=VB2}
N 80 250 90 250 {
lab=VSS}
N 90 250 90 280 {
lab=VSS}
N 80 280 90 280 {
lab=VSS}
N 80 190 80 220 {
lab=#net1}
N -390 -170 -370 -170 {
lab=VDD}
N -390 -140 -370 -140 {
lab=VSS}
N -390 -110 -370 -110 {
lab=VIN+}
N -400 200 -400 220 {
lab=GND}
N -400 100 -400 140 {
lab=VB2}
N -400 220 -400 240 {
lab=GND}
N -390 -80 -370 -80 {
lab=VIN-}
N -390 -50 -370 -50 {
lab=VOUT+}
N 80 140 80 190 {
lab=#net1}
N 80 130 80 140 {
lab=#net1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -50 0 0 0 {name=M5
L=1
W=35
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 210 0 0 1 {name=M1
L=1
W=35
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} -30 -110 0 0 {name=R6
L=1*20
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 70 -140 3 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -50 -110 2 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 210 -110 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po_0p35.sym} 190 -110 0 1 {name=R1
L=1*20
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -30 -50 2 1 {name=p4 sig_type=std_logic lab=VOUT+}
C {devices/lab_pin.sym} 190 -50 0 1 {name=p5 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} -130 0 0 0 {name=p8 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 260 0 2 0 {name=p9 sig_type=std_logic lab=VIN-
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 60 250 0 0 {name=M2
L=0.5
W=100
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 30 250 0 0 {name=p12 sig_type=std_logic lab=VB2
}
C {devices/iopin.sym} -390 -170 0 1 {name=p6 lab=VDD}
C {devices/lab_pin.sym} -370 -170 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -390 -140 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} -370 -140 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -390 -110 0 1 {name=p13 lab=VIN+}
C {devices/lab_pin.sym} -370 -110 0 1 {name=p14 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 70 0 1 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 80 290 1 1 {name=p16 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -400 170 0 0 {name=V3 value=1}
C {devices/gnd.sym} -400 240 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -400 100 0 0 {name=p17 sig_type=std_logic lab=VB2
}
C {devices/iopin.sym} -390 -80 0 1 {name=p18 lab=VIN-}
C {devices/lab_pin.sym} -370 -80 0 1 {name=p19 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -390 -50 0 1 {name=p20 lab=VOUT+}
C {devices/lab_pin.sym} -370 -50 0 1 {name=p21 sig_type=std_logic lab=VOUT+}
