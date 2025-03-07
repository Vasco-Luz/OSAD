v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 680 -30 680 10 {lab=#net1}
N 680 40 760 40 {lab=VDD}
N 540 150 680 150 {lab=#net2}
N 540 210 680 210 {lab=VSS}
N 680 70 680 150 {lab=#net2}
N 500 80 500 150 {lab=#net3}
N 590 40 640 40 {lab=#net3}
N 590 40 590 80 {lab=#net3}
N 540 40 590 40 {lab=#net3}
N 500 80 590 80 {lab=#net3}
N 500 70 500 80 {lab=#net3}
N -260 360 -260 380 {
lab=GND}
N -260 260 -260 300 {
lab=VDD}
N -130 360 -130 380 {
lab=GND}
N -130 260 -130 300 {
lab=VSS}
N 500 380 680 380 {lab=VSS}
N 680 210 680 380 {lab=VSS}
N 540 150 540 160 {lab=#net2}
N 540 200 540 210 {lab=VSS}
N 500 210 500 240 {lab=#net4}
N 500 300 500 380 {lab=VSS}
N 900 150 900 160 {lab=#net2}
N 680 150 900 150 {lab=#net2}
N 900 200 900 210 {lab=VSS}
N 680 210 900 210 {lab=VSS}
N 940 260 940 280 {lab=#net5}
N 940 310 940 380 {lab=VSS}
N 680 380 940 380 {lab=VSS}
N 980 260 980 310 {lab=#net5}
N 940 260 980 260 {lab=#net5}
N 940 210 940 260 {lab=#net5}
N 1130 310 1130 380 {lab=VSS}
N 1130 230 1130 280 {lab=#net6}
N 1210 170 1210 190 {
lab=GND}
N 1130 110 1210 110 {lab=#net7}
N 1130 110 1130 170 {lab=#net7}
N 980 310 1090 310 {lab=#net5}
N 940 380 1130 380 {lab=VSS}
N 1710 310 1710 380 {lab=VSS}
N 1430 380 1710 380 {lab=VSS}
N 940 -180 940 150 {lab=VDD}
N 760 -180 760 40 {lab=VDD}
N 680 -180 760 -180 {lab=VDD}
N 680 -180 680 -90 {lab=VDD}
N 500 -180 680 -180 {lab=VDD}
N 500 -180 500 40 {lab=VDD}
N 350 -180 500 -180 {lab=VDD}
N 760 -180 940 -180 {lab=VDD}
N 1710 180 1710 280 {lab=#net8}
N 1430 360 1430 380 {lab=VSS}
N 1130 380 1430 380 {lab=VSS}
N 1480 310 1670 310 {lab=#net9}
N 1430 220 1430 260 {lab=VDD}
N 1710 80 1710 120 {lab=VDD}
C {devices/code_shown.sym} 60 -30 0 0 {name=NGSPICE only_toplevel=true 
value="
.param mm_ok=0
.param mc_ok=0
.param temp=27
.param VDD=3.3
.param VSS=0
.control
	save all 
	dc V3 0 3.3 0.01
	plot i(Vmeas1)
	op
	dc temp -40 125 1
	plot i(Vmeas2)
	write op.raw 
.endc
"}
C {devices/code_shown.sym} -380 -230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {sg13g2_pr/rhigh.sym} 680 -60 0 0 {name=R1
w=0.5e-6
l=5.85e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {res.sym} 680 180 0 1 {name=R2
value=0.001
footprint=1206
device=resistor
m=1}
C {vccs.sym} 500 180 0 1 {name=G1 value=1000}
C {devices/lab_pin.sym} -260 260 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -260 330 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -260 380 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -130 330 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -130 380 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -130 260 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 500 380 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/code_shown.sym} -400 -320 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/lab_pin.sym} 350 -180 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 660 40 0 0 {name=M1
l=3u
w=2.0u
ng=2
m=8
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 520 40 0 1 {name=M2
l=3u
w=2.0u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {ammeter.sym} 500 270 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {vccs.sym} 940 180 0 0 {name=G2 value=1000}
C {sg13g2_pr/sg13_hv_nmos.sym} 960 310 2 0 {name=M3
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {ammeter.sym} 1130 200 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 1210 140 0 0 {name=V3 value=1.65

}
C {devices/gnd.sym} 1210 190 0 0 {name=l2 lab=GND}
C {sg13g2_pr/sg13_hv_nmos.sym} 1110 310 2 1 {name=M4
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1690 310 2 1 {name=M6
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {ammeter.sym} 1710 150 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 1430 220 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1710 80 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {ihp-sg13g2/FD_opamp001/bias_cell.sym} 1430 310 0 0 {name=x1}
