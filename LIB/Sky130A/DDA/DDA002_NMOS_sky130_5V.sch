v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -50 480 -50 {lab=VCMFB}
N 0 -80 0 -50 {lab=VDD}
N 0 -140 0 -80 {lab=VDD}
N 0 -140 520 -140 {lab=VDD}
N 520 -140 520 -50 {lab=VDD}
N -0 -20 0 100 {lab=#net1}
N 0 100 140 100 {lab=#net1}
N -140 130 140 130 {lab=VSS}
N 520 -20 520 100 {lab=#net2}
N 380 130 660 130 {lab=VSS}
N 380 100 520 100 {lab=#net2}
N -140 40 -140 100 {lab=#net2}
N -140 40 520 40 {lab=#net2}
N 660 60 660 100 {lab=#net1}
N 0 60 660 60 {lab=#net1}
N 180 130 220 130 {lab=VINN1}
N 300 130 340 130 {lab=VINP2}
N 700 130 740 130 {lab=VINN2}
N -220 130 -180 130 {lab=VINP1}
N -140 160 -140 280 {lab=#net3}
N -140 280 140 280 {lab=#net3}
N 140 160 140 280 {lab=#net3}
N -0 280 0 370 {lab=#net3}
N -0 400 0 430 {lab=VSS}
N -0 430 -0 480 {lab=VSS}
N 520 280 520 370 {lab=#net4}
N 520 400 520 430 {lab=VSS}
N 520 430 520 480 {lab=VSS}
N 660 160 660 280 {lab=#net4}
N 380 160 380 280 {lab=#net4}
N 380 280 660 280 {lab=#net4}
N 40 400 480 400 {lab=VB}
N 0 480 520 480 {lab=VSS}
N -340 -0 0 -0 {lab=#net1}
N -380 -30 -380 -0 {lab=VDD}
N -380 -140 -380 -30 {lab=VDD}
N -380 -140 -0 -140 {lab=VDD}
N -380 30 -380 120 {lab=VON}
N -380 120 -380 380 {lab=VON}
N -380 400 -380 430 {lab=VSS}
N -380 480 -0 480 {lab=VSS}
N -380 430 -380 480 {lab=VSS}
N -340 400 -300 400 {lab=VB}
N 520 0 860 0 {lab=#net2}
N 900 -140 900 -110 {lab=VDD}
N 900 -110 900 0 {lab=VDD}
N 900 30 900 120 {lab=VOP}
N 900 120 900 380 {lab=VOP}
N 900 430 900 480 {lab=VSS}
N 820 400 860 400 {lab=VB}
N 520 480 900 480 {lab=VSS}
N 900 400 900 430 {lab=VSS}
N 520 -140 900 -140 {lab=VDD}
N -850 -140 -380 -140 {lab=VDD}
N -850 480 -380 480 {lab=VSS}
N 1570 80 1570 110 {lab=VDD}
N 1570 230 1570 260 {lab=VSS}
N 1660 170 1690 170 {lab=VCMFB}
N 1320 200 1320 210 {lab=#net5}
N 1320 190 1320 200 {lab=#net5}
N 1320 100 1320 130 {lab=VOP}
N 1320 270 1320 300 {lab=VON}
N -1400 -30 -1380 -30 {lab=VDD}
N -1400 0 -1380 0 {lab=VSS}
N -1400 30 -1380 30 {lab=VREF}
N -1400 60 -1380 60 {lab=VINN1}
N -1400 90 -1380 90 {lab=VINN2}
N -1400 120 -1380 120 {lab=VINP1}
N -1400 150 -1380 150 {lab=VINP2}
N -1400 180 -1380 180 {lab=VCM}
N -1400 210 -1380 210 {lab=VOP}
N -1400 240 -1380 240 {lab=VON}
N -850 -110 -850 -80 {lab=VDD}
N -930 -80 -890 -80 {lab=VREF}
N -850 -50 -850 210 {lab=VB}
N -850 360 -850 400 {lab=#net6}
N -850 210 -850 300 {lab=VB}
N -960 330 -870 330 {lab=VSS}
N -810 430 -720 430 {lab=VB}
N -720 270 -720 430 {lab=VB}
N -850 270 -720 270 {lab=VB}
N -850 -140 -850 -110 {lab=VDD}
N -960 330 -960 480 {lab=VSS}
N -960 480 -850 480 {lab=VSS}
N -850 460 -850 480 {lab=VSS}
N -850 430 -850 460 {lab=VSS}
N 1490 140 1520 140 {lab=VCM}
N 1320 200 1520 200 {lab=#net5}
C {devices/lab_pin.sym} 270 -50 1 0 {name=p1 sig_type=std_logic lab=VCMFB}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 20 -50 0 1 {name=M2
L=2.5
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -160 130 0 0 {name=M3
L=1
W=3
nf=2 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 0 130 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 130 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 130 3 0 {name=p4 sig_type=std_logic lab=VINN1}
C {devices/lab_pin.sym} -220 130 1 1 {name=p7 sig_type=std_logic lab=VINP1}
C {devices/lab_pin.sym} 250 400 1 1 {name=p8 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 250 480 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -300 400 1 1 {name=p10 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 820 400 3 0 {name=p11 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 300 130 1 1 {name=p5 sig_type=std_logic lab=VINP2}
C {devices/lab_pin.sym} 740 130 3 0 {name=p6 sig_type=std_logic lab=VINN2}
C {devices/lab_pin.sym} -380 160 0 0 {name=p14 sig_type=std_logic lab=VON}
C {devices/lab_pin.sym} 900 150 2 0 {name=p15 sig_type=std_logic lab=VOP}
C {Sky130A/single ended amplifiers/VA001_sky130_5V.sym} 1570 170 0 0 {name=x1}
C {devices/lab_pin.sym} 180 -140 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1570 80 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1570 260 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1690 170 2 0 {name=p19 sig_type=std_logic lab=VCMFB}
C {res.sym} 1320 160 0 0 {name=R2
value=10G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1320 100 2 0 {name=p21 sig_type=std_logic lab=VOP}
C {devices/lab_pin.sym} 1320 300 0 0 {name=p22 sig_type=std_logic lab=VON}
C {res.sym} 1320 240 0 0 {name=R3
value=10G
footprint=1206
device=resistor
m=1}
C {iopin.sym} -1400 -30 0 1 {name=p23 lab=VDD}
C {devices/lab_pin.sym} -1380 -30 2 0 {name=p24 sig_type=std_logic lab=VDD}
C {iopin.sym} -1400 0 0 1 {name=p25 lab=VSS}
C {devices/lab_pin.sym} -1380 0 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {iopin.sym} -1400 30 0 1 {name=p27 lab=VREF}
C {devices/lab_pin.sym} -1380 30 2 0 {name=p28 sig_type=std_logic lab=VREF}
C {iopin.sym} -1400 60 0 1 {name=p29 lab=VINN1}
C {devices/lab_pin.sym} -1380 60 2 0 {name=p30 sig_type=std_logic lab=VINN1}
C {iopin.sym} -1400 90 0 1 {name=p31 lab=VINN2}
C {devices/lab_pin.sym} -1380 90 2 0 {name=p32 sig_type=std_logic lab=VINN2}
C {iopin.sym} -1400 120 0 1 {name=p33 lab=VINP1}
C {devices/lab_pin.sym} -1380 120 2 0 {name=p34 sig_type=std_logic lab=VINP1}
C {iopin.sym} -1400 150 0 1 {name=p35 lab=VINP2}
C {devices/lab_pin.sym} -1380 150 2 0 {name=p36 sig_type=std_logic lab=VINP2}
C {iopin.sym} -1400 180 0 1 {name=p37 lab=VCM}
C {devices/lab_pin.sym} -1380 180 2 0 {name=p38 sig_type=std_logic lab=VCM}
C {iopin.sym} -1400 210 0 1 {name=p39 lab=VOP}
C {devices/lab_pin.sym} -1380 210 2 0 {name=p40 sig_type=std_logic lab=VOP}
C {iopin.sym} -1400 240 0 1 {name=p41 lab=VON}
C {devices/lab_pin.sym} -1380 240 2 0 {name=p42 sig_type=std_logic lab=VON}
C {devices/lab_pin.sym} -930 -80 2 1 {name=p12 sig_type=std_logic lab=VREF}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -830 430 0 1 {name=M13
L=3
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} -850 330 0 0 {name=R1
L=26
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -720 310 0 1 {name=p13 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} -850 -140 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -870 -80 0 0 {name=M14
L=2.5
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 20 400 0 1 {name=M7
L=3
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 500 400 0 0 {name=M8
L=3
W=1
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -360 400 0 1 {name=M10
L=3
W=1
nf=2 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 880 400 0 0 {name=M12
L=3
W=1
nf=2 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 160 130 0 1 {name=M6
L=1
W=3
nf=2 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 360 130 0 0 {name=M4
L=1
W=3
nf=2 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 680 130 0 1 {name=M5
L=1
W=3
nf=2 mult=4
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 500 -50 0 0 {name=M1
L=2.5
W=1
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -360 0 0 1 {name=M15
L=0.6
W=3
nf=4 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 880 0 0 0 {name=M9
L=0.6
W=3
nf=4 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1490 140 0 0 {name=p43 sig_type=std_logic lab=VCM}
