v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -360 1000 -360 1160 {}
L 4 -360 1160 -40 1160 {}
L 4 -40 980 -40 1160 {}
L 4 -360 980 -40 980 {}
L 4 -360 980 -360 1000 {}
T {simulation scripts} -450 900 0 0 1 1 {}
N 340 490 340 510 {
lab=GND}
N 340 390 340 430 {
lab=VDD}
N 190 490 190 510 {
lab=GND}
N 190 390 190 430 {
lab=VSS}
N 840 330 840 370 {
lab=VDD}
N 840 490 840 530 {
lab=VSS}
N 930 430 1080 430 {lab=#net1}
N 1120 330 1120 370 {
lab=VDD}
N 1120 370 1120 400 {lab=VDD}
N 1120 400 1120 430 {lab=VDD}
N 500 650 500 670 {
lab=VSS}
N 500 460 790 460 {lab=#net2}
N 1040 660 1100 660 {lab=VSS}
N 1120 690 1120 750 {lab=#net3}
N 1040 780 1100 780 {lab=VSS}
N 1120 810 1120 860 {lab=VSS}
N 700 400 790 400 {lab=#net4}
N 500 460 500 520 {lab=#net2}
N 500 580 500 590 {lab=#net2}
N 1120 550 1440 550 {lab=VOUT}
N 1440 680 1440 740 {lab=VSS}
N 1550 610 1550 670 {lab=VSS}
N 1120 550 1120 630 {lab=VOUT}
N 1120 460 1120 490 {lab=#net5}
N 1440 620 1440 680 {lab=VSS}
N 1440 610 1440 620 {lab=VSS}
N 1440 550 1550 550 {lab=VOUT}
N 500 520 500 580 {lab=#net2}
N 910 720 920 720 {lab=#net3}
N 830 830 830 870 {
lab=VSS}
N 830 720 830 770 {lab=#net6}
N 830 720 850 720 {lab=#net6}
N 710 760 710 860 {lab=VSS}
N 710 860 830 860 {lab=VSS}
N 710 720 830 720 {lab=#net6}
N 670 770 670 890 {lab=#net7}
N 670 400 700 400 {lab=#net4}
N 670 950 670 970 {lab=VSS}
N 670 400 670 660 {lab=#net4}
N 670 660 670 710 {lab=#net4}
N 920 720 1120 720 {lab=#net3}
N 850 1200 850 1240 {
lab=#net8}
N 850 1360 850 1400 {
lab=VSS}
N 940 1300 1090 1300 {lab=#net9}
N 1130 1200 1130 1240 {
lab=VDD}
N 1130 1240 1130 1270 {lab=VDD}
N 1130 1270 1130 1300 {lab=VDD}
N 510 1520 510 1540 {
lab=VSS}
N 510 1330 800 1330 {lab=#net10}
N 1050 1530 1110 1530 {lab=VSS}
N 1130 1560 1130 1620 {lab=#net11}
N 1050 1650 1110 1650 {lab=VSS}
N 1130 1680 1130 1730 {lab=VSS}
N 710 1270 800 1270 {lab=#net12}
N 510 1330 510 1390 {lab=#net10}
N 510 1450 510 1460 {lab=#net10}
N 1130 1420 1450 1420 {lab=VOUT_supply}
N 1450 1550 1450 1610 {lab=VSS}
N 1560 1480 1560 1540 {lab=VSS}
N 1130 1420 1130 1500 {lab=VOUT_supply}
N 1130 1330 1130 1360 {lab=#net13}
N 1450 1490 1450 1550 {lab=VSS}
N 1450 1480 1450 1490 {lab=VSS}
N 1450 1420 1560 1420 {lab=VOUT_supply}
N 510 1390 510 1450 {lab=#net10}
N 920 1590 930 1590 {lab=#net11}
N 840 1700 840 1740 {
lab=VSS}
N 840 1590 840 1640 {lab=#net14}
N 840 1590 860 1590 {lab=#net14}
N 720 1630 720 1730 {lab=VSS}
N 720 1730 840 1730 {lab=VSS}
N 720 1590 840 1590 {lab=#net14}
N 680 1270 710 1270 {lab=#net12}
N 680 1820 680 1840 {lab=VSS}
N 680 1270 680 1530 {lab=#net12}
N 680 1530 680 1580 {lab=#net12}
N 930 1590 1130 1590 {lab=#net11}
N 680 1640 680 1820 {lab=VSS}
N 850 1100 850 1140 {lab=VDD}
C {sky130_fd_pr/corner.sym} -330 1020 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -180 1020 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 5
.param VCM = 2
.param V_ref = 1.2
.param VSS = 0
.param CL = 3p


.control

	save all
	dc V3 1 1.6 0.01
	plot v(VOUT)
	plot i(Vmeas)
	ac dec 100 1 10G
	plot db(v(VOUT)) ((180*ph(v(VOUT))/pi))
	plot (db(v(VOUT))-db(v(VOUT_supply)))
	plot db(v(VOUT_supply))

	*tran 1u 100m
	*Pplot v(VOUT)
	*plot i(Vmeas)

	dc V1 3.3 5 0.01
	plot v(VOUT)
	dc I0 0 40m 0.1m
	plot v(VOUT)


.endc

"}
C {Sky130A/single ended amplifiers/VA001_sky130_5V.sym} 840 430 0 0 {name=x1}
C {devices/lab_pin.sym} 340 390 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 340 460 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} 340 510 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 190 460 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} 190 510 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 190 390 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 840 330 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 840 530 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1100 430 0 0 {name=M9
L=0.5
W=30
nf=4 mult=6
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1120 330 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 500 620 0 0 {name=V3 value="V_ref"

}
C {devices/lab_pin.sym} 1040 660 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1040 780 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1120 860 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1470 550 3 1 {name=p9 sig_type=std_logic lab=VOUT
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1120 780 0 0 {name=R10
W=0.35
L=10
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1120 660 0 0 {name=R1
W=0.35
L=5
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {devices/vsource.sym} 670 920 0 0 {name=V4 value="ac 1"

}
C {capa.sym} 1550 580 0 0 {name=C1
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1440 740 3 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1550 670 3 0 {name=p11 sig_type=std_logic lab=VSS
}
C {ammeter.sym} 1120 520 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {isource.sym} 1440 580 0 0 {name=I0 value=20m}
C {res_ac.sym} 880 720 1 0 {name=R2
value=1k
ac=1000000000000G
m=1}
C {capa.sym} 830 800 0 0 {name=C8
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 830 870 0 0 {name=p36 sig_type=std_logic lab=VSS
}
C {vcvs.sym} 670 740 0 1 {name=E2 value=1}
C {devices/lab_pin.sym} 500 670 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 670 970 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {Sky130A/single ended amplifiers/VA001_sky130_5V.sym} 850 1300 0 0 {name=x2}
C {devices/lab_pin.sym} 850 1100 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 850 1400 0 0 {name=p15 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1110 1300 0 0 {name=M1
L=0.5
W=20
nf=4 mult=4
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1130 1200 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 510 1490 0 0 {name=V5 value="V_ref"

}
C {devices/lab_pin.sym} 1050 1530 0 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1050 1650 0 0 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1130 1730 0 0 {name=p19 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1480 1420 3 1 {name=p20 sig_type=std_logic lab=VOUT_supply
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1130 1650 0 0 {name=R3
W=0.35
L=10
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1130 1530 0 0 {name=R4
W=0.35
L=5
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {capa.sym} 1560 1450 0 0 {name=C2
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1450 1610 3 0 {name=p21 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1560 1540 3 0 {name=p22 sig_type=std_logic lab=VSS
}
C {ammeter.sym} 1130 1390 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {isource.sym} 1450 1450 0 0 {name=I1 value=20m}
C {res_ac.sym} 890 1590 1 0 {name=R5
value=1k
ac=1000000000000G
m=1}
C {capa.sym} 840 1670 0 0 {name=C3
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 840 1740 0 0 {name=p23 sig_type=std_logic lab=VSS
}
C {vcvs.sym} 680 1610 0 1 {name=E1 value=1}
C {devices/lab_pin.sym} 510 1540 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 680 1840 0 0 {name=p25 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 850 1170 2 0 {name=V6 value="ac 1"

}
