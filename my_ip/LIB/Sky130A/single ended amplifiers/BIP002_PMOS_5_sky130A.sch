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
N 100 -760 130 -760 {
lab=VSS}
N 150 -850 150 -790 {
lab=VDD}
N 150 -850 550 -850 {
lab=VDD}
N -40 -470 10 -470 {
lab=VIN+}
N 690 -470 740 -470 {
lab=VIN-}
N 1130 -770 1130 -730 {
lab=#net2}
N 550 -850 760 -850 {
lab=VDD}
N 1080 -400 1110 -400 {
lab=VSS}
N 1130 -670 1130 -660 {
lab=VOUT}
N 350 -190 760 -190 {
lab=VSS}
N 1130 -370 1130 -200 {
lab=VSS}
N 50 -440 110 -440 {
lab=#net3}
N 50 -500 150 -500 {
lab=#net4}
N 50 -470 90 -470 {
lab=VSS}
N 590 -440 650 -440 {
lab=#net5}
N 610 -470 650 -470 {
lab=VSS}
N 150 -730 150 -680 {
lab=#net6}
N 150 -620 150 -500 {
lab=#net4}
N 150 -500 150 -470 {
lab=#net4}
N 500 -760 530 -760 {
lab=VSS}
N 550 -850 550 -790 {
lab=VDD}
N 550 -730 550 -680 {
lab=#net7}
N 550 -500 550 -480 {
lab=#net8}
N 550 -480 550 -470 {
lab=#net8}
N 550 -620 550 -500 {
lab=#net8}
N 550 -500 650 -500 {
lab=#net8}
N 760 -850 1130 -850 {
lab=VDD}
N 1130 -850 1130 -830 {
lab=VDD}
N 760 -190 1130 -190 {
lab=VSS}
N 1130 -200 1130 -190 {
lab=VSS}
N 1130 -450 1130 -430 {
lab=#net9}
N 1130 -530 1130 -510 {
lab=#net10}
N 1130 -660 1130 -590 {
lab=VOUT}
N 1010 -700 1090 -700 {
lab=#net4}
N 1010 -700 1010 -590 {
lab=#net4}
N 150 -590 1010 -590 {
lab=#net4}
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
C {devices/lab_pin.sym} -40 -470 2 1 {name=p10 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 740 -470 2 0 {name=p11 sig_type=std_logic lab=VIN-}
C {sky130_fd_pr/pnp_05v5.sym} 1110 -700 0 0 {name=Q4
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/res_generic_l1.sym} 1130 -800 0 0 {name=R21
L=3
model=res_generic_l1
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} 1130 -400 0 0 {name=R2
W=1
L=10
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1080 -400 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/npn_05v5.sym} 30 -470 0 0 {name=Q5
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 30 -470 0 0 {name=Q6
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {devices/lab_pin.sym} 90 -470 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/npn_05v5.sym} 670 -470 0 1 {name=Q7
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {devices/lab_pin.sym} 610 -470 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/diode.sym} 150 -650 2 0 {name=D1
model=diode_pw2nd_05v5

}
C {sky130_fd_pr/res_high_po.sym} 550 -760 0 0 {name=R3
W=1
L=7
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 500 -760 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/diode.sym} 550 -650 2 0 {name=D2
model=diode_pw2nd_05v5

}
C {devices/lab_pin.sym} 1130 -610 2 0 {name=p22 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/diode.sym} 1130 -480 2 0 {name=D3
model=diode_pw2nd_05v5

}
C {sky130_fd_pr/diode.sym} 1130 -560 2 0 {name=D4
model=diode_pw2nd_05v5

}
