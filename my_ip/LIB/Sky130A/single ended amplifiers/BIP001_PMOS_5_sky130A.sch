v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Based this paper:
An integrated Buffer Amplifier} -700 -1130 0 0 1 1 {}
N -370 -770 -300 -770 {
lab=VDD}
N -370 -730 -300 -730 {
lab=VSS}
N -370 -690 -300 -690 {
lab=VIN-}
N -370 -650 -300 -650 {
lab=VIN+}
N -370 -610 -300 -610 {
lab=VOUT}
N 150 -440 550 -440 {
lab=VSS}
N 150 -410 150 -340 {
lab=#net1}
N 150 -340 550 -340 {
lab=#net1}
N 550 -410 550 -340 {
lab=#net1}
N 350 -340 350 -280 {
lab=#net1}
N 350 -220 350 -190 {
lab=VSS}
N 330 -250 330 -210 {
lab=VSS}
N 330 -210 350 -210 {
lab=VSS}
N 150 -600 150 -470 {
lab=Va}
N 100 -760 130 -760 {
lab=VSS}
N 150 -850 150 -790 {
lab=VDD}
N 150 -850 550 -850 {
lab=VDD}
N 550 -720 550 -470 {
lab=VDD}
N 150 -730 150 -600 {
lab=Va}
N 550 -850 550 -720 {
lab=VDD}
N 60 -440 110 -440 {
lab=VIN+}
N 590 -440 640 -440 {
lab=VIN-}
N 150 -690 720 -690 {
lab=Va}
N 760 -760 760 -720 {
lab=#net2}
N 760 -850 760 -820 {
lab=VDD}
N 550 -850 760 -850 {
lab=VDD}
N 710 -390 740 -390 {
lab=VSS}
N 760 -650 760 -420 {
lab=VOUT}
N 760 -660 760 -650 {
lab=VOUT}
N 350 -190 760 -190 {
lab=VSS}
N 760 -360 760 -190 {
lab=VSS}
C {devices/iopin.sym} -370 -770 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -300 -770 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -370 -730 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -300 -730 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -370 -690 0 1 {name=p12 lab=VIN-}
C {devices/lab_pin.sym} -300 -690 2 0 {name=p13 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -370 -650 0 1 {name=p17 lab=VIN+}
C {devices/lab_pin.sym} -300 -650 2 0 {name=p18 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -370 -610 0 1 {name=p19 lab=VOUT}
C {devices/lab_pin.sym} -300 -610 2 0 {name=p20 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/npn_05v5.sym} 130 -440 0 0 {name=Q2
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 130 -440 0 0 {name=Q1
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 570 -440 0 1 {name=Q3
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {devices/lab_pin.sym} 350 -440 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po.sym} 350 -250 0 0 {name=R5
W=1
L=2
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 350 -190 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po.sym} 150 -760 0 0 {name=R1
W=1
L=7
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 100 -760 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -850 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 760 -570 2 0 {name=p9 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 60 -440 2 1 {name=p10 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 640 -440 2 0 {name=p11 sig_type=std_logic lab=VIN-}
C {sky130_fd_pr/pnp_05v5.sym} 740 -690 0 0 {name=Q4
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/res_generic_l1.sym} 760 -790 0 0 {name=R21
L=3
model=res_generic_l1
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 760 -390 0 0 {name=R2
W=1
L=16
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 710 -390 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -690 3 0 {name=p15 sig_type=std_logic lab=Va}
