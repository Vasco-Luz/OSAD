v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -830 -270 -760 -270 {
lab=VDD}
N -830 -230 -760 -230 {
lab=VSS}
N -830 -180 -760 -180 {
lab=WL}
N -830 -140 -760 -140 {
lab=Q}
N -830 -100 -760 -100 {
lab=-Q}
N 80 -440 220 -440 {
lab=VDD}
N 220 -440 360 -440 {
lab=VDD}
N -60 -440 80 -440 {
lab=VDD}
N 360 -440 360 -380 {
lab=VDD}
N 360 -350 380 -350 {
lab=VDD}
N 380 -400 380 -350 {
lab=VDD}
N 360 -400 380 -400 {
lab=VDD}
N -60 -440 -60 -380 {
lab=VDD}
N -80 -350 -60 -350 {
lab=VDD}
N -80 -400 -80 -350 {
lab=VDD}
N -80 -400 -60 -400 {
lab=VDD}
N 360 -320 360 -160 {
lab=b}
N 300 -350 320 -350 {
lab=a}
N 300 -350 300 -130 {
lab=a}
N 300 -130 320 -130 {
lab=a}
N -20 -350 0 -350 {
lab=b}
N 0 -350 0 -130 {
lab=b}
N -20 -130 0 -130 {
lab=b}
N -60 -320 -60 -160 {
lab=a}
N -60 -100 -60 -40 {
lab=VSS}
N -60 -40 360 -40 {
lab=VSS}
N 360 -100 360 -40 {
lab=VSS}
N -110 -130 -60 -130 {
lab=VSS}
N -110 -130 -110 -40 {
lab=VSS}
N -110 -40 -60 -40 {
lab=VSS}
N 360 -130 410 -130 {
lab=VSS}
N 410 -130 410 -40 {
lab=VSS}
N 360 -40 410 -40 {
lab=VSS}
N -180 -250 -60 -250 {
lab=a}
N -210 -250 -210 -40 {
lab=VSS}
N -210 -40 -110 -40 {
lab=VSS}
N 360 -250 480 -250 {
lab=b}
N 510 -250 510 -40 {
lab=VSS}
N 410 -40 510 -40 {
lab=VSS}
N -210 -360 -210 -290 {
lab=WL}
N 510 -360 510 -290 {
lab=WL}
N -320 -250 -240 -250 {
lab=Q}
N 540 -250 620 -250 {
lab=-Q}
N -60 -250 300 -200 {
lab=a}
N 0 -200 360 -250 {
lab=b}
C {devices/iopin.sym} -830 -270 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -760 -270 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -830 -230 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -760 -230 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -830 -180 0 1 {name=p2 lab=WL}
C {devices/lab_pin.sym} -760 -180 2 0 {name=p3 sig_type=std_logic lab=WL}
C {devices/iopin.sym} -830 -140 0 1 {name=p5 lab=Q}
C {devices/lab_pin.sym} -760 -140 2 0 {name=p8 sig_type=std_logic lab=Q}
C {devices/iopin.sym} -830 -100 0 1 {name=p9 lab=-Q}
C {devices/lab_pin.sym} -760 -100 2 0 {name=p10 sig_type=std_logic lab=-Q}
C {devices/lab_pin.sym} 150 -440 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8_nf.sym} -40 -350 0 1 {name=M1
L=0.15
W=2
nf=6 mult=2
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} -210 -270 3 1 {name=M5
L=0.15
W=1  
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 510 -270 1 0 {name=M6
L=0.15
W=1  
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -210 -360 2 0 {name=p12 sig_type=std_logic lab=WL}
C {devices/lab_pin.sym} 510 -360 0 0 {name=p13 sig_type=std_logic lab=WL}
C {devices/lab_pin.sym} -320 -250 2 1 {name=p14 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 620 -250 2 0 {name=p15 sig_type=std_logic lab=-Q}
C {devices/lab_pin.sym} 140 -40 1 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 -300 0 0 {name=p17 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 0 -300 0 1 {name=p18 sig_type=std_logic lab=b}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} -40 -130 0 1 {name=M2
L=0.15
W=2
nf=2 mult=2
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 340 -130 0 0 {name=M3
L=0.15
W=2
nf=2 mult=2
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} 340 -350 0 0 {name=M4
L=0.15
W=2
nf=6 mult=2
model=pfet_01v8
spiceprefix=X
}
