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
N 120 -340 120 -290 {
lab=#net1}
N 1160 30 1160 70 {
lab=VSS}
N 1160 -230 1160 -30 {
lab=VB3}
N 1160 -330 1160 -290 {
lab=VDD}
N 1150 -260 1160 -260 {
lab=VDD}
N 1080 -260 1150 -260 {
lab=VDD}
N 1230 -260 1230 -210 {
lab=VB3}
N 120 -260 130 -260 {
lab=#net1}
N 130 -290 130 -260 {
lab=#net1}
N 120 -290 130 -290 {
lab=#net1}
N 120 -230 120 -160 {
lab=#net2}
N 30 -160 30 -130 {
lab=#net2}
N 30 -160 120 -160 {
lab=#net2}
N 120 -160 210 -160 {
lab=#net2}
N 210 -160 220 -160 {
lab=#net2}
N 220 -160 220 -130 {
lab=#net2}
N 30 -100 220 -100 {
lab=#net2}
N -40 -100 -10 -100 {
lab=VIN+}
N 260 -100 290 -100 {
lab=VIN-}
N 450 -200 590 -200 {
lab=VDD}
N 430 -250 430 -230 {
lab=VDD}
N 430 -250 610 -250 {
lab=VDD}
N 610 -250 610 -230 {
lab=VDD}
N 430 -110 610 -110 {
lab=VSS}
N 430 -170 430 -140 {
lab=VOUT+}
N 610 -170 610 -140 {
lab=VOUT-}
N 370 -110 390 -110 {
lab=VB2}
N 650 -110 660 -110 {
lab=VB2}
N 660 -110 670 -110 {
lab=VB2}
N 930 -180 930 -160 {
lab=VB2}
N 930 -130 1000 -130 {
lab=VSS}
N 880 -170 930 -170 {
lab=VB2}
N 880 -170 880 -130 {
lab=VB2}
N 880 -130 890 -130 {
lab=VB2}
N 430 -80 430 50 {
lab=#net3}
N 610 -80 610 50 {
lab=#net4}
N 430 80 610 80 {
lab=VSS}
N 430 110 430 160 {
lab=VSS}
N 430 160 610 160 {
lab=VSS}
N 610 110 610 160 {
lab=VSS}
N 520 160 520 190 {
lab=VSS}
N 930 20 940 20 {
lab=VSS}
N 940 20 940 50 {
lab=VSS}
N 930 50 940 50 {
lab=VSS}
N 870 20 890 20 {
lab=VB1}
N 870 -30 870 20 {
lab=VB1}
N 870 -30 930 -30 {
lab=VB1}
N 650 80 660 80 {
lab=VB1}
N 660 80 670 80 {
lab=VB1}
N 370 80 390 80 {
lab=VB1}
N 1200 -260 1230 -260 {
lab=VB3}
N 1160 -210 1230 -210 {
lab=VB3}
N 30 -260 80 -260 {
lab=VB3}
N 30 -70 30 -30 {
lab=#net3}
N 30 -30 430 -30 {
lab=#net3}
N 220 -70 220 -60 {
lab=#net4}
N 220 -60 610 -60 {
lab=#net4}
N 930 50 930 80 {
lab=VSS}
N 930 -30 930 -10 {
lab=VB1}
N 930 -100 930 -30 {
lab=VB1}
N 930 -360 930 -350 {
lab=VDD}
N 930 -210 930 -180 {
lab=VB2}
N 930 -290 930 -270 {
lab=VB2}
N 520 -250 520 -200 {
lab=VDD}
N 120 -160 120 -100 {
lab=#net2}
N 930 -270 930 -210 {
lab=VB2}
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
C {devices/lab_pin.sym} 120 -400 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 1160 0 0 0 {name=I0 value=50u}
C {devices/ammeter.sym} 120 -370 0 0 {name=Vmeas}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1180 -260 0 1 {name=M9
L=1
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1160 -330 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1080 -260 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 100 -260 0 0 {name=M1
L=1
W=60
nf=1 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 10 -100 0 0 {name=M2
L=1
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 240 -100 0 1 {name=M3
L=1
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 430 -200 0 1 {name=R6
L=1*40
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 610 -200 0 0 {name=R1
L=1*40
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 520 -250 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 -110 0 0 {name=M5
L=1
W=80
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 630 -110 0 1 {name=M4
L=1
W=80
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 370 -110 0 0 {name=p15 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 670 -110 2 0 {name=p30 sig_type=std_logic lab=VB2}
C {devices/isource.sym} 930 -320 0 0 {name=I1 value=50u}
C {devices/lab_pin.sym} 930 -360 1 0 {name=p32 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 910 -130 0 0 {name=M6
L=1
W=80
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 880 -150 0 0 {name=p35 sig_type=std_logic lab=VB2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 80 0 0 {name=M7
L=1
W=60
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 630 80 0 1 {name=M8
L=1
W=60
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 910 20 0 0 {name=M10
L=1
W=60
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 870 10 0 0 {name=p36 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 670 80 0 1 {name=p37 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 370 80 0 0 {name=p38 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 1230 -240 2 0 {name=p39 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} 30 -260 2 1 {name=p40 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} 430 -160 0 0 {name=p41 sig_type=std_logic lab=VOUT+}
C {devices/lab_pin.sym} 610 -160 0 0 {name=p42 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} 290 -100 0 1 {name=p9 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} -40 -100 0 0 {name=p4 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 520 -110 1 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 190 1 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 80 1 1 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 930 80 1 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1000 -130 1 1 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1160 70 1 1 {name=p23 sig_type=std_logic lab=VSS}
