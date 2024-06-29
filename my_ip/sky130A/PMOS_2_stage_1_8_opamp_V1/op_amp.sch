v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -460 -330 -280 -330 {
lab=VDD}
N -460 -330 -460 -300 {
lab=VDD}
N -280 -330 -280 -300 {
lab=VDD}
N -420 -300 -320 -300 {
lab=#net1}
N -460 -270 -460 -180 {
lab=#net1}
N -280 -270 -280 -180 {
lab=#net2}
N -420 -150 -320 -150 {
lab=#net2}
N -370 -300 -370 -240 {
lab=#net1}
N -460 -240 -370 -240 {
lab=#net1}
N -370 -210 -370 -150 {
lab=#net2}
N -370 -210 -280 -210 {
lab=#net2}
N -420 -30 -320 -30 {
lab=#net3}
N -460 -120 -460 -60 {
lab=#net4}
N -280 -120 -280 -60 {
lab=#net3}
N -370 -90 -370 -30 {
lab=#net3}
N -370 -90 -280 -90 {
lab=#net3}
N -460 0 -460 40 {
lab=#net5}
N -280 0 -280 50 {
lab=VSS}
N -460 100 -460 140 {
lab=VSS}
N -500 70 -480 70 {
lab=VDD}
N -50 -330 180 -330 {
lab=VDD}
N 180 -330 180 -290 {
lab=VDD}
N 90 -290 140 -290 {
lab=#net1}
N 90 -290 90 -250 {
lab=#net1}
N -140 -240 90 -240 {
lab=#net1}
N 90 -250 90 -240 {
lab=#net1}
N -490 -150 -460 -150 {
lab=VSS}
N -490 -30 -460 -30 {
lab=VSS}
N -280 -150 -250 -150 {
lab=VSS}
N -280 -30 -250 -30 {
lab=VSS}
N -280 50 -280 140 {
lab=VSS}
N 180 -260 180 -240 {
lab=#net6}
N 130 -180 180 -180 {
lab=#net6}
N 180 -180 230 -180 {
lab=#net6}
N 280 -180 280 -160 {
lab=#net6}
N 230 -180 280 -180 {
lab=#net6}
N 80 -180 130 -180 {
lab=#net6}
N 80 -180 80 -160 {
lab=#net6}
N -280 -330 -50 -330 {
lab=VDD}
N -370 -240 -140 -240 {
lab=#net1}
N 80 -130 120 -130 {
lab=#net6}
N 120 -180 120 -130 {
lab=#net6}
N 240 -130 280 -130 {
lab=#net6}
N 240 -180 240 -130 {
lab=#net6}
N 10 -130 40 -130 {
lab=VIN-}
N 320 -130 350 -130 {
lab=VIN+}
N -460 140 280 140 {
lab=VSS}
N 280 80 280 140 {
lab=VSS}
N 80 80 80 140 {
lab=VSS}
N 120 50 240 50 {
lab=#net7}
N 80 -100 80 20 {
lab=#net7}
N 280 -100 280 20 {
lab=#net8}
N 80 50 80 80 {
lab=VSS}
N 280 50 280 80 {
lab=VSS}
N 180 -20 180 50 {
lab=#net7}
N 80 -20 180 -20 {
lab=#net7}
N 520 -270 560 -270 {
lab=#net1}
N 180 -330 470 -330 {
lab=VDD}
N 600 -320 600 -300 {
lab=VDD}
N 600 -300 600 -270 {
lab=VDD}
N 600 -240 600 20 {
lab=VOUT}
N 280 -10 360 -10 {
lab=#net8}
N 360 -10 360 40 {
lab=#net8}
N 600 50 600 80 {
lab=VSS}
N 280 140 470 140 {
lab=VSS}
N 90 -240 120 -240 {
lab=#net1}
N 120 -250 120 -240 {
lab=#net1}
N 120 -250 370 -250 {
lab=#net1}
N 370 -250 390 -250 {
lab=#net1}
N 470 -330 600 -330 {
lab=VDD}
N 600 -330 600 -320 {
lab=VDD}
N 390 -250 520 -250 {
lab=#net1}
N 520 -270 520 -250 {
lab=#net1}
N 560 40 560 50 {
lab=#net8}
N 470 140 600 140 {
lab=VSS}
N 600 80 600 140 {
lab=VSS}
N 360 -70 400 -70 {
lab=#net8}
N 360 -70 360 -10 {
lab=#net8}
N 360 40 560 40 {
lab=#net8}
N 460 -70 490 -70 {
lab=#net9}
N 550 -70 600 -70 {
lab=VOUT}
N -1100 -360 -1030 -360 {
lab=VDD}
N -1100 -320 -1030 -320 {
lab=VSS}
N -1100 -280 -1030 -280 {
lab=VIN-}
N -1100 -240 -1030 -240 {
lab=VIN+}
N -1100 -200 -1030 -200 {
lab=VOUT}
N 180 -240 180 -180 {
lab=#net6}
N 430 -210 430 -110 {
lab=#net2}
N -280 -210 430 -210 {
lab=#net2}
N 430 -70 430 140 {
lab=VSS}
C {devices/lab_pin.sym} 0 -330 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8_nf.sym} -300 -30 0 0 {name=M5
L=6
W=2
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} -440 -30 0 1 {name=M6
L=6
W=2
nf=2 mult=4
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 40 140 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} 160 -290 0 0 {name=M7
L=2
W=2
nf=2 mult=12
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/lab_pin.sym} -490 -150 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -250 -150 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -490 -30 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -250 -30 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} -300 -300 0 0 {name=M2
L=2
W=2
nf=2 mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} -440 -300 0 1 {name=M1
L=2
W=2
nf=2 mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -460 70 0 0 {name=R10
W=0.35
L=1
model=res_xhigh_po_0p35
spiceprefix=X
 mult=2}
C {sky130_fd_pr/nfet_01v8_nf.sym} -440 -150 0 1 {name=M4
L=6
W=2 
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} -300 -150 0 0 {name=M3
L=6
W=2
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -500 70 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 350 -130 0 1 {name=p15 sig_type=std_logic lab=VIN+
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 260 50 0 0 {name=M10
L=1.5
W=3
nf=4 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 100 50 0 1 {name=M11
L=1.5
W=3
nf=4 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} 580 -270 0 0 {name=M12
L=2
W=2
nf=2 mult=24
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 580 50 0 0 {name=M13
L=1.5
W=3
nf=4 mult=8
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 600 -50 0 1 {name=p16 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 10 -130 0 0 {name=p14 sig_type=std_logic lab=VIN-
}
C {sky130_fd_pr/cap_mim_m3_2.sym} 520 -70 1 0 {name=C1 model=cap_mim_m3_2 W=9.2 L=9.2 MF=12 spiceprefix=X}
C {devices/iopin.sym} -1100 -360 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -1030 -360 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -1100 -320 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -1030 -320 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -1100 -280 0 1 {name=p12 lab=VIN-}
C {devices/lab_pin.sym} -1030 -280 2 0 {name=p13 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -1100 -240 0 1 {name=p17 lab=VIN+}
C {devices/lab_pin.sym} -1030 -240 2 0 {name=p18 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -1100 -200 0 1 {name=p19 lab=VOUT}
C {devices/lab_pin.sym} -1030 -200 2 0 {name=p20 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 60 -130 0 0 {name=M41
L=2
W=8
nf=10 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 300 -130 0 1 {name=M8
L=2
W=8
nf=10 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 430 -90 1 0 {name=M9
L=0.15
W=3  
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
