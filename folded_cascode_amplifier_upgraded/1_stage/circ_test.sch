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
N 220 -850 220 -830 {
lab=GND}
N 220 -830 220 -820 {
lab=GND}
N 220 -940 220 -910 {
lab=#net1}
N 120 -880 220 -880 {
lab=GND}
N 120 -970 220 -970 {
lab=GND}
N 220 -1040 220 -1000 {
lab=VB1}
N 160 -1070 200 -1070 {
lab=VDD}
N 220 -1130 220 -1100 {
lab=VB2}
N 260 -880 290 -880 {
lab=VB1}
N 290 -1020 290 -880 {
lab=VB1}
N 220 -1020 290 -1020 {
lab=VB1}
N 260 -1100 260 -970 {
lab=VB2}
N 220 -1100 260 -1100 {
lab=VB2}
N 220 -1230 220 -1190 {
lab=VDD}
N 290 -880 420 -880 {
lab=VB1}
N 260 -970 420 -970 {
lab=VB2}
N 460 -970 540 -970 {
lab=GND}
N 460 -880 540 -880 {
lab=GND}
N 460 -940 460 -910 {
lab=#net2}
N 460 -850 460 -820 {
lab=GND}
N 460 -1040 460 -1000 {
lab=VB3}
N 700 -980 700 -950 {
lab=#net3}
N 460 -1080 460 -1040 {
lab=VB3}
N 400 -1110 440 -1110 {
lab=VDD}
N 460 -1350 460 -1330 {
lab=VDD}
N 460 -1270 460 -1230 {
lab=#net4}
N 460 -1170 460 -1140 {
lab=VB4}
N 450 -1300 460 -1300 {
lab=VDD}
N 450 -1330 450 -1300 {
lab=VDD}
N 450 -1330 460 -1330 {
lab=VDD}
N 450 -1200 460 -1200 {
lab=#net4}
N 450 -1230 450 -1200 {
lab=#net4}
N 450 -1230 460 -1230 {
lab=#net4}
N 700 -890 700 -840 {
lab=VIN}
N 500 -1300 660 -1300 {
lab=VB4}
N 460 -1160 560 -1160 {
lab=VB4}
N 560 -1300 560 -1160 {
lab=VB4}
N 700 -1270 700 -1230 {
lab=#net5}
N 500 -1200 660 -1200 {
lab=VB3}
N 540 -1200 540 -1070 {
lab=VB3}
N 460 -1070 540 -1070 {
lab=VB3}
N 700 -1150 700 -980 {
lab=#net3}
N 700 -1170 700 -1150 {
lab=#net3}
N 700 -1300 710 -1300 {
lab=VDD}
N 710 -1330 710 -1300 {
lab=VDD}
N 700 -1330 710 -1330 {
lab=VDD}
N 700 -1350 700 -1330 {
lab=VDD}
N 700 -1200 710 -1200 {
lab=#net5}
N 710 -1230 710 -1200 {
lab=#net5}
N 700 -1230 710 -1230 {
lab=#net5}
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 240 -970 0 1 {name=M5
L=1.2
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 240 -880 0 1 {name=M1
L=1.5
W=10
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 220 -820 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/res_high_po_0p69.sym} 220 -1070 0 0 {name=R7
L=1*20
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {devices/gnd.sym} 120 -880 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 120 -970 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 160 -1070 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 -1230 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 220 -1160 0 0 {name=I0 value=50u}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 440 -970 0 0 {name=M2
L=1.2
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 440 -880 0 0 {name=M3
L=1.5
W=10
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 540 -970 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 540 -880 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 460 -820 0 0 {name=l8 lab=GND}
C {devices/ammeter.sym} 700 -920 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 700 -840 3 0 {name=p3 sig_type=std_logic lab=VIN
}
C {sky130_fd_pr/res_high_po_0p69.sym} 460 -1110 0 0 {name=R1
L=1*20
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 400 -1110 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 480 -1200 0 1 {name=M9
L=1.2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 480 -1300 0 1 {name=M4
L=1.5
W=25
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 460 -1350 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 680 -1300 0 0 {name=M6
L=1.5
W=25
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 680 -1200 0 0 {name=M7
L=1.2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 700 -1350 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 600 -1300 1 0 {name=p9 sig_type=std_logic lab=VB4}
C {devices/lab_pin.sym} 600 -1200 1 0 {name=p10 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} 350 -970 1 0 {name=p11 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 350 -880 1 0 {name=p12 sig_type=std_logic lab=VB1}
