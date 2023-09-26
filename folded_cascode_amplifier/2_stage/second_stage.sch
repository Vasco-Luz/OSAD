v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 0 230 -0 {
lab=VSS}
N 30 30 30 50 {
lab=VSS}
N 230 30 230 50 {
lab=VSS}
N 70 -170 180 -170 {
lab=VBIAS}
N 180 -170 190 -170 {
lab=VBIAS}
N 30 -250 30 -200 {
lab=VDD}
N 30 -250 230 -250 {
lab=VDD}
N 230 -250 230 -200 {
lab=VDD}
N 30 -140 30 -30 {
lab=VOUT+}
N 230 -140 230 -30 {
lab=VOUT-}
N -480 -160 -450 -160 {
lab=VDD}
N -480 -140 -450 -140 {
lab=VSS}
N -480 -120 -450 -120 {
lab=VIN+}
N -480 -100 -450 -100 {
lab=VIN-}
N -480 -80 -450 -80 {
lab=VOUT+}
N -480 -60 -450 -60 {
lab=VOUT-}
N 20 -170 30 -170 {
lab=VDD}
N 20 -200 20 -170 {
lab=VDD}
N 20 -200 30 -200 {
lab=VDD}
N 230 -170 240 -170 {
lab=VDD}
N 240 -200 240 -170 {
lab=VDD}
N 230 -200 240 -200 {
lab=VDD}
N -480 -40 -450 -40 {
lab=VBIAS}
N -220 -0 -10 -0 {
lab=VIN+}
N 270 0 480 0 {
lab=VIN-}
N -170 -50 -170 -0 {
lab=VIN+}
N -110 -50 -70 -50 {
lab=#net1}
N -10 -50 30 -50 {
lab=VOUT+}
N 230 -50 270 -50 {
lab=VOUT-}
N 330 -50 370 -50 {
lab=#net2}
N 430 -50 430 0 {
lab=VIN-}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 10 0 0 0 {name=M5
L=1.5
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 250 0 0 1 {name=M1
L=1.5
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 120 0 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 30 50 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 50 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 50 -170 0 1 {name=M9
L=1
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 210 -170 0 0 {name=M2
L=1
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 130 -250 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 -170 1 0 {name=p5 sig_type=std_logic lab=VBIAS}
C {devices/lab_pin.sym} -220 0 0 0 {name=p6 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 480 0 0 1 {name=p7 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 30 -80 0 0 {name=p8 sig_type=std_logic lab=VOUT+}
C {devices/lab_pin.sym} 230 -80 0 1 {name=p9 sig_type=std_logic lab=VOUT-}
C {devices/iopin.sym} -480 -160 0 1 {name=p10 lab=VDD}
C {devices/lab_pin.sym} -450 -160 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -480 -140 0 1 {name=p12 lab=VSS}
C {devices/lab_pin.sym} -450 -140 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -480 -120 0 1 {name=p14 lab=VIN+}
C {devices/lab_pin.sym} -450 -120 2 0 {name=p15 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -480 -100 0 1 {name=p16 lab=VIN-}
C {devices/lab_pin.sym} -450 -100 2 0 {name=p17 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -480 -80 0 1 {name=p18 lab=VOUT+}
C {devices/lab_pin.sym} -450 -80 2 0 {name=p19 sig_type=std_logic lab=VOUT+}
C {devices/iopin.sym} -480 -60 0 1 {name=p20 lab=VOUT-}
C {devices/lab_pin.sym} -450 -60 2 0 {name=p21 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} -450 -40 2 0 {name=p22 sig_type=std_logic lab=VBIAS}
C {devices/iopin.sym} -480 -40 0 1 {name=p23 lab=VBIAS}
C {sky130_fd_pr/res_high_po_0p69.sym} -140 -50 1 0 {name=R7
L=500
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} -40 -50 1 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} -140 -70 1 0 {name=p24 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 300 -50 3 1 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_high_po_0p69.sym} 400 -50 3 1 {name=R1
L=500
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 400 -70 1 0 {name=p25 sig_type=std_logic lab=VDD}
