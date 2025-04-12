v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
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
N 1310 -360 1360 -360 {lab=VB}
N 1400 -360 1400 -240 {lab=VSS}
N 1400 -630 1400 -580 {lab=#net1}
N 1400 -550 1480 -550 {lab=VSS}
N 1400 -660 1480 -660 {lab=VSS}
N 1360 -610 1360 -550 {lab=VCM}
N 1300 -610 1360 -610 {lab=VCM}
N 1360 -660 1360 -610 {lab=VCM}
N 1400 -850 1400 -690 {lab=VB2}
N 1360 -940 1360 -850 {lab=VB2}
N 1360 -850 1400 -850 {lab=VB2}
N 1400 -910 1400 -850 {lab=VB2}
N 1400 -940 1500 -940 {lab=VDD}
N 1400 -1030 1400 -970 {lab=VDD}
N 1400 -420 1400 -390 {lab=#net2}
N 1400 -520 1400 -480 {lab=#net3}
N 1000 -940 1100 -940 {lab=VDD}
N 1000 -1030 1400 -1030 {lab=VDD}
N 1000 -1030 1000 -970 {lab=VDD}
N 530 -940 630 -940 {lab=VDD}
N 630 -1030 630 -970 {lab=VDD}
N 630 -1030 1000 -1030 {lab=VDD}
N 670 -940 960 -940 {lab=VB2}
N 630 -680 630 -630 {lab=V_COMP+}
N 590 -710 590 -600 {lab=VIN+}
N 630 -910 630 -740 {lab=VOUT-}
N 1000 -910 1000 -740 {lab=VOUT+}
N 1040 -710 1040 -600 {lab=VIN-}
N 1000 -680 1000 -630 {lab=V_COMP-}
N 630 -710 1000 -710 {lab=VSS}
N 630 -600 1000 -600 {lab=VSS}
N 1000 -450 1000 -390 {lab=#net4}
N 1000 -360 1000 -240 {lab=VSS}
N 1000 -240 1400 -240 {lab=VSS}
N 630 -450 630 -390 {lab=#net4}
N 670 -360 960 -360 {lab=VB}
N 630 -240 1000 -240 {lab=VSS}
N 630 -450 1000 -450 {lab=#net4}
N 630 -570 630 -450 {lab=#net4}
N 1000 -570 1000 -450 {lab=#net4}
N 630 -360 630 -240 {lab=VSS}
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
C {sg13g2_pr/sg13_hv_nmos.sym} 1380 -360 2 1 {name=M13
l=2u
w=4.5u
ng=2
m=3
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1310 -360 0 0 {name=p43 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 1190 -240 3 0 {name=p44 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1380 -550 2 1 {name=M14
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1380 -660 2 1 {name=M15
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1480 -550 0 1 {name=p45 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1480 -660 0 1 {name=p46 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1300 -610 0 0 {name=p47 sig_type=std_logic lab=VCM}
C {sg13g2_pr/sg13_hv_pmos.sym} 1380 -940 0 0 {name=M16
l=2.6u
w=2.2u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1280 -1030 1 0 {name=p48 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1500 -940 0 1 {name=p49 sig_type=std_logic lab=VDD}
C {ammeter.sym} 1400 -450 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 1360 -890 0 0 {name=p50 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 1100 -940 0 1 {name=p51 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 800 -940 3 0 {name=p52 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 530 -940 0 0 {name=p53 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_nmos.sym} 610 -600 2 1 {name=M17
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 610 -710 2 1 {name=M18
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 800 -710 3 1 {name=p54 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1020 -600 2 0 {name=M19
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1020 -710 2 0 {name=M20
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 800 -600 3 1 {name=p55 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 590 -650 0 0 {name=p56 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 630 -650 0 1 {name=p57 sig_type=std_logic lab=V_COMP+}
C {devices/lab_pin.sym} 1000 -650 0 0 {name=p58 sig_type=std_logic lab=V_COMP-}
C {devices/lab_pin.sym} 1040 -650 0 1 {name=p59 sig_type=std_logic lab=VIN-}
C {sg13g2_pr/sg13_hv_nmos.sym} 980 -360 2 1 {name=M21
l=2u
w=4.5u
ng=2
m=3
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 650 -360 2 0 {name=M22
l=2u
w=4.5u
ng=2
m=3
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 810 -360 3 0 {name=p60 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 630 -830 0 0 {name=p61 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} 1000 -830 0 0 {name=p62 sig_type=std_logic lab=VOUT+}
C {sg13g2_pr/sg13_hv_pmos.sym} 980 -940 0 0 {name=M1
l=2.6u
w=2.2u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 650 -940 0 1 {name=M2
l=2.6u
w=2.2u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
