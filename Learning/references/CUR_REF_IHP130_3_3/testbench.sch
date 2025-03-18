v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {texto
input  saida
6 uA - 8uA
14.7uA -8uA
10uA  - 8.8uA
1.2V -3.3V} 790 -430 0 0 0.4 0.4 {}
T {texto
5.8uA -1.2V
5.8uA -3.3V
8.33uA - 2V

} 1760 -370 0 0 0.4 0.4 {}
N 300 240 300 270 {lab=GND}
N 400 240 400 270 {lab=GND}
N 300 140 300 180 {lab=VDD}
N 400 140 400 180 {lab=VSS}
N 700 100 700 120 {lab=#net1}
N 700 250 700 290 {lab=#net2}
N 620 320 660 320 {lab=#net1}
N 620 100 620 320 {lab=#net1}
N 620 100 700 100 {lab=#net1}
N 700 80 700 100 {lab=#net1}
N 700 320 700 430 {lab=VSS}
N 700 250 900 250 {lab=#net2}
N 700 180 700 250 {lab=#net2}
N 940 250 940 430 {lab=VSS}
N 700 -200 700 -80 {lab=VDD}
N 700 -20 700 20 {lab=#net3}
N 940 120 940 220 {lab=#net4}
N 940 -200 940 -110 {lab=VDD}
N 940 -40 940 40 {lab=#net5}
N 860 -110 900 -110 {lab=#net4}
N 860 -110 860 120 {lab=#net4}
N 860 120 940 120 {lab=#net4}
N 940 100 940 120 {lab=#net4}
N 940 -40 1120 -40 {lab=#net5}
N 940 -80 940 -40 {lab=#net5}
N 1160 -200 1160 -40 {lab=VDD}
N 940 -200 1160 -200 {lab=VDD}
N 700 -200 940 -200 {lab=VDD}
N 700 430 940 430 {lab=VSS}
N 940 430 1160 430 {lab=VSS}
N 1160 120 1160 150 {lab=#net6}
N 1160 230 1160 250 {lab=#net7}
N 1120 120 1120 280 {lab=#net6}
N 1120 120 1160 120 {lab=#net6}
N 1160 -10 1160 120 {lab=#net6}
N 1160 280 1160 430 {lab=VSS}
N 1380 230 1380 430 {lab=VSS}
N 1160 430 1380 430 {lab=VSS}
N 1380 160 1380 200 {lab=#net8}
N 1380 -30 1380 100 {lab=#net9}
N 1380 -200 1380 -120 {lab=VDD}
N 1160 -200 1380 -200 {lab=VDD}
N 1420 -120 1420 -30 {lab=#net9}
N 1380 -30 1420 -30 {lab=#net9}
N 1380 -90 1380 -30 {lab=#net9}
N 1160 230 1340 230 {lab=#net7}
N 1160 210 1160 230 {lab=#net7}
C {devices/code_shown.sym} -210 -50 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -210 40 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {devices/code_shown.sym} -40 220 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.param mm_ok=0
.param mc_ok=0
.control
	save all
	dc temp -40 125 1
	plot i(Vmeas) 
        plot deriv(i(Vmeas))/i(Vmeas)

.endc
"}
C {devices/vsource.sym} 300 210 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 300 270 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 400 210 0 0 {name=VSS value=0}
C {devices/gnd.sym} 400 270 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 300 140 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 140 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 700 -200 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {sg13g2_pr/rhigh.sym} 700 150 0 0 {name=R1
w=0.5e-6
l=7.6e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_hv_nmos.sym} 680 320 2 1 {name=M1
l=2u
w=2.0u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 920 250 2 1 {name=M2
l=2u
w=2.0u
ng=2
m=3
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 700 50 0 0 {name=R2
w=0.5e-6
l=33e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {ammeter.sym} 700 -50 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {sg13g2_pr/rhigh.sym} 940 70 0 0 {name=R3
w=0.5e-6
l=14.5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_hv_pmos.sym} 920 -110 0 0 {name=M3
l=2u
w=3.0u
ng=2
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1140 -40 0 0 {name=M4
l=2u
w=3.0u
ng=2
m=6
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1070 430 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 1140 280 2 1 {name=M5
l=2u
w=2.0u
ng=2
m=3
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 1160 180 0 0 {name=R4
w=0.5e-6
l=9.2e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {ammeter.sym} 1380 130 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_hv_pmos.sym} 1400 -120 0 1 {name=M7
l=2u
w=3.0u
ng=2
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1360 230 2 1 {name=M6
l=2u
w=2u
ng=2
m=20
model=sg13_hv_nmos
spiceprefix=X
}
