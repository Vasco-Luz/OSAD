v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -810 -610 -810 -570 {lab=VDD}
N -810 -570 -810 -540 {lab=VDD}
N -770 -540 -630 -540 {lab=#net1}
N -590 -610 -590 -570 {lab=VDD}
N -590 -570 -590 -540 {lab=VDD}
N -700 -540 -700 -500 {lab=#net1}
N -810 -500 -700 -500 {lab=#net1}
N -770 -170 -690 -170 {lab=#net2}
N -670 -230 -670 -170 {lab=#net2}
N -670 -230 -590 -230 {lab=#net2}
N -590 -230 -590 -200 {lab=#net2}
N -830 -70 -830 -30 {lab=VSS}
N -830 -30 -650 -30 {lab=VSS}
N -810 -40 -810 -30 {lab=VSS}
N -590 -170 -590 -140 {lab=VSS}
N -690 -170 -630 -170 {lab=#net2}
N -590 -140 -590 -30 {lab=VSS}
N -650 -30 -590 -30 {lab=VSS}
N -830 -170 -810 -170 {lab=VSS}
N -830 -170 -830 -70 {lab=VSS}
N -810 -140 -810 -100 {lab=#net3}
N -810 -610 -710 -610 {lab=VDD}
N -710 -610 -590 -610 {lab=VDD}
N -810 -510 -810 -500 {lab=#net1}
N -810 -310 -810 -200 {lab=#net4}
N -590 -310 -590 -230 {lab=#net2}
N -870 -340 -810 -340 {lab=VSS}
N -590 -340 -530 -340 {lab=VSS}
N -770 -340 -630 -340 {lab=#net5}
N -700 -400 -700 -340 {lab=#net5}
N -700 -400 -590 -400 {lab=#net5}
N -810 -400 -810 -370 {lab=#net1}
N -810 -500 -810 -460 {lab=#net1}
N -590 -410 -590 -400 {lab=#net5}
N -590 -400 -590 -370 {lab=#net5}
N -590 -510 -590 -480 {lab=#net5}
N -590 -420 -590 -410 {lab=#net5}
N -1300 -570 -1240 -570 {lab=VDD}
N -1300 -530 -1240 -530 {lab=VSS}
N -1300 -490 -1240 -490 {lab=VIN+}
N -1300 -450 -1240 -450 {lab=VIN-}
N -1300 -410 -1240 -410 {lab=VOUT}
N -810 -460 -810 -400 {lab=#net1}
N -590 -480 -590 -420 {lab=#net5}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -790 -540 0 1 {name=M5
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} -610 -540 0 0 {name=M6
L=3
W=1.5
nf=2 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -730 -30 3 0 {name=p2 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -790 -170 0 1 {name=M7
L=4
W=0.6
nf=2 mult=8
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -610 -170 0 0 {name=M8
L=4
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -710 -610 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -790 -340 0 1 {name=M9
L=2
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} -610 -340 0 0 {name=M10
L=2
W=0.6
nf=2 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} -870 -340 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -530 -340 0 1 {name=p5 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/res_high_po_0p35.sym} -810 -70 0 0 {name=R2
L=30
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {iopin.sym} -1300 -570 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -1240 -570 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {iopin.sym} -1300 -530 0 1 {name=p7 lab=VSS}
C {devices/lab_pin.sym} -1240 -530 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {iopin.sym} -1300 -490 0 1 {name=p9 lab=VIN+}
C {devices/lab_pin.sym} -1240 -490 2 0 {name=p10 sig_type=std_logic lab=VIN+}
C {iopin.sym} -1300 -450 0 1 {name=p11 lab=VIN-}
C {devices/lab_pin.sym} -1240 -450 2 0 {name=p12 sig_type=std_logic lab=VIN-}
C {iopin.sym} -1300 -410 0 1 {name=p13 lab=VOUT}
C {devices/lab_pin.sym} -1240 -410 2 0 {name=p14 sig_type=std_logic lab=VOUT}
