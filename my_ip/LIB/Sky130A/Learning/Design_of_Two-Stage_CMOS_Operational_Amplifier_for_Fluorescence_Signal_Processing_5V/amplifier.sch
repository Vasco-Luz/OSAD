v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -630 130 -550 130 {lab=#net1}
N -530 70 -530 130 {lab=#net1}
N -530 70 -450 70 {lab=#net1}
N -450 70 -450 100 {lab=#net1}
N -690 230 -690 270 {lab=VSS}
N -690 270 -510 270 {lab=VSS}
N -670 260 -670 270 {lab=VSS}
N -450 130 -450 160 {lab=VSS}
N -550 130 -490 130 {lab=#net1}
N -450 160 -450 270 {lab=VSS}
N -510 270 -450 270 {lab=VSS}
N -690 130 -670 130 {lab=VSS}
N -690 130 -690 230 {lab=VSS}
N -670 160 -670 200 {lab=#net2}
N -670 -10 -670 100 {lab=#net3}
N -450 -10 -450 70 {lab=#net1}
N -730 -40 -670 -40 {lab=VSS}
N -450 -40 -390 -40 {lab=VSS}
N -630 -40 -490 -40 {lab=VB2}
N -560 -100 -560 -40 {lab=VB2}
N -560 -100 -450 -100 {lab=VB2}
N -670 -100 -670 -70 {lab=VB1}
N -670 -200 -670 -160 {lab=VB1}
N -450 -110 -450 -100 {lab=VB2}
N -450 -100 -450 -70 {lab=VB2}
N -450 -210 -450 -180 {lab=VB2}
N -450 -120 -450 -110 {lab=VB2}
N -670 -160 -670 -100 {lab=VB1}
N -450 -180 -450 -120 {lab=VB2}
N -60 -160 -60 -130 {lab=#net4}
N -60 -170 -60 -160 {lab=#net4}
N -60 -170 90 -170 {lab=#net4}
N 90 -200 90 -170 {lab=#net4}
N 90 -170 240 -170 {lab=#net4}
N 240 -170 240 -140 {lab=#net4}
N -140 -130 -100 -130 {lab=Vin-}
N 280 -140 320 -140 {lab=Vin+}
N 240 -110 240 80 {lab=#net5}
N 240 110 240 140 {lab=VSS}
N 240 140 240 250 {lab=VSS}
N -450 270 240 270 {lab=VSS}
N 240 250 240 270 {lab=VSS}
N -0 110 200 110 {lab=#net6}
N -20 110 0 110 {lab=#net6}
N -60 -100 -60 80 {lab=#net6}
N -60 50 20 50 {lab=#net6}
N 20 50 20 110 {lab=#net6}
N -60 110 -60 140 {lab=VSS}
N -60 140 -60 270 {lab=VSS}
N 690 -200 690 90 {lab=VOUT}
N 690 120 690 150 {lab=VSS}
N 690 150 690 270 {lab=VSS}
N 240 270 690 270 {lab=VSS}
N 240 30 360 30 {lab=#net5}
N 390 -40 390 -10 {lab=VB2}
N 390 30 390 270 {lab=VSS}
N 420 30 470 30 {lab=#net7}
N 530 30 690 30 {lab=VOUT}
N 350 120 650 120 {lab=#net5}
N 350 30 350 120 {lab=#net5}
N -990 -220 -930 -220 {lab=VDD}
N -990 -180 -930 -180 {lab=VSS}
N -990 -140 -930 -140 {lab=Vin+}
N -990 -100 -930 -100 {lab=Vin-}
N -990 -60 -930 -60 {lab=VOUT}
N -670 -360 -670 -200 {lab=VB1}
N -450 -300 -450 -210 {lab=VB2}
N 90 -250 90 -200 {lab=#net4}
N -670 -530 -670 -490 {lab=VDD}
N -670 -490 -670 -460 {lab=VDD}
N -630 -460 -490 -460 {lab=VB1}
N -450 -530 -450 -490 {lab=VDD}
N -450 -490 -450 -460 {lab=VDD}
N -560 -460 -560 -420 {lab=VB1}
N -670 -420 -560 -420 {lab=VB1}
N -670 -530 -570 -530 {lab=VDD}
N -570 -530 -450 -530 {lab=VDD}
N -670 -430 -670 -420 {lab=VB1}
N -60 -450 50 -450 {lab=VB1}
N 90 -530 90 -480 {lab=VDD}
N 90 -480 90 -450 {lab=VDD}
N -100 -530 90 -530 {lab=VDD}
N 540 -450 650 -450 {lab=VB1}
N 690 -530 690 -480 {lab=VDD}
N 690 -480 690 -450 {lab=VDD}
N 500 -530 690 -530 {lab=VDD}
N 90 -530 500 -530 {lab=VDD}
N -670 -420 -670 -360 {lab=VB1}
N -450 -430 -450 -370 {lab=VB2}
N -450 -370 -450 -360 {lab=VB2}
N 90 -420 90 -360 {lab=#net4}
N 90 -360 90 -350 {lab=#net4}
N -450 -530 -100 -530 {lab=VDD}
N -450 -360 -450 -300 {lab=VB2}
N 90 -350 90 -250 {lab=#net4}
N 690 -420 690 -200 {lab=VOUT}
C {devices/lab_pin.sym} -590 270 3 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -730 -40 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -390 -40 0 1 {name=p5 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/res_high_po_0p35.sym} -670 230 0 0 {name=R2
L=20.4
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -470 130 0 0 {name=M7
L=3.2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -650 130 0 1 {name=M8
L=3.2
W=1
nf=8 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -650 -40 0 1 {name=M9
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -470 -40 0 0 {name=M10
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -670 -150 2 0 {name=p1 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} -450 -170 2 0 {name=p6 sig_type=std_logic lab=VB2}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -80 -130 0 0 {name=M2
L=1
W=4.5
nf=2 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 260 -140 0 1 {name=M3
L=1
W=4.5
nf=2 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -140 -130 2 1 {name=p8 sig_type=std_logic lab=Vin-}
C {devices/lab_pin.sym} 320 -140 2 0 {name=p9 sig_type=std_logic lab=Vin+}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 220 110 0 0 {name=M4
L=2
W=1.5
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -40 110 0 1 {name=M11
L=2
W=1.5
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 670 120 0 0 {name=M13
L=1
W=4
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 390 10 1 0 {name=M14
L=2
W=1.4
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 390 -40 2 0 {name=p11 sig_type=std_logic lab=VB2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 500 30 1 0 {name=C1 model=cap_mim_m3_1 W=8 L=8 MF=4 spiceprefix=X}
C {devices/lab_pin.sym} 690 -120 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {iopin.sym} -990 -220 0 1 {name=p13 lab=VDD}
C {devices/lab_pin.sym} -930 -220 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {iopin.sym} -990 -180 0 1 {name=p15 lab=VSS}
C {devices/lab_pin.sym} -930 -180 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {iopin.sym} -990 -140 0 1 {name=p17 lab=Vin+}
C {devices/lab_pin.sym} -930 -140 2 0 {name=p18 sig_type=std_logic lab=Vin+}
C {iopin.sym} -990 -100 0 1 {name=p19 lab=Vin-}
C {devices/lab_pin.sym} -930 -100 2 0 {name=p20 sig_type=std_logic lab=Vin-}
C {iopin.sym} -990 -60 0 1 {name=p21 lab=VOUT}
C {devices/lab_pin.sym} -930 -60 2 0 {name=p22 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} -570 -530 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -470 -460 0 0 {name=M1
L=2.2
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -650 -460 0 1 {name=M5
L=2.2
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 70 -450 0 0 {name=M6
L=2.2
W=1
nf=2 mult=8
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 670 -450 0 0 {name=M12
L=2.2
W=1
nf=2 mult=16
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -60 -450 2 1 {name=p7 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 540 -450 2 1 {name=p10 sig_type=std_logic lab=VB1}
