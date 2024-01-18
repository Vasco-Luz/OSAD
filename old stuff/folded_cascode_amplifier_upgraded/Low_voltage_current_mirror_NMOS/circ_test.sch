v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -460 -890 -460 -870 {
lab=GND}
N -460 -990 -460 -950 {
lab=VDD}
N -380 -890 -380 -870 {
lab=GND}
N -380 -990 -380 -950 {
lab=VIN}
N -380 -870 -380 -850 {
lab=GND}
N 400 -970 400 -940 {
lab=#net1}
N 350 -910 380 -910 {
lab=VDD}
N 400 -880 400 -860 {
lab=#net2}
N 400 -800 400 -770 {
lab=#net3}
N 400 -710 400 -690 {
lab=GND}
N 330 -740 400 -740 {
lab=GND}
N 330 -830 400 -830 {
lab=GND}
N 440 -830 520 -830 {
lab=#net1}
N 520 -950 520 -830 {
lab=#net1}
N 400 -950 520 -950 {
lab=#net1}
N 440 -740 460 -740 {
lab=#net2}
N 460 -860 460 -740 {
lab=#net2}
N 400 -860 460 -860 {
lab=#net2}
N 400 -1210 400 -1190 {
lab=VDD}
N 520 -830 590 -830 {
lab=#net1}
N 630 -830 700 -830 {
lab=GND}
N 630 -740 700 -740 {
lab=GND}
N 460 -740 590 -740 {
lab=#net2}
N 630 -710 630 -690 {
lab=GND}
N 630 -800 630 -770 {
lab=#net4}
N 880 -910 880 -880 {
lab=#net5}
N 630 -890 630 -860 {
lab=#net6}
N 630 -1150 630 -1130 {
lab=VDD}
N 620 -1100 630 -1100 {
lab=VDD}
N 620 -1130 620 -1100 {
lab=VDD}
N 620 -1130 630 -1130 {
lab=VDD}
N 620 -1020 630 -1020 {
lab=#net7}
N 620 -1050 620 -1020 {
lab=#net7}
N 620 -1050 630 -1050 {
lab=#net7}
N 630 -1070 630 -1050 {
lab=#net7}
N 630 -990 630 -970 {
lab=#net8}
N 630 -910 630 -890 {
lab=#net6}
N 670 -1020 670 -890 {
lab=#net6}
N 630 -890 670 -890 {
lab=#net6}
N 670 -1100 680 -1100 {
lab=#net8}
N 680 -1100 680 -980 {
lab=#net8}
N 630 -980 680 -980 {
lab=#net8}
N 880 -810 880 -770 {
lab=VIN}
N 880 -820 880 -810 {
lab=VIN}
N 680 -1100 840 -1100 {
lab=#net8}
N 880 -1100 890 -1100 {
lab=VDD}
N 890 -1130 890 -1100 {
lab=VDD}
N 880 -1130 890 -1130 {
lab=VDD}
N 880 -1140 880 -1130 {
lab=VDD}
N 670 -1020 840 -1020 {
lab=#net6}
N 880 -1070 880 -1050 {
lab=#net9}
N 880 -1020 890 -1020 {
lab=#net9}
N 890 -1050 890 -1020 {
lab=#net9}
N 880 -1050 890 -1050 {
lab=#net9}
N 880 -990 880 -910 {
lab=#net5}
N 400 -1160 410 -1160 {
lab=VDD}
N 410 -1190 410 -1160 {
lab=VDD}
N 400 -1190 410 -1190 {
lab=VDD}
N 190 -940 190 -900 {
lab=GND}
N 190 -1110 230 -1110 {
lab=#net10}
N 230 -1160 230 -1110 {
lab=#net10}
N 230 -1160 360 -1160 {
lab=#net10}
N 190 -1210 190 -1190 {
lab=VDD}
N 180 -1160 190 -1160 {
lab=VDD}
N 180 -1190 180 -1160 {
lab=VDD}
N 180 -1190 190 -1190 {
lab=VDD}
N 190 -1110 190 -1100 {
lab=#net10}
N 180 -1070 190 -1070 {
lab=#net10}
N 180 -1100 180 -1070 {
lab=#net10}
N 180 -1100 190 -1100 {
lab=#net10}
N 230 -1070 360 -1070 {
lab=#net11}
N 190 -1040 190 -1000 {
lab=#net11}
N 190 -1020 230 -1020 {
lab=#net11}
N 230 -1070 230 -1020 {
lab=#net11}
N 400 -1040 400 -970 {
lab=#net1}
N 400 -1070 410 -1070 {
lab=#net12}
N 410 -1100 410 -1070 {
lab=#net12}
N 400 -1100 410 -1100 {
lab=#net12}
N 400 -1130 400 -1100 {
lab=#net12}
N 190 -1130 190 -1110 {
lab=#net10}
C {devices/code.sym} -150 -1360 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*LIBs*********************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
* chose the corners in the corner file
* tt_mm for mismatch
* ss ff sf fs standart corners
* ll hh lh hl capacitor and resistors corners
* mc for total process variation including corners
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*Corners/montecarlo options***********************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.TEMP 27
**************************************************************
**************************************************************
**************************************************************
**************************************************************  
*SIMULATION and Plots*****************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.control
save all
dc V2 0 5 0.001 
plot i(VMEAS)
plot (1/deriv(i(VMEAS)))
.endc
"}
C {sky130_fd_pr/corner.sym} -320 -1360 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -460 -980 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -460 -920 0 0 {name=V1 value=5
}
C {devices/vsource.sym} -380 -920 0 0 {name=V2 value=2.5}
C {devices/gnd.sym} -460 -870 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -380 -990 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -380 -850 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/res_high_po_0p69.sym} 400 -910 0 0 {name=R7
L=1*20
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 -830 0 1 {name=M5
L=0.8
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 -740 0 1 {name=M1
L=1.5
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -1210 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 350 -910 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 400 -690 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 330 -740 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 330 -830 0 0 {name=l4 lab=GND}
C {devices/isource.sym} 190 -970 0 0 {name=I0 value=50u}
C {devices/gnd.sym} 700 -830 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 610 -740 0 0 {name=M3
L=1.5
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 700 -740 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 630 -690 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 880 -770 3 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/ammeter.sym} 880 -850 0 0 {name=Vmeas}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 610 -830 0 0 {name=M2
L=0.8
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 650 -1100 0 1 {name=M9
L=2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 650 -1020 0 1 {name=M4
L=0.8
W=15
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p69.sym} 630 -940 0 0 {name=R1
L=1*20
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 630 -1150 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 610 -940 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -1100 0 0 {name=M6
L=2
W=40
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -1020 0 0 {name=M7
L=0.8
W=30
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 880 -1140 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 -1160 0 0 {name=M8
L=2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 210 -1160 0 1 {name=M10
L=2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 190 -900 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 190 -1210 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 210 -1070 0 1 {name=M11
L=0.8
W=15
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 -1070 0 0 {name=M12
L=0.8
W=15
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
