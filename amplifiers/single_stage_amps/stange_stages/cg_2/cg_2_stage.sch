v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -240 170 -240 {
lab=VDD}
N 140 -210 170 -210 {
lab=VSS}
N 140 -180 170 -180 {
lab=VIN}
N 140 -150 170 -150 {
lab=VOUT}
N 610 -220 610 -200 {
lab=#net1}
N 610 -350 610 -310 {
lab=VDD}
N 610 20 680 20 {
lab=VSS}
N 610 -250 610 -230 {
lab=#net1}
N 610 -120 610 -10 {
lab=VOUT}
N 610 -230 610 -220 {
lab=#net1}
N 610 -70 700 -70 {
lab=VOUT}
N 610 -140 610 -120 {
lab=VOUT}
N 610 -170 650 -170 {
lab=VDD}
N 610 50 610 80 {
lab=#net2}
N 610 140 610 170 {
lab=VIN}
N 570 110 590 110 {
lab=VDD}
N 150 100 150 120 {
lab=GND}
N 150 0 150 40 {
lab=VB1}
N 150 120 150 140 {
lab=GND}
N 210 100 210 120 {
lab=GND}
N 210 0 210 40 {
lab=VB2}
N 210 120 210 140 {
lab=GND}
N 610 -310 610 -250 {}
C {devices/iopin.sym} 140 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 170 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 140 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 170 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 140 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} 170 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} 140 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} 170 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 610 -340 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 590 20 0 0 {name=M1
L=0.7
W=60
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 610 110 0 0 {name=R4
L=1
model=res_high_po_0p35
spiceprefix=X
 mult=6}
C {devices/lab_pin.sym} 650 -170 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 590 -170 0 0 {name=M9
L=0.7
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 570 110 2 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 570 -170 0 0 {name=p19 sig_type=std_logic lab=VB1
}
C {devices/lab_pin.sym} 570 20 0 0 {name=p20 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 610 170 0 0 {name=p21 sig_type=std_logic lab=VIN
}
C {devices/vsource.sym} 150 70 0 0 {name=V6 value=3.8}
C {devices/lab_pin.sym} 150 10 0 0 {name=p4 sig_type=std_logic lab=VB1
}
C {devices/gnd.sym} 150 140 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 210 70 0 0 {name=V7 value=1.2}
C {devices/lab_pin.sym} 210 10 0 0 {name=p18 sig_type=std_logic lab=VB2}
C {devices/gnd.sym} 210 140 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 700 -70 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 680 20 0 1 {name=p13 sig_type=std_logic lab=VSS}
