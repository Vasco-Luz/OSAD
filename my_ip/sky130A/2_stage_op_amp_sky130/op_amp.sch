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
lab=#net8}
N 180 -180 230 -180 {
lab=#net8}
N 280 -180 280 -160 {
lab=#net8}
N 230 -180 280 -180 {
lab=#net8}
N 80 -180 130 -180 {
lab=#net8}
N 80 -180 80 -160 {
lab=#net8}
N -280 -330 -50 -330 {
lab=VDD}
N -370 -240 -140 -240 {
lab=#net1}
N 80 -130 120 -130 {
lab=#net8}
N 120 -180 120 -130 {
lab=#net8}
N 240 -130 280 -130 {
lab=#net8}
N 240 -180 240 -130 {
lab=#net8}
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
lab=#net9}
N 80 -100 80 20 {
lab=#net9}
N 280 -100 280 20 {
lab=VOUT_1}
N 80 50 80 80 {
lab=VSS}
N 280 50 280 80 {
lab=VSS}
N 180 -20 180 50 {
lab=#net9}
N 80 -20 180 -20 {
lab=#net9}
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
lab=VOUT_1}
N 360 -10 360 40 {
lab=VOUT_1}
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
lab=VOUT_1}
N 470 140 600 140 {
lab=VSS}
N 600 80 600 140 {
lab=VSS}
N 360 -70 400 -70 {
lab=VOUT_1}
N 360 -70 360 -10 {
lab=VOUT_1}
N 360 40 560 40 {
lab=VOUT_1}
N 460 -70 490 -70 {
lab=#net10}
N 550 -70 600 -70 {
lab=VOUT}
N 430 -330 430 -90 {
lab=VDD}
C {devices/lab_pin.sym} -350 -330 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8_nf.sym} -300 -30 0 0 {name=M5
L=8
W=0.68
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} -440 -30 0 1 {name=M6
L=8
W=0.68
nf=2 mult=4
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -460 140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} 180 -210 0 0 {name=Vmeas}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} 160 -290 0 0 {name=M7
L=2
W=2
nf=2 mult=2
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
L=0.35
model=res_xhigh_po_0p35
spiceprefix=X
 mult=4}
C {sky130_fd_pr/nfet_01v8_nf.sym} -440 -150 0 1 {name=M4
L=8
W=1 
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} -300 -150 0 0 {name=M3
L=8
W=1
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -500 70 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 300 -130 0 1 {name=M8
L=0.5
W=10
nf=6 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 60 -130 0 0 {name=M9
L=0.5
W=10
nf=6 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 350 -130 0 1 {name=p15 sig_type=std_logic lab=VIN+
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 260 50 0 0 {name=M10
L=4
W=1.8
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 280 -70 0 1 {name=p4 sig_type=std_logic lab=VOUT_1}
C {sky130_fd_pr/nfet_01v8_nf.sym} 100 50 0 1 {name=M11
L=4
W=1.8
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt_nf.sym} 580 -270 0 0 {name=M12
L=2
W=2
nf=2 mult=4
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 580 50 0 0 {name=M13
L=4
W=1.8
nf=2 mult=4
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 600 -50 0 1 {name=p16 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 10 -130 0 0 {name=p14 sig_type=std_logic lab=VIN-
}
C {sky130_fd_pr/cap_mim_m3_2.sym} 520 -70 1 0 {name=C1 model=cap_mim_m3_2 W=6 L=6 MF=12 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 430 -70 1 0 {name=R1
W=0.35
L=0.35
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
