v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1} 2350 -60 0 0 0.8 0.8 {}
N 1300 -580 1300 -540 {lab=VSS}
N 1300 -540 1480 -540 {lab=VSS}
N 1480 -650 1480 -540 {lab=VSS}
N 1320 -550 1320 -540 {lab=VSS}
N 1320 -860 1320 -710 {lab=#net1}
N 1480 -860 1480 -740 {lab=#net2}
N 1320 -650 1320 -610 {lab=#net3}
N 1300 -680 1300 -580 {lab=VSS}
N 1480 -740 1480 -710 {lab=#net2}
N 1360 -680 1440 -680 {lab=#net2}
N 1400 -730 1400 -680 {lab=#net2}
N 1400 -730 1480 -730 {lab=#net2}
N 1300 -680 1320 -680 {lab=VSS}
N 1480 -680 1500 -680 {lab=VSS}
N 1500 -680 1500 -540 {lab=VSS}
N 1480 -540 1500 -540 {lab=VSS}
N 1360 -890 1440 -890 {lab=VB2}
N 1320 -1030 1320 -920 {lab=VB1}
N 1480 -1030 1480 -920 {lab=VB2}
N 1400 -940 1400 -890 {lab=VB2}
N 1400 -940 1470 -940 {lab=VB2}
N 1470 -940 1480 -940 {lab=VB2}
N 1250 -890 1320 -890 {lab=VSS}
N 1480 -890 1550 -890 {lab=VSS}
N 1320 -1230 1320 -1200 {lab=VDD}
N 1320 -1260 1320 -1230 {lab=VDD}
N 1480 -1260 1480 -1230 {lab=VDD}
N 1480 -1230 1480 -1200 {lab=VDD}
N 1480 -1170 1480 -1070 {lab=VB2}
N 1480 -1070 1480 -1040 {lab=VB2}
N 1480 -1040 1480 -1030 {lab=VB2}
N 1320 -1170 1320 -1090 {lab=VB1}
N 1320 -1260 1480 -1260 {lab=VDD}
N 1360 -1200 1440 -1200 {lab=VB1}
N 1400 -1200 1400 -1140 {lab=VB1}
N 1320 -1140 1400 -1140 {lab=VB1}
N 1320 -1090 1320 -1030 {lab=VB1}
N 810 -1010 870 -1010 {lab=VDD}
N 810 -970 870 -970 {lab=VSS}
N 810 -930 870 -930 {lab=Vin+}
N 810 -890 870 -890 {lab=Vin-}
N 810 -850 870 -850 {lab=VOUT}
N 1480 -1260 1850 -1260 {lab=VDD}
N 1850 -1260 1850 -1230 {lab=VDD}
N 1850 -1230 1850 -1200 {lab=VDD}
N 1770 -1200 1810 -1200 {lab=VB1}
N 1720 -1090 1720 -1050 {lab=#net4}
N 1720 -1090 1850 -1090 {lab=#net4}
N 1850 -1170 1850 -1090 {lab=#net4}
N 1850 -1090 1980 -1090 {lab=#net4}
N 1720 -1050 1720 -1020 {lab=#net4}
N 1980 -1090 1980 -1050 {lab=#net4}
N 1980 -1050 1980 -1020 {lab=#net4}
N 1720 -990 1720 -880 {lab=#net5}
N 1720 -880 1720 -750 {lab=#net5}
N 1980 -990 1980 -880 {lab=#net6}
N 1980 -880 1980 -750 {lab=#net6}
N 1760 -720 1940 -720 {lab=#net5}
N 1850 -770 1850 -720 {lab=#net5}
N 1720 -770 1850 -770 {lab=#net5}
N 1980 -690 1980 -540 {lab=VSS}
N 1500 -540 1980 -540 {lab=VSS}
N 1720 -690 1720 -540 {lab=VSS}
N 1720 -720 1720 -690 {lab=VSS}
N 1980 -720 1980 -690 {lab=VSS}
N 2020 -1020 2080 -1020 {lab=Vin+}
N 1620 -1020 1680 -1020 {lab=Vin-}
N 2390 -1230 2390 -1200 {lab=VDD}
N 2310 -1200 2350 -1200 {lab=VB1}
N 1850 -1260 2390 -1260 {lab=VDD}
N 2390 -1260 2390 -1230 {lab=VDD}
N 2390 -1170 2390 -750 {lab=VOUT}
N 2390 -720 2390 -690 {lab=VSS}
N 1980 -540 2390 -540 {lab=VSS}
N 2390 -690 2390 -540 {lab=VSS}
N 2290 -820 2390 -820 {lab=VOUT}
N 2140 -820 2230 -820 {lab=#net7}
N 1980 -820 2080 -820 {lab=#net6}
N 2110 -900 2110 -870 {lab=VB2}
N 2110 -870 2110 -860 {lab=VB2}
N 2110 -820 2110 -540 {lab=VSS}
N 2050 -720 2350 -720 {lab=#net6}
N 2050 -820 2050 -720 {lab=#net6}
C {sky130_fd_pr/res_high_po_0p35.sym} 1320 -580 0 0 {name=R6
L=16
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1400 -540 3 0 {name=p1 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 1340 -680 0 1 {name=M1
L=4
W=1  
nf=8 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 1460 -680 0 0 {name=M2
L=4
W=1  
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1250 -890 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1550 -890 0 1 {name=p3 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 1460 -890 0 0 {name=M4
L=2
W=1
nf=2 mult=2
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 1340 -890 0 1 {name=M3
L=2
W=1
nf=2 mult=2
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} 1340 -1200 0 1 {name=M5
L=2
W=1
nf=2 mult=2
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} 1460 -1200 0 0 {name=M6
L=2
W=1
nf=2 mult=2
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1320 -1260 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {iopin.sym} 810 -1010 0 1 {name=p13 lab=VDD}
C {devices/lab_pin.sym} 870 -1010 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {iopin.sym} 810 -970 0 1 {name=p15 lab=VSS}
C {devices/lab_pin.sym} 870 -970 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {iopin.sym} 810 -930 0 1 {name=p17 lab=Vin+}
C {devices/lab_pin.sym} 870 -930 2 0 {name=p18 sig_type=std_logic lab=Vin+}
C {iopin.sym} 810 -890 0 1 {name=p19 lab=Vin-}
C {devices/lab_pin.sym} 870 -890 2 0 {name=p20 sig_type=std_logic lab=Vin-}
C {iopin.sym} 810 -850 0 1 {name=p21 lab=VOUT}
C {devices/lab_pin.sym} 870 -850 2 0 {name=p22 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/pfet_01v8_nf.sym} 1830 -1200 0 0 {name=M7
L=2
W=1
nf=2 mult=8
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1320 -1100 0 0 {name=p5 sig_type=std_logic lab=VB1
}
C {devices/lab_pin.sym} 1770 -1200 0 0 {name=p6 sig_type=std_logic lab=VB1
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 1740 -720 0 1 {name=M10
L=2
W=1  
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 1960 -720 0 0 {name=M11
L=2
W=1  
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 2080 -1020 2 0 {name=p7 sig_type=std_logic lab=Vin+}
C {devices/lab_pin.sym} 1620 -1020 0 0 {name=p8 sig_type=std_logic lab=Vin-}
C {sky130_fd_pr/pfet_01v8_nf.sym} 2370 -1200 0 0 {name=M12
L=2
W=1
nf=2 mult=16
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 2310 -1200 0 0 {name=p9 sig_type=std_logic lab=VB1
}
C {devices/lab_pin.sym} 1480 -1110 0 1 {name=p10 sig_type=std_logic lab=VB2
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 2110 -840 1 0 {name=M14
L=2.2
W=2  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 2260 -820 1 0 {name=C1 model=cap_mim_m3_1 W=6.5 L=6.5 MF=4 spiceprefix=X}
C {devices/lab_pin.sym} 2110 -900 0 1 {name=p11 sig_type=std_logic lab=VB2
}
C {devices/lab_pin.sym} 2390 -980 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 1700 -1020 0 0 {name=M8
L=0.7
W=2
nf=2 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} 2000 -1020 0 1 {name=M9
L=0.7
W=2
nf=2 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt_nf.sym} 2370 -720 0 0 {name=M33
L=0.5
W=2
nf=2 mult=2
model=nfet_01v8_lvt
spiceprefix=X
}
C {title-2.sym} 0 0 0 0 {name=l3 author="Vasco Luz" rev=1.0 lock=false }
