v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 340 220 410 {lab=VSS}
N 410 340 410 410 {lab=VSS}
N 310 340 370 340 {lab=VB}
N 220 410 410 410 {lab=VSS}
N 410 -90 410 -50 {lab=#net1}
N 310 -20 370 -20 {lab=#net2}
N 310 -20 310 20 {lab=#net2}
N 260 -20 310 -20 {lab=#net2}
N 220 20 310 20 {lab=#net2}
N 220 10 220 20 {lab=#net2}
N 220 20 220 70 {lab=#net2}
N 410 10 410 70 {lab=#net3}
N 140 100 220 100 {lab=VDD}
N 310 100 370 100 {lab=#net4}
N 220 160 220 310 {lab=#net4}
N 310 100 310 160 {lab=#net4}
N 260 100 310 100 {lab=#net4}
N 220 160 310 160 {lab=#net4}
N 220 130 220 160 {lab=#net4}
N 410 270 410 310 {lab=VB}
N 410 130 410 150 {lab=#net5}
N 310 270 410 270 {lab=VB}
N 410 210 410 270 {lab=VB}
N 310 270 310 340 {lab=VB}
N 260 340 310 340 {lab=VB}
N 220 -180 220 -50 {lab=VDD}
N 220 -180 410 -180 {lab=VDD}
N 410 -180 410 -150 {lab=VDD}
N 140 -20 220 -20 {lab=VDD}
N 410 -20 490 -20 {lab=VDD}
N 410 100 490 100 {lab=VDD}
N -90 40 -20 40 {lab=xxx}
N -90 80 -20 80 {lab=xxx}
N -90 120 -20 120 {lab=xxx}
C {sg13g2_pr/sg13_hv_nmos.sym} 240 340 2 0 {name=M5
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 390 340 2 1 {name=M6
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 410 -120 0 0 {name=R3
w=0.5e-6
l=1.95e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_hv_pmos.sym} 390 -20 0 0 {name=M7
l=3u
w=2.0u
ng=2
m=8
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 240 -20 0 1 {name=M8
l=3u
w=2.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 240 100 0 1 {name=M9
l=3u
w=2.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 390 100 0 0 {name=M10
l=3u
w=2.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {ammeter.sym} 410 180 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 310 -180 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 310 410 3 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 410 250 2 0 {name=p3 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 140 100 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 -20 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 -20 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 100 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {iopin.sym} -90 40 0 1 {name=p8 lab=VDD}
C {devices/lab_pin.sym} -20 40 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {iopin.sym} -90 80 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} -20 80 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {iopin.sym} -90 120 0 1 {name=p12 lab=VB}
C {devices/lab_pin.sym} -20 120 0 1 {name=p13 sig_type=std_logic lab=VB}
