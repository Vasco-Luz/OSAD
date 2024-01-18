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
N 30 -360 30 -310 {
lab=VDD}
N 30 -360 230 -360 {
lab=VDD}
N 230 -360 230 -310 {
lab=VDD}
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
N 20 -280 30 -280 {
lab=VDD}
N 20 -310 20 -280 {
lab=VDD}
N 20 -310 30 -310 {
lab=VDD}
N 230 -280 240 -280 {
lab=VDD}
N 240 -310 240 -280 {
lab=VDD}
N 230 -310 240 -310 {
lab=VDD}
N -480 -40 -450 -40 {
lab=VBIAS1}
N -220 -0 -10 -0 {
lab=VIN+}
N 270 0 480 0 {
lab=VIN-}
N -480 -20 -450 -20 {
lab=VBIAS2}
N 70 -280 190 -280 {
lab=VBIAS1}
N 30 -250 30 -220 {
lab=#net1}
N 230 -250 230 -220 {
lab=#net2}
N 70 -190 190 -190 {
lab=VBIAS2}
N 20 -190 30 -190 {
lab=#net1}
N 20 -220 20 -190 {
lab=#net1}
N 20 -220 30 -220 {
lab=#net1}
N 230 -190 240 -190 {
lab=#net2}
N 240 -220 240 -190 {
lab=#net2}
N 230 -220 240 -220 {
lab=#net2}
N 30 -160 30 -30 {
lab=VOUT+}
N 230 -160 230 -30 {
lab=VOUT-}
N -130 -110 -100 -110 {
lab=#net3}
N -40 -110 30 -110 {
lab=VOUT+}
N -190 -110 -190 -0 {
lab=VIN+}
N 230 -110 300 -110 {
lab=VOUT-}
N 360 -110 390 -110 {
lab=#net4}
N 450 -110 450 0 {
lab=VIN-}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 10 0 0 0 {name=M5
L=0.7
W=50
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 250 0 0 1 {name=M1
L=0.7
W=50
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 120 0 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 30 50 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 50 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 50 -280 0 1 {name=M9
L=1.5
W=50
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 210 -280 0 0 {name=M2
L=1.5
W=50
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 130 -360 1 0 {name=p4 sig_type=std_logic lab=VDD}
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
C {devices/lab_pin.sym} -450 -40 2 0 {name=p22 sig_type=std_logic lab=VBIAS1}
C {devices/iopin.sym} -480 -40 0 1 {name=p23 lab=VBIAS1}
C {devices/lab_pin.sym} -450 -20 2 0 {name=p25 sig_type=std_logic lab=VBIAS2}
C {devices/iopin.sym} -480 -20 0 1 {name=p26 lab=VBIAS2}
C {devices/lab_pin.sym} 130 -280 3 0 {name=p5 sig_type=std_logic lab=VBIAS1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 50 -190 0 1 {name=M3
L=1.2
W=40
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 210 -190 0 0 {name=M4
L=1.2
W=40
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 130 -190 3 0 {name=p24 sig_type=std_logic lab=VBIAS2}
C {sky130_fd_pr/cap_mim_m3_1.sym} -70 -110 1 0 {name=C1 model=cap_mim_m3_1 W=10 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_high_po_0p35.sym} -160 -110 1 0 {name=R6
L=10
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -160 -130 1 0 {name=p27 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 330 -110 3 1 {name=C2 model=cap_mim_m3_1 W=10 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_high_po_0p35.sym} 420 -110 3 1 {name=R1
L=10
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 420 -130 1 0 {name=p28 sig_type=std_logic lab=VDD}
