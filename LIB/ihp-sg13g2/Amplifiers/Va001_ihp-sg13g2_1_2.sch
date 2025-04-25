v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 0 30 60 {lab=VDD}
N 30 0 220 0 {lab=VDD}
N 220 0 220 60 {lab=VDD}
N 220 390 220 560 {lab=VSS}
N 30 390 30 440 {lab=#net1}
N 30 500 30 560 {lab=VSS}
N 30 560 220 560 {lab=VSS}
N 120 90 180 90 {lab=VB1}
N 0 90 30 90 {lab=VDD}
N 0 0 0 90 {lab=VDD}
N 0 0 30 0 {lab=VDD}
N 220 90 250 90 {lab=VDD}
N 250 0 250 90 {lab=VDD}
N 220 0 250 0 {lab=VDD}
N 120 360 180 360 {lab=VB2}
N 220 280 220 330 {lab=VB2}
N 120 280 120 360 {lab=VB2}
N 70 360 120 360 {lab=VB2}
N 120 280 220 280 {lab=VB2}
N 220 120 220 280 {lab=VB2}
N 120 90 120 170 {lab=VB1}
N 70 90 120 90 {lab=VB1}
N 30 170 120 170 {lab=VB1}
N 30 120 30 170 {lab=VB1}
N -50 360 30 360 {lab=VSS}
N -50 360 -50 560 {lab=VSS}
N -50 560 30 560 {lab=VSS}
N 220 360 310 360 {lab=VSS}
N 310 360 310 560 {lab=VSS}
N 220 560 310 560 {lab=VSS}
N 30 170 30 330 {lab=VB1}
N -430 70 -360 70 {
lab=VDD}
N -430 110 -360 110 {
lab=VSS}
N -430 150 -360 150 {
lab=VIN-}
N -430 190 -360 190 {
lab=VIN+}
N -430 230 -360 230 {
lab=VOUT}
N 640 90 670 90 {lab=VDD}
N 250 -0 640 0 {lab=VDD}
N 640 -0 640 60 {lab=VDD}
N 670 0 670 90 {lab=VDD}
N 550 90 600 90 {lab=VB1}
N 480 180 480 210 {lab=#net2}
N 480 180 640 180 {lab=#net2}
N 640 120 640 180 {lab=#net2}
N 640 180 800 180 {lab=#net2}
N 800 180 800 210 {lab=#net2}
N 370 210 440 210 {
lab=VIN-}
N 840 210 910 210 {
lab=VIN+}
N 480 360 480 400 {lab=#net3}
N 310 560 480 560 {lab=VSS}
N 480 430 480 560 {lab=VSS}
N 640 430 760 430 {lab=#net3}
N 480 560 800 560 {lab=VSS}
N 800 430 800 560 {lab=VSS}
N 640 360 640 430 {lab=#net3}
N 520 430 640 430 {lab=#net3}
N 480 360 640 360 {lab=#net3}
N 480 240 480 360 {lab=#net3}
N 800 360 800 400 {lab=#net4}
N 910 360 960 360 {lab=#net4}
N 800 240 800 360 {lab=#net4}
N 990 360 990 560 {lab=VSS}
N 800 560 990 560 {lab=VSS}
N 1020 360 1050 360 {lab=#net5}
N 1200 90 1230 90 {lab=VDD}
N 1200 0 1200 60 {lab=VDD}
N 1230 0 1230 90 {lab=VDD}
N 1200 0 1230 0 {lab=VDD}
N 1110 90 1160 90 {lab=VB1}
N 990 -0 1200 -0 {lab=VDD}
N 640 -0 670 0 {lab=VDD}
N 910 470 1160 470 {lab=#net4}
N 910 360 910 470 {lab=#net4}
N 800 360 910 360 {lab=#net4}
N 1200 470 1200 560 {lab=VSS}
N 990 560 1200 560 {lab=VSS}
N 1200 360 1200 440 {lab=VOUT}
N 1110 360 1200 360 {lab=VOUT}
N 1200 120 1200 360 {lab=VOUT}
N 990 -0 990 320 {lab=VDD}
N 670 0 990 -0 {lab=VDD}
C {lab_pin.sym} 120 0 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 560 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {sg13g2_pr/rhigh.sym} 30 470 0 0 {name=R1
w=0.5e-6
l=9e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_lv_pmos.sym} 50 90 0 1 {name=M2
l=1u
w=1.4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 200 90 0 0 {name=M1
l=1u
w=1.4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 50 360 0 1 {name=M4
l=2u
w=0.6u
ng=2
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 360 0 0 {name=M3
l=2u
w=0.6u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 120 140 2 0 {name=p4 sig_type=std_logic lab=VB1}
C {lab_pin.sym} 220 150 2 0 {name=p5 sig_type=std_logic lab=VB2}
C {devices/iopin.sym} -430 70 0 1 {name=p15 lab=VDD}
C {devices/lab_pin.sym} -360 70 2 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -430 110 0 1 {name=p17 lab=VSS}
C {devices/lab_pin.sym} -360 110 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -430 150 0 1 {name=p19 lab=VIN-}
C {devices/lab_pin.sym} -360 150 2 0 {name=p20 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -430 190 0 1 {name=p21 lab=VIN+}
C {devices/lab_pin.sym} -360 190 2 0 {name=p22 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -430 230 0 1 {name=p23 lab=VOUT}
C {devices/lab_pin.sym} -360 230 2 0 {name=p24 sig_type=std_logic lab=VOUT}
C {sg13g2_pr/sg13_lv_pmos.sym} 620 90 0 0 {name=M5
l=1u
w=1.4u
ng=2
m=8
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 550 90 2 1 {name=p1 sig_type=std_logic lab=VB1}
C {sg13g2_pr/sg13_lv_pmos.sym} 460 210 0 0 {name=M6
l=1u
w=6u
ng=2
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 820 210 0 1 {name=M7
l=1u
w=6u
ng=2
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 370 210 2 1 {name=p2 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 910 210 2 0 {name=p6 sig_type=std_logic lab=VIN+}
C {sg13g2_pr/sg13_lv_nmos.sym} 500 430 0 1 {name=M8
l=2u
w=1u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 780 430 0 0 {name=M9
l=2u
w=1u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 990 340 1 0 {name=M10
l=4.2u
w=0.4u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 1080 360 1 0 {name=C1
model=cap_cmim
w=9e-6
l=9e-6
m=4
spiceprefix=X}
C {sg13g2_pr/sg13_lv_pmos.sym} 1180 90 0 0 {name=M11
l=1u
w=1.4u
ng=2
m=16
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1110 90 2 1 {name=p9 sig_type=std_logic lab=VB1}
C {sg13g2_pr/sg13_lv_nmos.sym} 1180 470 0 0 {name=M12
l=0.5u
w=2.5u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1200 230 2 0 {name=p10 sig_type=std_logic lab=VOUT}
