v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -130 150 -130 {lab=VB1}
N 0 -190 0 -130 {lab=VDD}
N 0 -190 190 -190 {lab=VDD}
N 190 -190 190 -130 {lab=VDD}
N 90 -130 90 -60 {lab=VB1}
N 40 -130 90 -130 {lab=VB1}
N 0 -60 90 -60 {lab=VB1}
N 0 -100 0 -60 {lab=VB1}
N 0 -60 0 -10 {lab=VB1}
N 90 20 150 20 {lab=VB2}
N 190 -30 190 -10 {lab=VB2}
N -50 20 0 20 {lab=VSS}
N 190 20 240 20 {lab=VSS}
N 90 -30 90 20 {lab=VB2}
N 40 20 90 20 {lab=VB2}
N 90 -30 190 -30 {lab=VB2}
N 190 -100 190 -30 {lab=VB2}
N 90 170 150 170 {lab=#net1}
N 190 120 190 140 {lab=#net1}
N -50 170 0 170 {lab=VSS}
N 190 170 240 170 {lab=VSS}
N 90 120 90 170 {lab=#net1}
N 40 170 90 170 {lab=#net1}
N 90 120 190 120 {lab=#net1}
N 190 50 190 120 {lab=#net1}
N 190 200 190 370 {lab=VSS}
N 0 200 0 250 {lab=#net2}
N 0 310 0 370 {lab=VSS}
N 0 370 190 370 {lab=VSS}
N 0 50 0 140 {lab=#net3}
N 540 -130 600 -130 {lab=VB1}
N 190 -190 640 -190 {lab=VDD}
N 640 -190 640 -130 {lab=VDD}
N 520 -30 520 0 {lab=#net4}
N 640 -100 640 -30 {lab=#net4}
N 520 -30 640 -30 {lab=#net4}
N 640 -30 760 -30 {lab=#net4}
N 760 -30 760 -0 {lab=#net4}
N 800 0 860 0 {lab=VIN+}
N 420 0 480 0 {lab=VIN-}
N 520 200 520 230 {lab=#net5}
N 190 370 520 370 {lab=VSS}
N 520 260 520 370 {lab=VSS}
N 520 200 640 200 {lab=#net5}
N 520 30 520 200 {lab=#net5}
N 640 200 640 260 {lab=#net5}
N 560 260 640 260 {lab=#net5}
N 760 200 760 230 {lab=#net6}
N 640 260 720 260 {lab=#net5}
N 760 260 760 370 {lab=VSS}
N 520 370 760 370 {lab=VSS}
N 1030 -130 1090 -130 {lab=VB1}
N 1130 -190 1130 -130 {lab=VDD}
N 640 -190 1130 -190 {lab=VDD}
N 1130 200 1130 230 {lab=VOUT}
N 880 370 1130 370 {lab=VSS}
N 1130 260 1130 370 {lab=VSS}
N 850 200 850 260 {lab=#net6}
N 760 30 760 200 {lab=#net6}
N 760 200 850 200 {lab=#net6}
N 850 260 1090 260 {lab=#net6}
N 880 200 880 370 {lab=VSS}
N 760 370 880 370 {lab=VSS}
N 880 130 880 160 {lab=VB2}
N 910 200 960 200 {lab=#net7}
N 1020 200 1130 200 {lab=VOUT}
N 1130 -100 1130 200 {lab=VOUT}
N -390 -40 -320 -40 {
lab=VDD}
N -390 0 -320 0 {
lab=VSS}
N -390 40 -320 40 {
lab=VIN-}
N -390 80 -320 80 {
lab=VIN+}
N -390 120 -320 120 {
lab=VOUT}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 -130 0 1 {name=M2
l=2u
w=1.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 90 -190 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 170 -130 0 0 {name=M1
l=2u
w=1.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 20 2 0 {name=M3
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} -50 20 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 20 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 170 20 2 1 {name=M4
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 170 2 0 {name=M5
l=2u
w=2u
ng=2
m=8
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} -50 170 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 170 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 170 170 2 1 {name=M6
l=2u
w=2u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 190 370 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {sg13g2_pr/rhigh.sym} 0 280 0 0 {name=R1
w=0.5e-6
l=5.9e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {lab_pin.sym} 90 -80 2 0 {name=p9 sig_type=std_logic lab=VB1}
C {lab_pin.sym} 190 -70 2 1 {name=p11 sig_type=std_logic lab=VB2}
C {sg13g2_pr/sg13_hv_pmos.sym} 620 -130 0 0 {name=M7
l=2u
w=1.5u
ng=2
m=8
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 540 -130 2 1 {name=p1 sig_type=std_logic lab=VB1}
C {sg13g2_pr/sg13_hv_pmos.sym} 780 0 0 1 {name=M9
l=0.6
w=8u
ng=4
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 860 0 2 0 {name=p2 sig_type=std_logic lab=VIN+}
C {lab_pin.sym} 420 0 2 1 {name=p10 sig_type=std_logic lab=VIN-}
C {sg13g2_pr/sg13_hv_pmos.sym} 500 0 0 0 {name=M8
l=0.6
w=8u
ng=4
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 540 260 2 0 {name=M10
l=2u
w=2u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 740 260 2 1 {name=M11
l=2u
w=2u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1110 -130 0 0 {name=M12
l=2u
w=1.5u
ng=2
m=16
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1030 -130 2 1 {name=p12 sig_type=std_logic lab=VB1}
C {sg13g2_pr/sg13_hv_nmos.sym} 1110 260 2 1 {name=M13
l=0.8
w=2u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 880 180 3 1 {name=M14
l=2u
w=2u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 880 130 2 1 {name=p13 sig_type=std_logic lab=VB2}
C {sg13g2_pr/cap_cmim.sym} 990 200 1 0 {name=C1
model=cap_cmim
w=8.0e-6
l=8.0e-6
m=1
spiceprefix=X}
C {lab_pin.sym} 1130 0 2 0 {name=p14 sig_type=std_logic lab=VOUT}
C {devices/iopin.sym} -390 -40 0 1 {name=p15 lab=VDD}
C {devices/lab_pin.sym} -320 -40 2 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -390 0 0 1 {name=p17 lab=VSS}
C {devices/lab_pin.sym} -320 0 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -390 40 0 1 {name=p19 lab=VIN-}
C {devices/lab_pin.sym} -320 40 2 0 {name=p20 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -390 80 0 1 {name=p21 lab=VIN+}
C {devices/lab_pin.sym} -320 80 2 0 {name=p22 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -390 120 0 1 {name=p23 lab=VOUT}
C {devices/lab_pin.sym} -320 120 2 0 {name=p24 sig_type=std_logic lab=VOUT}
