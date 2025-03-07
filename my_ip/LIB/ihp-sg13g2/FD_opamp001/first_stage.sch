v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1180 -250 1230 -250 {lab=VB}
N 1270 -250 1270 -130 {lab=VSS}
N 1270 -520 1270 -470 {lab=#net1}
N 1270 -440 1350 -440 {lab=VSS}
N 1270 -550 1350 -550 {lab=VSS}
N 1230 -500 1230 -440 {lab=VCM}
N 1170 -500 1230 -500 {lab=VCM}
N 1230 -550 1230 -500 {lab=VCM}
N 1270 -740 1270 -580 {lab=VB2}
N 1230 -830 1230 -740 {lab=VB2}
N 1230 -740 1270 -740 {lab=VB2}
N 1270 -800 1270 -740 {lab=VB2}
N 1270 -830 1370 -830 {lab=VDD}
N 1270 -920 1270 -860 {lab=VDD}
N 1270 -410 1270 -280 {lab=#net2}
N 870 -830 970 -830 {lab=VDD}
N 870 -920 1270 -920 {lab=VDD}
N 870 -920 870 -860 {lab=VDD}
N 400 -830 500 -830 {lab=VDD}
N 500 -920 500 -860 {lab=VDD}
N 500 -920 870 -920 {lab=VDD}
N 540 -830 830 -830 {lab=VB2}
N 500 -570 500 -520 {lab=V_COMP+}
N 460 -600 460 -490 {lab=VIN+}
N 500 -800 500 -630 {lab=VOUT-}
N 870 -800 870 -630 {lab=VOUT+}
N 910 -600 910 -490 {lab=VIN-}
N 870 -570 870 -520 {lab=V_COMP-}
N 500 -600 870 -600 {lab=VSS}
N 500 -490 870 -490 {lab=VSS}
N 870 -340 870 -280 {lab=#net3}
N 870 -250 870 -130 {lab=VSS}
N 870 -130 1270 -130 {lab=VSS}
N 500 -340 500 -280 {lab=#net3}
N 540 -250 830 -250 {lab=VB}
N 500 -250 500 -130 {lab=VSS}
N 500 -130 870 -130 {lab=VSS}
N 500 -340 870 -340 {lab=#net3}
N 500 -460 500 -340 {lab=#net3}
N 870 -460 870 -340 {lab=#net3}
N 110 -800 180 -800 {lab=VDD}
N 110 -760 180 -760 {lab=VSS}
N 110 -720 180 -720 {lab=VB}
N 110 -680 180 -680 {lab=VIN+}
N 110 -640 180 -640 {lab=VIN-}
N 110 -600 180 -600 {lab=VOUT-}
N 110 -560 180 -560 {lab=VOUT+}
N 110 -520 180 -520 {lab=VB2}
N 110 -480 180 -480 {lab=VCM}
N 110 -440 180 -440 {lab=V_COMP+}
N 110 -400 180 -400 {lab=V_COMP-}
C {sg13g2_pr/sg13_hv_nmos.sym} 1250 -250 2 1 {name=M6
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1180 -250 0 0 {name=p4 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 1060 -130 3 0 {name=p5 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1250 -440 2 1 {name=M1
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1250 -550 2 1 {name=M2
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1350 -440 0 1 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1350 -550 0 1 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1170 -500 0 0 {name=p11 sig_type=std_logic lab=VCM}
C {sg13g2_pr/sg13_hv_pmos.sym} 1250 -830 0 0 {name=M3
l=3u
w=2.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1150 -920 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1370 -830 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1230 -780 0 0 {name=p14 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 970 -830 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 670 -830 3 0 {name=p15 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 400 -830 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_nmos.sym} 480 -490 2 1 {name=M7
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 480 -600 2 1 {name=M8
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 670 -600 3 1 {name=p19 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 890 -490 2 0 {name=M9
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 890 -600 2 0 {name=M10
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 670 -490 3 1 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 460 -540 0 0 {name=p20 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 500 -540 0 1 {name=p21 sig_type=std_logic lab=V_COMP+}
C {devices/lab_pin.sym} 870 -540 0 0 {name=p22 sig_type=std_logic lab=V_COMP-}
C {devices/lab_pin.sym} 910 -540 0 1 {name=p23 sig_type=std_logic lab=VIN-}
C {sg13g2_pr/sg13_hv_nmos.sym} 850 -250 2 1 {name=M11
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 520 -250 2 0 {name=M12
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 680 -250 3 0 {name=p24 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 500 -720 0 0 {name=p25 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} 870 -720 0 0 {name=p26 sig_type=std_logic lab=VOUT+}
C {sg13g2_pr/sg13_hv_pmos.sym} 850 -830 0 0 {name=M4
l=3u
w=2.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 520 -830 0 1 {name=M5
l=3u
w=2.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} 110 -800 0 1 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 180 -800 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {iopin.sym} 110 -760 0 1 {name=p10 lab=VSS}
C {devices/lab_pin.sym} 180 -760 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {iopin.sym} 110 -720 0 1 {name=p3 lab=VB}
C {devices/lab_pin.sym} 180 -720 0 1 {name=p6 sig_type=std_logic lab=VB}
C {iopin.sym} 110 -680 0 1 {name=p27 lab=VIN+}
C {devices/lab_pin.sym} 180 -680 0 1 {name=p28 sig_type=std_logic lab=VIN+}
C {iopin.sym} 110 -640 0 1 {name=p29 lab=VIN-}
C {devices/lab_pin.sym} 180 -640 0 1 {name=p30 sig_type=std_logic lab=VIN-}
C {iopin.sym} 110 -600 0 1 {name=p31 lab=VOUT-}
C {devices/lab_pin.sym} 180 -600 0 1 {name=p32 sig_type=std_logic lab=VOUT-}
C {iopin.sym} 110 -560 0 1 {name=p33 lab=VOUT+}
C {devices/lab_pin.sym} 180 -560 0 1 {name=p34 sig_type=std_logic lab=VOUT+}
C {iopin.sym} 110 -520 0 1 {name=p35 lab=VB2}
C {devices/lab_pin.sym} 180 -520 0 1 {name=p36 sig_type=std_logic lab=VB2}
C {iopin.sym} 110 -480 0 1 {name=p37 lab=VCM}
C {devices/lab_pin.sym} 180 -480 0 1 {name=p38 sig_type=std_logic lab=VCM}
C {iopin.sym} 110 -440 0 1 {name=p39 lab=V_COMP+}
C {devices/lab_pin.sym} 180 -440 0 1 {name=p40 sig_type=std_logic lab=V_COMP+}
C {iopin.sym} 110 -400 0 1 {name=p41 lab=V_COMP-}
C {devices/lab_pin.sym} 180 -400 0 1 {name=p42 sig_type=std_logic lab=V_COMP-}
