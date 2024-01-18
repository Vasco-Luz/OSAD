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
N 300 -140 330 -140 {
lab=#net1}
N 370 -220 370 -170 {
lab=#net2}
N 370 -140 380 -140 {
lab=#net2}
N 380 -170 380 -140 {
lab=#net2}
N 370 -170 380 -170 {
lab=#net2}
N 270 -60 490 -60 {
lab=#net3}
N 370 -110 370 -60 {
lab=#net3}
N 270 -30 490 -30 {
lab=VDD}
N 180 -30 230 -30 {
lab=VIN+}
N 530 -30 580 -30 {
lab=VIN-}
N 270 0 270 50 {
lab=VOUT+}
N 490 0 490 40 {
lab=VOUT-}
N 270 50 270 80 {
lab=VOUT+}
N 490 40 490 80 {
lab=VOUT-}
N 290 110 470 110 {
lab=VDD}
N 270 140 270 170 {
lab=VSS}
N 270 170 490 170 {
lab=VSS}
N 490 140 490 170 {
lab=VSS}
N 370 170 370 210 {
lab=VSS}
N 100 -140 300 -140 {
lab=#net1}
N 60 -200 60 -170 {
lab=VDD}
N 50 -140 60 -140 {
lab=VDD}
N 50 -170 50 -140 {
lab=VDD}
N 50 -170 60 -170 {
lab=VDD}
N 60 -110 60 -70 {
lab=#net1}
N 60 -90 120 -90 {
lab=#net1}
N 120 -140 120 -90 {
lab=#net1}
N 60 -10 60 30 {
lab=VSS}
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 350 -140 0 0 {name=M9
L=0.5
W=100
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 370 -280 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 250 -30 0 0 {name=M1
L=1
W=70
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 510 -30 0 1 {name=M2
L=1
W=70
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 370 -30 3 0 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po_0p35.sym} 270 110 2 0 {name=R6
L=1*20
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 490 110 2 1 {name=R1
L=1*20
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 370 110 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 40 0 1 {name=p8 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} 270 40 2 1 {name=p9 sig_type=std_logic lab=VOUT+}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 80 -140 0 1 {name=M3
L=0.5
W=100
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 60 -200 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 60 -40 0 0 {name=I0 value=250u}
C {devices/ammeter.sym} 370 -250 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 60 30 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 370 210 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -30 0 0 {name=p2 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 580 -30 0 1 {name=p3 sig_type=std_logic lab=VIN-}
