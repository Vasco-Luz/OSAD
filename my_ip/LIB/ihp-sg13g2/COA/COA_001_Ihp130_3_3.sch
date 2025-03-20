v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1250 -10 -1250 50 {lab=Iin}
N -1250 80 -1250 170 {lab=VSS}
N -1350 -110 -1290 -110 {lab=Iin}
N -1350 -10 -1350 80 {lab=Iin}
N -1350 80 -1290 80 {lab=Iin}
N -1350 -110 -1350 -10 {lab=Iin}
N -1350 -10 -1250 -10 {lab=Iin}
N -1250 -30 -1250 -10 {lab=Iin}
N -1250 -270 -1250 -110 {lab=VDD}
N -1050 -10 -1050 60 {lab=Iout+}
N -1090 -30 -1090 90 {lab=Iin}
N -1050 90 -1050 180 {lab=VSS}
N -1050 -270 -1050 -110 {lab=VDD}
N -1250 -270 -1050 -270 {lab=VDD}
N -1250 -30 -1090 -30 {lab=Iin}
N -1250 -80 -1250 -30 {lab=Iin}
N -1090 -110 -1090 -30 {lab=Iin}
N -870 100 -870 190 {lab=VSS}
N -1050 -10 -910 -10 {lab=Iout+}
N -1050 -80 -1050 -10 {lab=Iout+}
N -870 -270 -870 -100 {lab=VDD}
N -910 -270 -870 -270 {lab=VDD}
N -910 -270 -910 -230 {lab=VDD}
N -1050 -270 -910 -270 {lab=VDD}
N -910 190 -870 190 {lab=VSS}
N -870 -70 -870 70 {lab=#net1}
N -910 -10 -910 130 {lab=Iout+}
N -910 -60 -910 -10 {lab=Iout+}
N -540 0 -540 70 {lab=#net2}
N -540 -270 -540 -100 {lab=VDD}
N -870 -270 -540 -270 {lab=VDD}
N -870 190 -540 190 {lab=VSS}
N -540 100 -540 190 {lab=VSS}
N -910 -60 -580 -60 {lab=Iout+}
N -910 -170 -910 -60 {lab=Iout+}
N -580 -100 -580 -60 {lab=Iout+}
N -580 -60 -580 100 {lab=Iout+}
N -370 20 -370 80 {lab=#net2}
N -410 0 -410 110 {lab=#net2}
N -370 -270 -370 -90 {lab=VDD}
N -540 -270 -370 -270 {lab=VDD}
N -540 0 -410 0 {lab=#net2}
N -540 -70 -540 0 {lab=#net2}
N -410 -90 -410 0 {lab=#net2}
N -410 0 -370 0 {lab=#net2}
N -370 -60 -370 0 {lab=#net2}
N -370 110 -370 190 {lab=VSS}
N -540 190 -370 190 {lab=VSS}
N -240 20 -240 120 {lab=#net2}
N -370 20 -240 20 {lab=#net2}
N -370 0 -370 20 {lab=#net2}
N -240 -80 -240 20 {lab=#net2}
N -200 -270 -200 -80 {lab=VDD}
N -370 -270 -200 -270 {lab=VDD}
N -200 120 -200 190 {lab=VSS}
N -370 190 -200 190 {lab=VSS}
N -200 -50 -200 90 {lab=#net3}
N -1640 -220 -1570 -220 {
lab=VDD}
N -1640 -180 -1570 -180 {
lab=VSS}
N -1640 -140 -1570 -140 {
lab=Iin}
N -1640 -100 -1570 -100 {
lab=Iout+}
N -1640 -60 -1570 -60 {
lab=Iout-}
C {sg13g2_pr/sg13_hv_pmos.sym} -1270 -110 0 0 {name=M1
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -1270 80 2 1 {name=M2
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} -1250 170 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1350 -60 0 0 {name=p5 sig_type=std_logic lab=Iin}
C {devices/lab_pin.sym} -1050 180 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} -1070 90 2 1 {name=M3
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -1070 -110 0 0 {name=M4
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} -870 190 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} -890 100 2 1 {name=M5
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -890 -100 0 0 {name=M6
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} -910 -200 0 0 {name=C1
model=cap_cmim
w=10.0e-6
l=10.0e-6
m=8
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -910 160 0 0 {name=C2
model=cap_cmim
w=10.0e-6
l=10.0e-6
m=8
spiceprefix=X}
C {sg13g2_pr/sg13_hv_nmos.sym} -560 100 2 1 {name=M7
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -560 -100 0 0 {name=M8
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -390 110 2 1 {name=M9
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -390 -90 0 0 {name=M10
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -220 120 2 1 {name=M11
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -220 -80 0 0 {name=M12
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} -1250 -270 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -1640 -220 0 1 {name=p2 lab=VDD}
C {devices/lab_pin.sym} -1570 -220 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -1640 -180 0 1 {name=p7 lab=VSS}
C {devices/lab_pin.sym} -1570 -180 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -1640 -140 0 1 {name=p12 lab=Iin}
C {devices/lab_pin.sym} -1570 -140 2 0 {name=p13 sig_type=std_logic lab=Iin}
C {devices/iopin.sym} -1640 -100 0 1 {name=p17 lab=Iout+}
C {devices/lab_pin.sym} -1570 -100 2 0 {name=p18 sig_type=std_logic lab=Iout+}
C {devices/iopin.sym} -1640 -60 0 1 {name=p19 lab=Iout-}
C {devices/lab_pin.sym} -1570 -60 2 0 {name=p20 sig_type=std_logic lab=Iout-}
C {devices/lab_pin.sym} -750 -60 3 0 {name=p10 sig_type=std_logic lab=Iout+}
C {devices/lab_pin.sym} -200 -20 2 0 {name=p11 sig_type=std_logic lab=Iout-}
