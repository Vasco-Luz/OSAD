v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Pattern} 90 -60 0 0 0.4 0.4 {}
T {D M2 M3 M3 M2 D
D M3 M2 M2 M3 D} 110 20 0 0 0.4 0.4 {}
N 130 -290 130 -260 {lab=Ibias}
N 130 -300 130 -290 {lab=Ibias}
N 130 -300 280 -300 {lab=Ibias}
N 280 -330 280 -300 {lab=Ibias}
N 280 -300 430 -300 {lab=Ibias}
N 430 -300 430 -270 {lab=Ibias}
N 50 -260 90 -260 {lab=Vin-}
N 470 -270 510 -270 {lab=Vin+}
N -290 -270 -230 -270 {lab=Vin+}
N -290 -230 -230 -230 {lab=Vin-}
N 130 -230 130 -170 {lab=Ia}
N 430 -240 430 -180 {lab=Ib}
N -290 -190 -230 -190 {lab=Ibias}
N -290 -150 -230 -150 {lab=Ia}
N -290 -110 -230 -110 {lab=Ib}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 110 -260 0 0 {name=M2
L=1
W=4.5
nf=2 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 450 -270 0 1 {name=M3
L=1
W=4.5
nf=2 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 50 -260 2 1 {name=p8 sig_type=std_logic lab=Vin-}
C {devices/lab_pin.sym} 510 -270 2 0 {name=p9 sig_type=std_logic lab=Vin+}
C {iopin.sym} -290 -270 0 1 {name=p17 lab=Vin+}
C {devices/lab_pin.sym} -230 -270 2 0 {name=p18 sig_type=std_logic lab=Vin+}
C {iopin.sym} -290 -230 0 1 {name=p19 lab=Vin-}
C {devices/lab_pin.sym} -230 -230 2 0 {name=p20 sig_type=std_logic lab=Vin-}
C {devices/lab_pin.sym} 280 -330 2 0 {name=p1 sig_type=std_logic lab=Ibias}
C {devices/lab_pin.sym} 130 -170 2 0 {name=p2 sig_type=std_logic lab=Ia}
C {devices/lab_pin.sym} 430 -180 2 0 {name=p3 sig_type=std_logic lab=Ib}
C {iopin.sym} -290 -190 0 1 {name=p4 lab=Ibias}
C {devices/lab_pin.sym} -230 -190 2 0 {name=p5 sig_type=std_logic lab=Ibias}
C {iopin.sym} -290 -150 0 1 {name=p6 lab=Ia}
C {devices/lab_pin.sym} -230 -150 2 0 {name=p7 sig_type=std_logic lab=Ia}
C {iopin.sym} -290 -110 0 1 {name=p10 lab=Ib}
C {devices/lab_pin.sym} -230 -110 2 0 {name=p11 sig_type=std_logic lab=Ib}
