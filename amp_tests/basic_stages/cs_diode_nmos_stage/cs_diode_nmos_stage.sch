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
N 470 -230 470 -200 {
lab=VOUT}
N 470 -320 470 -290 {
lab=VDD}
N 470 -140 470 -110 {
lab=#net1}
N 470 -110 470 -90 {
lab=#net1}
N 470 -170 540 -170 {
lab=#net2}
N 470 -420 470 -380 {
lab=VDD}
N 380 -170 430 -170 {
lab=VIN}
N 470 -210 520 -210 {
lab=VOUT}
N 520 -210 690 -210 {
lab=VOUT}
N 470 -260 540 -260 {
lab=#net3}
N 430 -300 430 -260 {
lab=VDD}
N 430 -300 470 -300 {
lab=VDD}
N 470 -380 470 -320 {
lab=VDD}
N 690 -210 730 -210 {
lab=VOUT}
C {devices/iopin.sym} 140 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 170 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 140 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 170 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 140 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} 170 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} 140 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} 170 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 470 -410 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 730 -210 2 0 {name=p16 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 380 -170 0 0 {name=p17 sig_type=std_logic lab=VIN
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 450 -170 0 0 {name=M2
L=0.5
W=100
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 450 -260 0 0 {name=M3
L=2
W=6
nf=3
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
C {devices/lab_pin.sym} 470 -90 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 540 -170 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 540 -260 0 1 {name=p5 sig_type=std_logic lab=VSS}
