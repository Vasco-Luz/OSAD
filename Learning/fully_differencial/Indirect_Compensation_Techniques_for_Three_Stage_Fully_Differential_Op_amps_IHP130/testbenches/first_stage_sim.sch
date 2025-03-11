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
N 90 470 90 490 {
lab=GND}
N 90 400 90 410 {
lab=VCM}
N -0 400 90 400 {lab=VCM}
N 90 370 90 400 {
lab=VCM}
N -0 290 0 400 {lab=VCM}
N 90 400 180 400 {lab=VCM}
N 180 290 180 400 {lab=VCM}
N -0 190 0 230 {lab=VIN+}
N 180 190 180 230 {lab=VIN-}
N 870 90 870 130 {
lab=VDD}
N 870 270 870 310 {
lab=VSS}
N 760 150 830 150 {lab=VIN+}
N 760 250 830 250 {lab=VIN-}
N 970 170 1020 170 {lab=VOUT-}
N 970 230 1020 230 {lab=VOUT+}
N 910 90 910 140 {lab=VB}
N 910 260 910 310 {lab=VB2}
N 800 200 830 200 {lab=VCM}
N 690 170 830 170 {lab=V_COMP+}
N 690 230 830 230 {lab=V_COMP-}
N 1750 70 1860 70 {lab=#net1}
N 1610 0 1610 70 {lab=VDD}
N 1610 0 1900 0 {lab=VDD}
N 1900 0 1900 70 {lab=VDD}
N 1610 200 1610 240 {lab=VOUT2+}
N 1900 110 1900 240 {lab=#net1}
N 1610 270 1900 270 {lab=VSS}
N 1750 70 1750 110 {lab=#net1}
N 1650 70 1750 70 {lab=#net1}
N 1750 110 1900 110 {lab=#net1}
N 1900 100 1900 110 {lab=#net1}
N 1610 300 1610 410 {lab=#net2}
N 1900 300 1900 410 {lab=#net3}
N 1650 440 1860 440 {lab=VB}
N 1610 440 1610 530 {lab=VSS}
N 1610 530 1900 530 {lab=VSS}
N 1900 440 1900 530 {lab=VSS}
N 1940 270 1970 270 {lab=VB2}
N 1540 270 1570 270 {lab=VOUT-}
N 1340 260 1340 300 {lab=#net4}
N 1340 200 1610 200 {lab=VOUT2+}
N 1610 100 1610 200 {lab=VOUT2+}
N 1340 360 1340 390 {lab=V_COMP+}
N 2570 70 2680 70 {lab=#net5}
N 2430 0 2430 70 {lab=VDD}
N 2430 0 2720 0 {lab=VDD}
N 2720 0 2720 70 {lab=VDD}
N 2430 200 2430 240 {lab=VOUT2-}
N 2720 110 2720 240 {lab=#net5}
N 2430 270 2720 270 {lab=VSS}
N 2570 70 2570 110 {lab=#net5}
N 2470 70 2570 70 {lab=#net5}
N 2570 110 2720 110 {lab=#net5}
N 2720 100 2720 110 {lab=#net5}
N 2430 300 2430 410 {lab=#net6}
N 2720 300 2720 410 {lab=#net7}
N 2470 440 2680 440 {lab=VB}
N 2430 440 2430 530 {lab=VSS}
N 2430 530 2720 530 {lab=VSS}
N 2720 440 2720 530 {lab=VSS}
N 2760 270 2790 270 {lab=VB2}
N 2360 270 2390 270 {lab=VOUT+}
N 2160 260 2160 300 {lab=#net8}
N 2160 200 2430 200 {lab=VOUT2-}
N 2430 100 2430 200 {lab=VOUT2-}
N 2160 360 2160 390 {lab=V_COMP-}
C {devices/code_shown.sym} -710 -100 0 0 {name=NGSPICE only_toplevel=true 
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
	plot v(VOUT2+)
	ac dec 100 1 10G
	plot db(v(VOUT-))
	plot db(v(VOUT2-)) (180*ph(v(VOUT2-))/pi)
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
C {devices/vsource.sym} 90 440 0 0 {name=V3 value="VCM"

}
C {devices/gnd.sym} 90 490 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 90 370 0 0 {name=p10 sig_type=std_logic lab=VCM}
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
C {devices/vsource.sym} 0 260 0 0 {name=V4 value= "ac 0.5"}
C {devices/vsource.sym} 180 260 0 0 {name=V5 value= "ac -0.5"}
C {devices/lab_pin.sym} 0 190 0 0 {name=p27 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 180 190 0 0 {name=p28 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 520 330 0 1 {name=p29 sig_type=std_logic lab=VB}
C {ihp-sg13g2/FD_opamp001/first_stage.sym} 910 200 0 0 {name=x2}
C {devices/lab_pin.sym} 870 90 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 870 310 0 0 {name=p30 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 760 150 0 0 {name=p31 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 760 250 0 0 {name=p32 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 1020 170 0 1 {name=p33 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} 1020 230 0 1 {name=p34 sig_type=std_logic lab=VOUT+}
C {devices/lab_pin.sym} 910 90 0 1 {name=p35 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 910 310 0 1 {name=p36 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 800 200 0 0 {name=p37 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 690 170 0 0 {name=p38 sig_type=std_logic lab=V_COMP+}
C {devices/lab_pin.sym} 690 230 0 0 {name=p39 sig_type=std_logic lab=V_COMP-}
C {sg13g2_pr/sg13_hv_pmos.sym} 1630 70 0 1 {name=M24
l=2u
w=3u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1760 0 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_nmos.sym} 1590 270 2 1 {name=M18
l=1.5u
w=4u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1750 270 1 0 {name=p5 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1920 270 2 0 {name=M2
l=1.5u
w=4u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1880 440 2 1 {name=M21
l=2u
w=4.5u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1630 440 2 0 {name=M22
l=2u
w=4.5u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 1750 440 3 0 {name=p60 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 1750 530 3 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1970 270 0 1 {name=p9 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 1540 270 0 0 {name=p11 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} 1610 170 0 0 {name=p12 sig_type=std_logic lab=VOUT2+}
C {sg13g2_pr/sg13_hv_pmos.sym} 1880 70 0 0 {name=M1
l=2u
w=3u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 1340 330 0 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {devices/lab_pin.sym} 1340 390 0 0 {name=p13 sig_type=std_logic lab=V_COMP+}
C {devices/code_shown.sym} 20 -280 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {sg13g2_pr/ptap1.sym} 1340 230 0 0 {name=R1
model=ptap1
spiceprefix=X
R=262.847.0
Imax=0.3e-6
}
C {sg13g2_pr/sg13_hv_pmos.sym} 2450 70 0 1 {name=M3
l=2u
w=3u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 2580 0 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_nmos.sym} 2410 270 2 1 {name=M4
l=1.5u
w=4u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 2570 270 1 0 {name=p15 sig_type=std_logic lab=VSS
}
C {sg13g2_pr/sg13_hv_nmos.sym} 2740 270 2 0 {name=M5
l=1.5u
w=4u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 2700 440 2 1 {name=M6
l=2u
w=4.5u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 2450 440 2 0 {name=M7
l=2u
w=4.5u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 2570 440 3 0 {name=p16 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} 2570 530 3 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 2790 270 0 1 {name=p18 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 2360 270 0 0 {name=p19 sig_type=std_logic lab=VOUT+}
C {devices/lab_pin.sym} 2430 170 0 0 {name=p20 sig_type=std_logic lab=VOUT2-}
C {sg13g2_pr/sg13_hv_pmos.sym} 2700 70 0 0 {name=M8
l=2u
w=3u
ng=2
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 2160 330 0 0 {name=C2
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {devices/lab_pin.sym} 2160 390 0 0 {name=p21 sig_type=std_logic lab=V_COMP-}
C {sg13g2_pr/ptap1.sym} 2160 230 0 0 {name=R2
model=ptap1
spiceprefix=X
R=262.847.0
Imax=0.3e-6
}
