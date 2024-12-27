v {xschem version=3.4.6 file_version=1.2}
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
C {sky130_fd_pr/npn_05v5.sym} 400 -440 0 0 {name=Q3
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
