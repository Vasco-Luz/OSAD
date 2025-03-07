v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -180 440 -110 {lab=VSS}
N 630 -180 630 -110 {lab=VSS}
N 530 -180 590 -180 {lab=VB}
N 440 -110 630 -110 {lab=VSS}
N 630 -610 630 -570 {lab=#net1}
N 530 -540 590 -540 {lab=#net2}
N 530 -540 530 -500 {lab=#net2}
N 480 -540 530 -540 {lab=#net2}
N 440 -500 530 -500 {lab=#net2}
N 440 -510 440 -500 {lab=#net2}
N 440 -500 440 -450 {lab=#net2}
N 630 -510 630 -450 {lab=#net3}
N 360 -420 440 -420 {lab=VDD}
N 530 -420 590 -420 {lab=#net4}
N 440 -360 440 -210 {lab=#net4}
N 530 -420 530 -360 {lab=#net4}
N 480 -420 530 -420 {lab=#net4}
N 440 -360 530 -360 {lab=#net4}
N 440 -390 440 -360 {lab=#net4}
N 630 -250 630 -210 {lab=VB}
N 630 -390 630 -370 {lab=#net5}
N 530 -250 630 -250 {lab=VB}
N 630 -310 630 -250 {lab=VB}
N 530 -250 530 -180 {lab=VB}
N 480 -180 530 -180 {lab=VB}
N 440 -700 440 -570 {lab=VDD}
N 440 -700 630 -700 {lab=VDD}
N 630 -700 630 -670 {lab=VDD}
N 360 -540 440 -540 {lab=VDD}
N 630 -540 710 -540 {lab=VDD}
N 630 -420 710 -420 {lab=VDD}
N 130 -480 200 -480 {lab=VDD}
N 130 -440 200 -440 {lab=VSS}
N 130 -400 200 -400 {lab=VB}
C {sg13g2_pr/sg13_hv_nmos.sym} 460 -180 2 0 {name=M5
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 610 -180 2 1 {name=M6
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 630 -640 0 0 {name=R3
w=0.5e-6
l=1.95e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_hv_pmos.sym} 610 -540 0 0 {name=M7
l=3u
w=2.0u
ng=2
m=8
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 460 -540 0 1 {name=M8
l=3u
w=2.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 460 -420 0 1 {name=M9
l=3u
w=2.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 610 -420 0 0 {name=M10
l=3u
w=2.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {ammeter.sym} 630 -340 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 530 -700 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 530 -110 3 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 630 -270 2 0 {name=p3 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 360 -420 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -540 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 710 -540 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 710 -420 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {iopin.sym} 130 -480 0 1 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 200 -480 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {iopin.sym} 130 -440 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} 200 -440 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {iopin.sym} 130 -400 0 1 {name=p12 lab=VB}
C {devices/lab_pin.sym} 200 -400 0 1 {name=p13 sig_type=std_logic lab=VB}
