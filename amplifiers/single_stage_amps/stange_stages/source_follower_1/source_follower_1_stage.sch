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
N 360 -120 410 -120 {
lab=VIN}
N 520 -270 520 -230 {
lab=VDD}
N 460 -120 480 -120 {
lab=VIN}
N 410 -120 460 -120 {
lab=VIN}
N 520 -90 520 -60 {
lab=VOUT}
N 480 -60 520 -60 {
lab=VOUT}
N 420 -120 420 -60 {
lab=VIN}
N 520 -170 520 -150 {
lab=VDD}
N 520 20 520 30 {
lab=VSS}
N 520 -230 520 -170 {
lab=VDD}
N 520 30 520 60 {
lab=VSS}
N 520 -60 520 -40 {
lab=VOUT}
N 520 -120 560 -120 {
lab=VSS}
C {devices/iopin.sym} 140 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 170 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 140 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 170 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 140 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} 170 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} 140 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} 170 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 360 -120 0 0 {name=p16 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 520 60 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -260 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -120 0 0 {name=M1
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
C {devices/lab_pin.sym} 450 -80 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po_0p35.sym} 450 -60 1 0 {name=R1
L=5
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 520 -10 0 0 {name=R4
L=1*10
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 500 -10 3 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -120 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -60 2 0 {name=p13 sig_type=std_logic lab=VOUT}
