v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 10 190 40 {lab=GND}
N 290 10 290 40 {lab=GND}
N 190 -90 190 -50 {lab=VDD}
N 290 -90 290 -50 {lab=VSS}
N 500 -260 500 -240 {lab=VDD}
N 780 0 780 60 {lab=VA}
N 780 90 780 180 {lab=VSS}
N 680 -100 740 -100 {lab=VA}
N 680 0 680 90 {lab=VA}
N 680 90 740 90 {lab=VA}
N 500 -180 500 -0 {lab=VA}
N 500 -0 680 0 {lab=VA}
N 680 -100 680 0 {lab=VA}
N 680 0 780 0 {lab=VA}
N 780 -20 780 0 {lab=VA}
N 780 -260 780 -100 {lab=VDD}
N 500 -260 780 -260 {lab=VDD}
N 500 -280 500 -260 {lab=VDD}
N 980 -0 980 70 {lab=VB}
N 940 -20 940 100 {lab=VA}
N 980 100 980 190 {lab=VSS}
N 980 -260 980 -100 {lab=VDD}
N 780 -260 980 -260 {lab=VDD}
N 780 -20 940 -20 {lab=VA}
N 780 -70 780 -20 {lab=VA}
N 940 -100 940 -20 {lab=VA}
N 1160 0 1160 80 {lab=VC}
N 1160 110 1160 200 {lab=VSS}
N 980 -0 1120 0 {lab=VB}
N 980 -70 980 -0 {lab=VB}
N 1160 -260 1160 -90 {lab=VDD}
N 1120 -260 1160 -260 {lab=VDD}
N 1120 -260 1120 -220 {lab=VDD}
N 980 -260 1120 -260 {lab=VDD}
N 1120 200 1160 200 {lab=VSS}
N 1160 0 1340 0 {lab=VC}
N 1160 -60 1160 0 {lab=VC}
N 1340 60 1340 80 {lab=VSS}
N 1120 0 1120 140 {lab=VB}
N 1120 -50 1120 0 {lab=VB}
N 1490 10 1490 80 {lab=#net1}
N 1490 -260 1490 -90 {lab=VDD}
N 1160 -260 1490 -260 {lab=VDD}
N 1160 200 1490 200 {lab=VSS}
N 1490 110 1490 200 {lab=VSS}
N 1120 -50 1450 -50 {lab=VB}
N 1120 -160 1120 -50 {lab=VB}
N 1450 -90 1450 -50 {lab=VB}
N 1450 -50 1450 110 {lab=VB}
N 1660 30 1660 90 {lab=#net1}
N 1620 10 1620 120 {lab=#net1}
N 1660 -260 1660 -80 {lab=VDD}
N 1490 -260 1660 -260 {lab=VDD}
N 1490 10 1620 10 {lab=#net1}
N 1490 -60 1490 10 {lab=#net1}
N 1620 -80 1620 10 {lab=#net1}
N 1620 10 1660 10 {lab=#net1}
N 1660 -50 1660 10 {lab=#net1}
N 1660 120 1660 200 {lab=VSS}
N 1490 200 1660 200 {lab=VSS}
N 1790 30 1790 130 {lab=#net1}
N 1830 20 1830 100 {lab=VNN}
N 1660 30 1790 30 {lab=#net1}
N 1660 10 1660 30 {lab=#net1}
N 1790 -70 1790 30 {lab=#net1}
N 1830 -260 1830 -70 {lab=VDD}
N 1660 -260 1830 -260 {lab=VDD}
N 1830 130 1830 200 {lab=VSS}
N 1660 200 1830 200 {lab=VSS}
N 2010 80 2010 100 {lab=VSS}
N 1830 20 2010 20 {lab=VNN}
N 1830 -40 1830 20 {lab=VNN}
C {devices/code_shown.sym} -260 -320 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -260 -220 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/vsource.sym} 190 -20 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 190 40 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 290 -20 0 0 {name=VSS value=0}
C {devices/gnd.sym} 290 40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 190 -90 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 290 -90 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {isource.sym} 500 -210 0 0 {name=I0 value="ac 10u sin (0 0.005u 10k)"}
C {devices/lab_pin.sym} 500 -280 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 760 -100 0 0 {name=M1
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 760 90 2 1 {name=M2
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 780 180 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 130 160 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.param mm_ok=0
.param mc_ok=0
.control
	save all
	dc I0 -50u 50u 0.1u
	plot v(VA)
	plot i(VDD)
	plot v(VC)
	ac dec 100 1 10G
	plot db(v(VC)) (180*ph(v(VC))/pi)
	plot db(v(VNN)) (180*ph(v(VNN))/pi)
	tran 10ns 1m
	plot v(VC) v(VNN)
	plot i(VSS)

.endc
"}
C {devices/lab_pin.sym} 780 -40 2 0 {name=p5 sig_type=std_logic lab=VA}
C {devices/lab_pin.sym} 980 190 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 980 -30 2 0 {name=p7 sig_type=std_logic lab=VB}
C {sg13g2_pr/sg13_hv_nmos.sym} 960 100 2 1 {name=M3
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 960 -100 0 0 {name=M4
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1160 200 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1160 -20 2 0 {name=p9 sig_type=std_logic lab=VC}
C {sg13g2_pr/sg13_hv_nmos.sym} 1140 110 2 1 {name=M5
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1140 -90 0 0 {name=M6
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 1120 -190 0 0 {name=C1
model=cap_cmim
w=10.0e-6
l=10.0e-6
m=8
spiceprefix=X}
C {capa.sym} 1340 30 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1340 80 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {sg13g2_pr/cap_cmim.sym} 1120 170 0 0 {name=C2
model=cap_cmim
w=10.0e-6
l=10.0e-6
m=8
spiceprefix=X}
C {sg13g2_pr/sg13_hv_nmos.sym} 1470 110 2 1 {name=M7
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1470 -90 0 0 {name=M8
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1640 120 2 1 {name=M9
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1640 -80 0 0 {name=M10
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1810 130 2 1 {name=M11
l=2u
w=2u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1810 -70 0 0 {name=M12
l=2u
w=2.65u
ng=2
m=3
model=sg13_hv_pmos
spiceprefix=X
}
C {capa.sym} 2010 50 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2010 100 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1950 20 3 0 {name=p12 sig_type=std_logic lab=VNN}
