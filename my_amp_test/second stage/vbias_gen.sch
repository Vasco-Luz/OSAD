v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -210 -230 -210 -200 {
lab=Ibias}
N -210 210 -210 250 {
lab=VSS}
N -210 120 -210 150 {
lab=#net1}
N -210 20 -210 60 {
lab=VN2}
N -210 -70 -210 -40 {
lab=VN1}
N -190 -10 -160 -10 {
lab=VDD}
N -290 90 -210 90 {
lab=VSS}
N -290 180 -210 180 {
lab=VSS}
N -170 90 -110 90 {
lab=VN1}
N -110 -50 -110 90 {
lab=VN1}
N -210 -50 -110 -50 {
lab=VN1}
N -170 180 -140 180 {
lab=VN2}
N -140 50 -140 180 {
lab=VN2}
N -210 50 -140 50 {
lab=VN2}
N -110 90 10 90 {
lab=VN1}
N -140 180 10 180 {
lab=VN2}
N 50 180 120 180 {
lab=VSS}
N 50 90 120 90 {
lab=VSS}
N 50 210 50 250 {
lab=VSS}
N 50 120 50 150 {
lab=#net2}
N 50 10 50 60 {
lab=VP2}
N 70 -20 90 -20 {
lab=VDD}
N 50 -90 50 -50 {
lab=VP1}
N 50 -120 60 -120 {
lab=#net3}
N 60 -150 60 -120 {
lab=#net3}
N 50 -150 60 -150 {
lab=#net3}
N -60 -120 10 -120 {
lab=VP2}
N -60 -120 -60 20 {
lab=VP2}
N -60 20 50 20 {
lab=VP2}
N -20 -220 10 -220 {
lab=VP1}
N -20 -220 -20 -90 {
lab=VP1}
N -20 -90 50 -90 {
lab=VP1}
N 50 -190 50 -150 {
lab=#net3}
N 50 -270 50 -250 {
lab=VDD}
N 50 -220 60 -220 {
lab=VDD}
N 60 -250 60 -220 {
lab=VDD}
N 50 -250 60 -250 {
lab=VDD}
N -610 -100 -590 -100 {
lab=VDD}
N -610 -70 -590 -70 {
lab=VSS}
N -610 -40 -590 -40 {
lab=VP1}
N -610 -10 -590 -10 {
lab=VP2}
N -610 20 -590 20 {
lab=VN1}
N -610 50 -590 50 {
lab=VN2}
N -210 -200 -210 -130 {
lab=Ibias}
N -610 90 -600 90 {
lab=Ibias}
N -600 90 -590 90 {
lab=Ibias}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -190 180 0 1 {name=M5
L=1.5
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -190 90 0 1 {name=M1
L=0.8
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} -210 -10 0 1 {name=R8
L=100
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -160 -10 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 30 90 0 0 {name=M2
L=0.8
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 30 180 0 0 {name=M3
L=1.5
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 50 -20 0 1 {name=R1
L=1
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 90 -20 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 30 -120 0 0 {name=M9
L=0.8
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 30 -220 0 0 {name=M4
L=1
W=30
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 50 -270 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -20 -220 0 0 {name=p5 sig_type=std_logic lab=VP1}
C {devices/lab_pin.sym} -60 -120 0 0 {name=p8 sig_type=std_logic lab=VP2}
C {devices/lab_pin.sym} -70 90 3 0 {name=p9 sig_type=std_logic lab=VN1}
C {devices/lab_pin.sym} -70 180 3 0 {name=p10 sig_type=std_logic lab=VN2}
C {devices/iopin.sym} -610 -100 0 1 {name=p6 lab=VDD}
C {devices/lab_pin.sym} -590 -100 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -610 -70 0 1 {name=p11 lab=VSS}
C {devices/lab_pin.sym} -590 -70 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -210 250 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 50 250 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 180 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 90 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -290 90 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -290 180 2 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -610 -40 0 1 {name=p19 lab=VP1}
C {devices/iopin.sym} -610 -10 0 1 {name=p21 lab=VP2}
C {devices/iopin.sym} -610 20 0 1 {name=p23 lab=VN1}
C {devices/iopin.sym} -610 50 0 1 {name=p25 lab=VN2}
C {devices/lab_pin.sym} -590 -40 2 0 {name=p20 sig_type=std_logic lab=VP1}
C {devices/lab_pin.sym} -590 -10 2 0 {name=p22 sig_type=std_logic lab=VP2}
C {devices/lab_pin.sym} -590 20 2 0 {name=p24 sig_type=std_logic lab=VN1}
C {devices/lab_pin.sym} -590 50 2 0 {name=p26 sig_type=std_logic lab=VN2}
C {devices/lab_pin.sym} -210 -230 1 0 {name=p1 sig_type=std_logic lab=Ibias}
C {devices/lab_pin.sym} -590 90 2 0 {name=p27 sig_type=std_logic lab=Ibias}
C {devices/iopin.sym} -610 90 0 1 {name=p28 lab=Ibias}
C {devices/res.sym} -210 -100 0 0 {name=R2
value=0.1
footprint=1206
device=resistor
m=1}
