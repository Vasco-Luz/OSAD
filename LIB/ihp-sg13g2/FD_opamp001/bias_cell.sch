v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -480 200 -480 {lab=VDD}
N 130 -440 200 -440 {lab=VSS}
N 130 -400 200 -400 {lab=VB}
N 670 -410 750 -410 {lab=VDD}
N 580 -410 630 -410 {lab=#net1}
N 580 -410 580 -370 {lab=#net1}
N 530 -410 580 -410 {lab=#net1}
N 490 -370 580 -370 {lab=#net1}
N 490 -380 490 -370 {lab=#net1}
N 490 -630 670 -630 {lab=VDD}
N 490 -630 490 -410 {lab=VDD}
N 340 -630 490 -630 {lab=VDD}
N 670 -630 670 -440 {lab=VDD}
N 670 -380 670 -150 {lab=#net2}
N 670 -150 670 -130 {lab=#net2}
N 750 -440 750 -410 {lab=VDD}
N 670 -440 750 -440 {lab=VDD}
N 670 -100 670 -40 {lab=VSS}
N 630 -150 630 -100 {lab=#net2}
N 630 -150 670 -150 {lab=#net2}
N 490 -180 490 -160 {lab=#net1}
N 450 -180 450 -130 {lab=#net1}
N 450 -180 490 -180 {lab=#net1}
N 490 -130 490 -40 {lab=VSS}
N 490 -370 490 -180 {lab=#net1}
N 490 -40 670 -40 {lab=VSS}
C {iopin.sym} 130 -480 0 1 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 200 -480 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {iopin.sym} 130 -440 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} 200 -440 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {iopin.sym} 130 -400 0 1 {name=p12 lab=VB}
C {devices/lab_pin.sym} 200 -400 0 1 {name=p13 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 340 -630 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 650 -410 0 0 {name=M1
l=3u
w=1.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 510 -410 0 1 {name=M2
l=3u
w=1.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 490 -40 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 650 -100 2 1 {name=M3
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 470 -130 2 1 {name=M4
l=3.8u
w=1u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 670 -190 0 1 {name=p3 sig_type=std_logic lab=VB}
