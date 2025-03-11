v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 680 40 760 40 {lab=VDD}
N 590 40 640 40 {lab=#net1}
N 590 40 590 80 {lab=#net1}
N 540 40 590 40 {lab=#net1}
N 500 80 590 80 {lab=#net1}
N 500 70 500 80 {lab=#net1}
N -260 360 -260 380 {
lab=GND}
N -260 260 -260 300 {
lab=VDD}
N -130 360 -130 380 {
lab=GND}
N -130 260 -130 300 {
lab=VSS}
N 1710 310 1710 380 {lab=VSS}
N 500 -180 680 -180 {lab=VDD}
N 500 -180 500 40 {lab=VDD}
N 350 -180 500 -180 {lab=VDD}
N 1710 180 1710 280 {lab=#net2}
N 1480 380 1710 380 {lab=VSS}
N 1480 310 1670 310 {lab=VSS}
N 1710 80 1710 120 {lab=VDD}
N 1480 310 1480 380 {lab=VSS}
N 680 -180 680 10 {lab=VDD}
N 680 70 680 150 {lab=#net3}
N 680 300 680 320 {lab=#net4}
N 760 10 760 40 {lab=VDD}
N 680 10 760 10 {lab=VDD}
N 680 350 680 410 {lab=VSS}
N 640 300 640 350 {lab=#net4}
N 640 300 680 300 {lab=#net4}
N 680 210 680 300 {lab=#net4}
N 500 270 500 290 {lab=#net1}
N 460 270 460 320 {lab=#net1}
N 460 270 500 270 {lab=#net1}
N 500 320 500 410 {lab=VSS}
N 500 80 500 270 {lab=#net1}
N 500 410 680 410 {lab=VSS}
C {devices/code_shown.sym} 60 -30 0 0 {name=NGSPICE only_toplevel=true 
value="
.param mm_ok=0
.param mc_ok=0
.param temp=27
.param VDD=3.3
.param VSS=0
.control
	save all 
	dc temp -40 125 1
	plot i(Vmeas1)
	op
	write op.raw 
.endc
"}
C {devices/lab_pin.sym} -260 260 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -260 330 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -260 380 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -130 330 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -130 380 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -130 260 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/code_shown.sym} -400 -320 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/lab_pin.sym} 350 -180 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_pmos.sym} 660 40 0 0 {name=M1
l=3u
w=1.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 520 40 0 1 {name=M2
l=3u
w=1.5u
ng=2
m=2
model=sg13_hv_pmos
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
C {devices/lab_pin.sym} 1710 80 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {ammeter.sym} 680 180 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 500 410 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1480 370 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 660 350 2 1 {name=M3
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 480 320 2 1 {name=M4
l=3.8u
w=1u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/code_shown.sym} -350 -180 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
