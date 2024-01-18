v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -660 -410 -610 -410 {
lab=VOUT2+}
N -180 -340 -180 -320 {
lab=VOUT2+}
N -660 -380 -610 -380 {
lab=VOUT2-}
N 40 -340 40 -320 {
lab=VOUT2-}
N -660 -350 -610 -350 {
lab=VDD}
N -180 -260 -180 -220 {
lab=Vsensed}
N -180 -220 40 -220 {
lab=Vsensed}
N 40 -260 40 -220 {
lab=Vsensed}
N -80 -220 -80 -170 {
lab=Vsensed}
N -660 -320 -610 -320 {
lab=Vsensed}
C {devices/iopin.sym} -660 -410 0 1 {name=p2 lab=VOUT2+}
C {devices/lab_pin.sym} -610 -410 2 0 {name=p7 sig_type=std_logic lab=VOUT2+}
C {sky130_fd_pr/res_high_po_0p35.sym} -180 -290 0 0 {name=R6
L=50
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 40 -290 0 1 {name=R1
L=50
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -180 -340 1 0 {name=p1 sig_type=std_logic lab=VOUT2+}
C {devices/iopin.sym} -660 -380 0 1 {name=p3 lab=VOUT2-}
C {devices/lab_pin.sym} -610 -380 2 0 {name=p4 sig_type=std_logic lab=VOUT2-}
C {devices/lab_pin.sym} 40 -340 1 0 {name=p5 sig_type=std_logic lab=VOUT2-}
C {devices/iopin.sym} -660 -350 0 1 {name=p6 lab=VDD}
C {devices/lab_pin.sym} -610 -350 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -200 -290 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 60 -290 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -660 -320 0 1 {name=p11 lab=Vsensed}
C {devices/lab_pin.sym} -610 -320 2 0 {name=p12 sig_type=std_logic lab=Vsensed}
C {devices/lab_pin.sym} -80 -170 2 0 {name=p13 sig_type=std_logic lab=Vsensed}
