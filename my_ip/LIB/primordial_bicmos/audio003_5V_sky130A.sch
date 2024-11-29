v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 -30 -80 -30 {
lab=VDD}
N -150 10 -80 10 {
lab=VSS}
N -150 50 -80 50 {
lab=VIN}
N -150 90 -80 90 {
lab=VOUT}
N 280 540 350 540 {
lab=VSS}
N 280 80 420 80 {
lab=VDD}
N 420 80 510 80 {
lab=VDD}
N 350 540 680 540 {
lab=VSS}
N 510 80 610 80 {
lab=VDD}
N 350 80 350 100 {
lab=VDD}
N 310 80 310 130 {
lab=VDD}
N 350 130 380 130 {
lab=VSS}
N 350 160 350 360 {
lab=#net1}
N 350 390 380 390 {
lab=VSS}
N 180 390 310 390 {
lab=#net2}
N 50 390 120 390 {
lab=VIN}
N 350 260 400 260 {
lab=#net1}
N 440 260 470 260 {
lab=VSS}
N 440 290 440 320 {
lab=#net3}
N 440 320 490 320 {
lab=#net3}
N 530 320 560 320 {
lab=VSS}
N 510 80 510 120 {
lab=VDD}
N 440 230 510 230 {
lab=x}
N 510 180 510 230 {
lab=x}
N 510 230 520 230 {
lab=x}
N 520 230 530 230 {
lab=x}
N 530 230 530 290 {
lab=x}
N 530 350 530 540 {
lab=VSS}
N 460 150 490 150 {
lab=VSS}
N 350 420 350 540 {
lab=VSS}
N 250 390 250 430 {
lab=#net2}
N 250 490 610 490 {
lab=#net4}
N 610 460 610 490 {
lab=#net4}
N 530 230 610 230 {
lab=x}
N 610 230 610 400 {
lab=x}
N 460 460 460 490 {
lab=#net4}
N 460 320 460 400 {
lab=#net3}
N 610 230 700 230 {
lab=x}
N 740 230 770 230 {
lab=VSS}
N 810 300 840 300 {
lab=VSS}
N 740 260 740 300 {
lab=#net5}
N 740 300 770 300 {
lab=#net5}
N 750 140 780 140 {
lab=VSS}
N 740 200 800 200 {
lab=VOUT}
N 800 170 800 200 {
lab=VOUT}
N 810 200 810 270 {
lab=VOUT}
N 800 200 810 200 {
lab=VOUT}
N 610 80 800 80 {
lab=VDD}
N 800 80 800 110 {
lab=VDD}
N 810 330 810 380 {
lab=#net6}
N 680 540 810 540 {
lab=VSS}
N 810 440 810 540 {
lab=VSS}
N 780 410 790 410 {
lab=VSS}
N 780 410 780 540 {
lab=VSS}
C {devices/iopin.sym} -150 -30 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -80 -30 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -150 10 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -80 10 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -150 50 0 1 {name=p12 lab=VIN}
C {devices/lab_pin.sym} -80 50 2 0 {name=p13 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} -150 90 0 1 {name=p17 lab=VOUT}
C {devices/lab_pin.sym} -80 90 2 0 {name=p18 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 280 540 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 80 2 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 130 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 390 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 150 390 1 0 {name=C1 model=cap_mim_m3_1 W=2 L=2 MF=2 spiceprefix=X}
C {devices/lab_pin.sym} 50 390 2 1 {name=p10 sig_type=std_logic lab=VIN}
C {sky130_fd_pr/npn_05v5.sym} 420 260 0 0 {name=Q2
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {devices/lab_pin.sym} 470 260 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/npn_05v5.sym} 510 320 0 0 {name=Q1
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {devices/lab_pin.sym} 560 320 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 510 150 0 0 {name=R6
L=4
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 460 150 2 1 {name=p15 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/diode.sym} 250 460 0 0 {name=D1
model=diode_pw2nd_05v5

}
C {sky130_fd_pr/diode.sym} 610 430 2 0 {name=D2
model=diode_pw2nd_05v5

}
C {sky130_fd_pr/cap_mim_m3_1.sym} 460 430 0 0 {name=C2 model=cap_mim_m3_1 W=6 L=6 MF=12 spiceprefix=X}
C {sky130_fd_pr/npn_05v5.sym} 720 230 0 0 {name=Q3
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 790 300 0 0 {name=Q4
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {devices/lab_pin.sym} 770 230 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 300 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 800 140 0 0 {name=R1
L=8
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 750 140 2 1 {name=p20 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 810 410 0 0 {name=R2
L=0.1
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 330 130 0 0 {name=M37
L=1
W=4
nf=4 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 330 390 0 0 {name=M1
L=0.5
W=4
nf=4 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 800 180 2 0 {name=p8 sig_type=std_logic lab=VOUT}
