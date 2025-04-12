v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -500 230 -500 {lab=VB1}
N 80 -560 80 -500 {lab=VDD}
N 80 -560 270 -560 {lab=VDD}
N 270 -560 270 -500 {lab=VDD}
N 170 -500 170 -430 {lab=VB1}
N 120 -500 170 -500 {lab=VB1}
N 80 -430 170 -430 {lab=VB1}
N 80 -470 80 -430 {lab=VB1}
N 80 -430 80 -380 {lab=VB1}
N 170 -350 230 -350 {lab=VB2}
N 270 -400 270 -380 {lab=VB2}
N 30 -350 80 -350 {lab=VSS}
N 270 -350 320 -350 {lab=VSS}
N 170 -400 170 -350 {lab=VB2}
N 120 -350 170 -350 {lab=VB2}
N 170 -400 270 -400 {lab=VB2}
N 270 -470 270 -400 {lab=VB2}
N 170 -200 230 -200 {lab=#net1}
N 270 -250 270 -230 {lab=#net1}
N 30 -200 80 -200 {lab=VSS}
N 270 -200 320 -200 {lab=VSS}
N 170 -250 170 -200 {lab=#net1}
N 120 -200 170 -200 {lab=#net1}
N 170 -250 270 -250 {lab=#net1}
N 270 -320 270 -250 {lab=#net1}
N 270 -170 270 0 {lab=VSS}
N 80 -170 80 -120 {lab=#net2}
N 80 -60 80 0 {lab=VSS}
N 80 0 270 0 {lab=VSS}
N 80 -320 80 -230 {lab=#net3}
N -320 -450 -250 -450 {
lab=VDD}
N -320 -410 -250 -410 {
lab=VSS}
N -320 -370 -250 -370 {
lab=VIN-}
N -320 -330 -250 -330 {
lab=VIN+}
N -320 -290 -250 -290 {
lab=VOUT}
C {sg13g2_pr/sg13_hv_pmos.sym} 100 -500 0 1 {name=M2
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 170 -560 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 250 -500 0 0 {name=M1
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 100 -350 2 0 {name=M3
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 30 -350 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -350 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 250 -350 2 1 {name=M4
l=2u
w=1.0u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 100 -200 2 0 {name=M5
l=2u
w=2u
ng=2
m=8
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 30 -200 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -200 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 250 -200 2 1 {name=M6
l=2u
w=2u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 270 0 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {sg13g2_pr/rhigh.sym} 80 -90 0 0 {name=R1
w=0.5e-6
l=5.9e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {lab_pin.sym} 170 -450 2 0 {name=p9 sig_type=std_logic lab=VB1}
C {lab_pin.sym} 270 -440 2 1 {name=p11 sig_type=std_logic lab=VB2}
C {devices/iopin.sym} -320 -450 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -250 -450 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -320 -410 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} -250 -410 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -320 -370 0 1 {name=p13 lab=VIN-}
C {devices/lab_pin.sym} -250 -370 2 0 {name=p14 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -320 -330 0 1 {name=p17 lab=VIN+}
C {devices/lab_pin.sym} -250 -330 2 0 {name=p18 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -320 -290 0 1 {name=p19 lab=VOUT}
C {devices/lab_pin.sym} -250 -290 2 0 {name=p20 sig_type=std_logic lab=VOUT}
