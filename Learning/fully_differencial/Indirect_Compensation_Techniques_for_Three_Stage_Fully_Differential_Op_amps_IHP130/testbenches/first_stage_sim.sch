v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -500 470 -500 490 {
lab=GND}
N -500 370 -500 410 {
lab=VDD}
N -370 470 -370 490 {
lab=GND}
N -370 370 -370 410 {
lab=VSS}
N 420 240 420 280 {
lab=VDD}
N 420 380 420 420 {
lab=VSS}
N 470 330 520 330 {lab=VB}
N 1780 330 1830 330 {lab=VB}
N 1870 330 1870 450 {lab=VSS}
N 1870 60 1870 110 {lab=#net1}
N 1870 140 1950 140 {lab=VSS}
N 1870 30 1950 30 {lab=VSS}
N 90 470 90 490 {
lab=GND}
N 90 400 90 410 {
lab=VCM}
N 1830 80 1830 140 {lab=VCM}
N 1770 80 1830 80 {lab=VCM}
N 1830 30 1830 80 {lab=VCM}
N 1870 -160 1870 0 {lab=VB2}
N 1830 -250 1830 -160 {lab=VB2}
N 1830 -160 1870 -160 {lab=VB2}
N 1870 -220 1870 -160 {lab=VB2}
N 1870 -250 1970 -250 {lab=VDD}
N 1870 -340 1870 -280 {lab=VDD}
N 1870 270 1870 300 {lab=#net2}
N 1870 170 1870 210 {lab=#net3}
N 1470 -250 1570 -250 {lab=VDD}
N 1470 -340 1870 -340 {lab=VDD}
N 1470 -340 1470 -280 {lab=VDD}
N 1000 -250 1100 -250 {lab=VDD}
N 1100 -340 1100 -280 {lab=VDD}
N 1100 -340 1470 -340 {lab=VDD}
N 1140 -250 1430 -250 {lab=VB2}
N 1100 10 1100 60 {lab=V_COMP+}
N 1060 -20 1060 90 {lab=VIN+}
N 1100 -220 1100 -50 {lab=VOUT-}
N 1470 -220 1470 -50 {lab=VOUT+}
N 1510 -20 1510 90 {lab=VIN-}
N 1470 10 1470 60 {lab=V_COMP-}
N 1100 -20 1470 -20 {lab=VSS}
N 1100 90 1470 90 {lab=VSS}
N 1470 240 1470 300 {lab=#net4}
N 1470 330 1470 450 {lab=VSS}
N 1470 450 1870 450 {lab=VSS}
N 1100 240 1100 300 {lab=#net4}
N 1140 330 1430 330 {lab=VB}
N 1100 330 1100 450 {lab=VSS}
N 1100 450 1470 450 {lab=VSS}
N -0 400 90 400 {lab=VCM}
N 90 370 90 400 {
lab=VCM}
N -0 290 0 400 {lab=VCM}
N 90 400 180 400 {lab=VCM}
N 180 290 180 400 {lab=VCM}
N -0 190 0 230 {lab=VIN+}
N 180 190 180 230 {lab=VIN-}
N 1100 240 1470 240 {lab=#net4}
N 1100 120 1100 240 {lab=#net4}
N 1470 120 1470 240 {lab=#net4}
C {devices/code_shown.sym} -400 -70 0 0 {name=NGSPICE only_toplevel=true 
value="
.param mm_ok=0
.param mc_ok=0
.param temp=27
.param VDD=3.3
.param VSS=0
.param VCM=1.65
.control
	save all 
	op
	dc temp -40 125 1
	plot i(Vmeas2)
	plot v(VOUT-)
	ac dec 100 1 10G
	plot db(v(VOUT-))
	write op.raw 


.endc
"}
C {bias_cell.sym} 420 330 0 0 {name=x1}
C {devices/lab_pin.sym} -500 370 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -500 440 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -500 490 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -370 440 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -370 490 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -370 370 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 420 240 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 420 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 520 330 0 1 {name=p3 sig_type=std_logic lab=VB}
C {sg13g2_pr/sg13_hv_nmos.sym} 1850 330 2 1 {name=M6
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1780 330 0 0 {name=p4 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 1660 450 3 0 {name=p5 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1850 140 2 1 {name=M1
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1850 30 2 1 {name=M2
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1950 140 0 1 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1950 30 0 1 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 90 440 0 0 {name=V3 value="VCM"

}
C {devices/gnd.sym} 90 490 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 90 370 0 0 {name=p10 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 1770 80 0 0 {name=p11 sig_type=std_logic lab=VCM}
C {sg13g2_pr/sg13_hv_pmos.sym} 1850 -250 0 0 {name=M3
l=3u
w=2.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1750 -340 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1970 -250 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {ammeter.sym} 1870 240 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -530 -230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -550 -320 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/lab_pin.sym} 1830 -200 0 0 {name=p14 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 1570 -250 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1270 -250 3 0 {name=p15 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 1000 -250 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_nmos.sym} 1080 90 2 1 {name=M7
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1080 -20 2 1 {name=M8
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1270 -20 3 1 {name=p19 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1490 90 2 0 {name=M9
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1490 -20 2 0 {name=M10
l=1.5u
w=5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1270 90 3 1 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1060 40 0 0 {name=p20 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 1100 40 0 1 {name=p21 sig_type=std_logic lab=V_COMP+}
C {devices/lab_pin.sym} 1470 40 0 0 {name=p22 sig_type=std_logic lab=V_COMP-}
C {devices/lab_pin.sym} 1510 40 0 1 {name=p23 sig_type=std_logic lab=VIN-}
C {sg13g2_pr/sg13_hv_nmos.sym} 1450 330 2 1 {name=M11
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1120 330 2 0 {name=M12
l=2u
w=4.5u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1280 330 3 0 {name=p24 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 1100 -140 0 0 {name=p25 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} 1470 -140 0 0 {name=p26 sig_type=std_logic lab=VOUT+}
C {devices/vsource.sym} 0 260 0 0 {name=V4 value= "ac 0.5"}
C {devices/vsource.sym} 180 260 0 0 {name=V5 value= "ac -0.5"}
C {devices/lab_pin.sym} 0 190 0 0 {name=p27 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 180 190 0 0 {name=p28 sig_type=std_logic lab=VIN-}
C {sg13g2_pr/sg13_hv_pmos.sym} 1450 -250 0 0 {name=M4
l=3u
w=2.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1120 -250 0 1 {name=M5
l=3u
w=2.5u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
