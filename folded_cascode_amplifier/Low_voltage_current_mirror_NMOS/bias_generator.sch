v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 110 -250 130 {
lab=VSS}
N -250 130 -250 140 {
lab=VSS}
N -250 20 -250 50 {
lab=#net1}
N -350 80 -250 80 {
lab=VSS}
N -350 -10 -250 -10 {
lab=VSS}
N -250 -80 -250 -40 {
lab=VB1}
N -310 -110 -270 -110 {
lab=VDD}
N -250 -170 -250 -140 {
lab=VB2}
N -210 80 -180 80 {
lab=VB1}
N -180 -60 -180 80 {
lab=VB1}
N -250 -60 -180 -60 {
lab=VB1}
N -210 -140 -210 -10 {
lab=VB2}
N -250 -140 -210 -140 {
lab=VB2}
N -180 80 -50 80 {
lab=VB1}
N -210 -10 -50 -10 {
lab=VB2}
N -10 -10 70 -10 {
lab=VSS}
N -10 80 70 80 {
lab=VSS}
N -10 20 -10 50 {
lab=#net2}
N -10 110 -10 140 {
lab=VSS}
N -10 -80 -10 -40 {
lab=VB3}
N -10 -120 -10 -80 {
lab=VB3}
N -70 -150 -30 -150 {
lab=VDD}
N -10 -390 -10 -370 {
lab=VDD}
N -10 -310 -10 -270 {
lab=#net3}
N -10 -210 -10 -180 {
lab=VB4}
N -20 -340 -10 -340 {
lab=VDD}
N -20 -370 -20 -340 {
lab=VDD}
N -20 -370 -10 -370 {
lab=VDD}
N -20 -240 -10 -240 {
lab=#net3}
N -20 -270 -20 -240 {
lab=#net3}
N -20 -270 -10 -270 {
lab=#net3}
N -10 -200 90 -200 {
lab=VB4}
N 90 -340 90 -200 {
lab=VB4}
N 70 -240 70 -110 {
lab=VB3}
N -10 -110 70 -110 {
lab=VB3}
N -250 -280 -250 -230 {
lab=IBIAS}
N -660 -410 -610 -410 {
lab=IBIAS}
N -660 -380 -610 -380 {
lab=VDD}
N -660 -320 -610 -320 {
lab=VB4}
N -660 -290 -610 -290 {
lab=VB3}
N -660 -260 -610 -260 {
lab=VB2}
N -660 -230 -610 -230 {
lab=VB1}
N 30 -240 70 -240 {
lab=VB3}
N 30 -340 90 -340 {
lab=VB4}
N -660 -350 -610 -350 {
lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -230 -10 0 1 {name=M5
L=1.5
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -230 80 0 1 {name=M1
L=1.8
W=10
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p69.sym} -250 -110 0 0 {name=R7
L=1*20
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -310 -110 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -30 -10 0 0 {name=M2
L=1.5
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -30 80 0 0 {name=M3
L=1.8
W=10
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p69.sym} -10 -150 0 0 {name=R1
L=1*20
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -70 -150 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 10 -240 0 1 {name=M9
L=1.2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 10 -340 0 1 {name=M4
L=1.5
W=25
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -10 -390 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 90 -340 1 0 {name=p9 sig_type=std_logic lab=VB4}
C {devices/lab_pin.sym} 70 -240 1 0 {name=p10 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} -120 -10 1 0 {name=p11 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} -120 80 1 0 {name=p12 sig_type=std_logic lab=VB1}
C {devices/res.sym} -250 -200 0 0 {name=R2
value=0.1
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} -660 -410 0 1 {name=p2 lab=IBIAS}
C {devices/lab_pin.sym} -250 -280 1 0 {name=p6 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} -610 -410 2 0 {name=p7 sig_type=std_logic lab=IBIAS}
C {devices/iopin.sym} -660 -380 0 1 {name=p13 lab=VDD}
C {devices/lab_pin.sym} -610 -380 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -660 -320 0 1 {name=p15 lab=VB4}
C {devices/lab_pin.sym} -610 -320 2 0 {name=p16 sig_type=std_logic lab=VB4}
C {devices/iopin.sym} -660 -290 0 1 {name=p17 lab=VB3}
C {devices/lab_pin.sym} -610 -290 2 0 {name=p18 sig_type=std_logic lab=VB3}
C {devices/iopin.sym} -660 -260 0 1 {name=p19 lab=VB2}
C {devices/lab_pin.sym} -610 -260 2 0 {name=p20 sig_type=std_logic lab=VB2}
C {devices/iopin.sym} -660 -230 0 1 {name=p21 lab=VB1}
C {devices/lab_pin.sym} -610 -230 2 0 {name=p22 sig_type=std_logic lab=VB1}
C {devices/iopin.sym} -660 -350 0 1 {name=p3 lab=VSS}
C {devices/lab_pin.sym} -610 -350 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -350 -10 2 1 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -350 80 2 1 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -250 140 2 1 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 140 2 1 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 70 80 2 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 70 -10 2 0 {name=p28 sig_type=std_logic lab=VSS}
