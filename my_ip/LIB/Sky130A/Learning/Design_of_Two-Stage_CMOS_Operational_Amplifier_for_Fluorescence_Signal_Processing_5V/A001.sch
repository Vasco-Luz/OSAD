v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {it has a very bad phase margin, this means that the output pole and the input pole are too close} 1280 -830 0 0 0.4 0.4 {}
T {In order to increase the the distance, we must one decrease the frequency of the pole of the 1 stage or 2 increase the frequency of the 2 pole} 1280 -780 0 0 0.4 0.4 {}
T {i start by decreasing the frequency of the pole of the first stage} 1290 -730 0 0 0.4 0.4 {}
N 280 -660 280 -620 {lab=VDD}
N 280 -620 280 -590 {lab=VDD}
N 320 -590 460 -590 {lab=VB1}
N 500 -660 500 -620 {lab=VDD}
N 500 -620 500 -590 {lab=VDD}
N 390 -590 390 -550 {lab=VB1}
N 280 -550 390 -550 {lab=VB1}
N 320 -220 400 -220 {lab=#net1}
N 420 -280 420 -220 {lab=#net1}
N 420 -280 500 -280 {lab=#net1}
N 500 -280 500 -250 {lab=#net1}
N 260 -120 260 -80 {lab=VSS}
N 260 -80 440 -80 {lab=VSS}
N 280 -90 280 -80 {lab=VSS}
N 500 -220 500 -190 {lab=VSS}
N 400 -220 460 -220 {lab=#net1}
N 500 -190 500 -80 {lab=VSS}
N 440 -80 500 -80 {lab=VSS}
N 260 -220 280 -220 {lab=VSS}
N 260 -220 260 -120 {lab=VSS}
N 280 -190 280 -150 {lab=#net2}
N 280 -660 380 -660 {lab=VDD}
N 380 -660 500 -660 {lab=VDD}
N 280 -560 280 -550 {lab=VB1}
N 280 -360 280 -250 {lab=#net3}
N 500 -360 500 -280 {lab=#net1}
N 220 -390 280 -390 {lab=VSS}
N 500 -390 560 -390 {lab=VSS}
N 320 -390 460 -390 {lab=VB2}
N 390 -450 390 -390 {lab=VB2}
N 390 -450 500 -450 {lab=VB2}
N 280 -450 280 -420 {lab=VB1}
N 280 -550 280 -510 {lab=VB1}
N 500 -460 500 -450 {lab=VB2}
N 500 -450 500 -420 {lab=VB2}
N 500 -560 500 -530 {lab=VB2}
N 500 -470 500 -460 {lab=VB2}
N 280 -510 280 -450 {lab=VB1}
N 500 -530 500 -470 {lab=VB2}
N 500 -660 950 -660 {lab=VDD}
N 950 -660 950 -610 {lab=VDD}
N 950 -610 950 -580 {lab=VDD}
N 840 -580 910 -580 {lab=VB1}
N 1660 -660 1660 -610 {lab=VDD}
N 1660 -610 1660 -580 {lab=VDD}
N 1550 -580 1620 -580 {lab=VB1}
N 1150 -660 1660 -660 {lab=VDD}
N 950 -660 1150 -660 {lab=VDD}
N 810 -440 810 -410 {lab=#net4}
N 810 -490 810 -440 {lab=#net4}
N 810 -490 950 -490 {lab=#net4}
N 950 -550 950 -490 {lab=#net4}
N 950 -490 1090 -490 {lab=#net4}
N 1090 -450 1090 -410 {lab=#net4}
N 1090 -490 1090 -450 {lab=#net4}
N 730 -410 770 -410 {lab=Vin-}
N 1130 -410 1170 -410 {lab=Vin+}
N 1090 -380 1090 -220 {lab=#net5}
N 810 -380 810 -220 {lab=#net6}
N 850 -190 1050 -190 {lab=#net6}
N 960 -250 960 -190 {lab=#net6}
N 810 -250 960 -250 {lab=#net6}
N 500 -80 1090 -80 {lab=VSS}
N 1090 -190 1090 -80 {lab=VSS}
N 810 -190 810 -80 {lab=VSS}
N 1660 -550 1660 -190 {lab=VOUT}
N 1300 -160 1620 -160 {lab=#net5}
N 1300 -230 1300 -160 {lab=#net5}
N 1090 -230 1300 -230 {lab=#net5}
N 1660 -160 1660 -130 {lab=VSS}
N 1660 -130 1660 -80 {lab=VSS}
N 1090 -80 1660 -80 {lab=VSS}
N 1280 -340 1280 -80 {lab=VSS}
N 1090 -340 1250 -340 {lab=#net5}
N 1280 -410 1280 -380 {lab=VB2}
N 1310 -340 1360 -340 {lab=#net7}
N 1420 -340 1660 -340 {lab=VOUT}
N 100 -560 120 -560 {lab=VDD}
N 100 -520 120 -520 {lab=VSS}
N 100 -490 120 -490 {lab=Vin+}
N 100 -460 120 -460 {lab=Vin-}
N 100 -430 120 -430 {lab=VOUT}
C {devices/lab_pin.sym} 360 -80 3 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 380 -660 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 -390 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 560 -390 0 1 {name=p5 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 480 -590 0 0 {name=M5
L=2.2
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 300 -590 0 1 {name=M6
L=2.2
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 280 -120 0 0 {name=R2
L=20.4
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 480 -220 0 0 {name=M7
L=3.2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 300 -220 0 1 {name=M8
L=3.2
W=1
nf=8 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 300 -390 0 1 {name=M9
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 480 -390 0 0 {name=M10
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 280 -500 2 0 {name=p1 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 500 -520 2 0 {name=p6 sig_type=std_logic lab=VB2}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 930 -580 0 0 {name=M1
L=2.2
W=1
nf=2 mult=8
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 840 -580 2 1 {name=p7 sig_type=std_logic lab=VB1}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 1640 -580 0 0 {name=M2
L=2.2
W=1
nf=2 mult=16
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1550 -580 2 1 {name=p8 sig_type=std_logic lab=VB1}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 790 -410 0 0 {name=M3
L=1
W=4
nf=4 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 1110 -410 0 1 {name=M4
L=1
W=4
nf=4 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 730 -410 2 1 {name=p9 sig_type=std_logic lab=Vin-}
C {devices/lab_pin.sym} 1170 -410 2 0 {name=p10 sig_type=std_logic lab=Vin+}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 1070 -190 0 0 {name=M11
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 830 -190 0 1 {name=M12
L=2
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 1640 -160 0 0 {name=M13
L=1
W=4
nf=4 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1660 -480 2 0 {name=p11 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 1280 -360 1 0 {name=M14
L=2
W=1
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1280 -410 2 0 {name=p12 sig_type=std_logic lab=VB2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1390 -340 1 0 {name=C1 model=cap_mim_m3_1 W=8 L=8 MF=4 spiceprefix=X}
C {iopin.sym} 100 -560 0 1 {name=p13 lab=VDD}
C {devices/lab_pin.sym} 120 -560 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {iopin.sym} 100 -520 0 1 {name=p15 lab=VSS}
C {devices/lab_pin.sym} 120 -520 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {iopin.sym} 100 -490 0 1 {name=p17 lab=Vin+}
C {devices/lab_pin.sym} 120 -490 2 0 {name=p18 sig_type=std_logic lab=Vin+}
C {iopin.sym} 100 -460 0 1 {name=p19 lab=Vin-}
C {devices/lab_pin.sym} 120 -460 2 0 {name=p20 sig_type=std_logic lab=Vin-}
C {iopin.sym} 100 -430 0 1 {name=p21 lab=VOUT}
C {devices/lab_pin.sym} 120 -430 2 0 {name=p22 sig_type=std_logic lab=VOUT}
