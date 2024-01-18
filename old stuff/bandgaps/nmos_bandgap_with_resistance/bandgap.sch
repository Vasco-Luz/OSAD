v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {An upgraded version of the basic current mirror amplifier, this doent work like the other but works as with an special constant that controls the releation
of the currents of the two mirrors
the equations is in the pdf in the same file
} 1040 100 0 0 0.4 0.4 {}
N -10 290 -10 310 {
lab=GND}
N -10 190 -10 230 {
lab=#net1}
N 440 340 570 340 {
lab=#net2}
N 400 370 400 390 {
lab=GND}
N 610 370 610 390 {
lab=#net3}
N 310 340 400 340 {
lab=GND}
N 610 340 710 340 {
lab=GND}
N 610 130 610 190 {
lab=VREF}
N 400 130 400 190 {
lab=#net4}
N 440 100 570 100 {
lab=VREF}
N 500 100 500 150 {
lab=VREF}
N 500 150 610 150 {
lab=VREF}
N 340 100 400 100 {
lab=VDD}
N 610 100 690 100 {
lab=VDD}
N 400 50 400 70 {
lab=VDD}
N 400 50 610 50 {
lab=VDD}
N 610 50 610 70 {
lab=VDD}
N -540 1050 -540 1070 {
lab=GND}
N -540 950 -540 990 {
lab=VDD_tran}
N -10 120 -10 130 {
lab=VDD}
N 260 300 400 300 {
lab=#net2}
N 220 260 220 270 {
lab=GND}
N 220 250 220 260 {
lab=GND}
N 150 220 220 220 {
lab=GND}
N 220 100 220 110 {
lab=VDD}
N 220 170 220 190 {
lab=#net5}
N 610 390 610 400 {
lab=#net3}
N 610 460 610 500 {
lab=GND}
N 580 430 590 430 {
lab=VDD}
N -70 940 60 940 {
lab=#net6}
N -110 970 -110 990 {
lab=GND}
N 100 970 100 990 {
lab=#net7}
N -200 940 -110 940 {
lab=GND}
N 100 940 200 940 {
lab=GND}
N 100 850 100 910 {
lab=VREF_tran}
N -110 850 -110 910 {
lab=#net6}
N -70 820 60 820 {
lab=VREF_tran}
N -110 880 -50 880 {
lab=#net6}
N -50 880 -50 940 {
lab=#net6}
N -10 820 -10 870 {
lab=VREF_tran}
N -10 870 100 870 {
lab=VREF_tran}
N -170 820 -110 820 {
lab=VDD_tran}
N 100 820 180 820 {
lab=VDD_tran}
N -110 770 -110 790 {
lab=VDD_tran}
N -110 770 100 770 {
lab=VDD_tran}
N 100 770 100 790 {
lab=VDD_tran}
N 100 990 100 1000 {
lab=#net7}
N 100 1060 100 1100 {
lab=GND}
N 70 1030 80 1030 {
lab=VDD_tran}
N 400 300 400 310 {
lab=#net2}
N 260 230 260 300 {
lab=#net2}
N 260 220 260 230 {
lab=#net2}
N 400 250 400 300 {
lab=#net2}
N 610 250 610 310 {
lab=#net8}
N 400 270 460 270 {
lab=#net2}
N 460 270 460 340 {
lab=#net2}
C {devices/code.sym} -360 -90 0 0 {name=spice only_toplevel=false
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
dc TEMP -20 140 0.01 
plot v(VREF)
plot i(VMEAS)
tran 10ns 10us
plot v(VREF_tran)
plot i(VMEAS1)  i(VMEAS2)
ac dec 20 1 1000G 
plot db(v(VREF))

.endc
"}
C {sky130_fd_pr/corner.sym} -530 -90 0 0 {name=CORNER only_toplevel=true corner=ff_mm}
C {devices/lab_pin.sym} -10 120 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -10 260 0 0 {name=V1 value=5
}
C {devices/gnd.sym} -10 310 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 400 390 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 610 500 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 310 340 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 710 340 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 340 100 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 690 100 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 510 50 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 610 170 2 0 {name=p4 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} -540 950 0 0 {name=p5 sig_type=std_logic lab=VDD_tran}
C {devices/vsource.sym} -540 1020 0 0 {name=V2 value="PULSE ( 0 5 0 1000n 10n 100u 110u 0 )"
}
C {devices/gnd.sym} -540 1070 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 340 0 1 {name=M5
L=1
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 590 340 0 0 {name=M1
L=1
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 590 100 0 0 {name=M2
L=1
W=25
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 420 100 0 1 {name=M8
L=1
W=25
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} -10 160 0 0 {name=V4 value="ac 1 sin (0 100u 100k)"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 240 220 0 1 {name=M9
L=1
W=10
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 220 100 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 220 270 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 150 220 0 0 {name=l12 lab=GND}
C {devices/ammeter.sym} 220 140 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 580 430 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -110 990 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 100 1100 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -200 940 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 200 940 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -170 820 0 0 {name=p7 sig_type=std_logic lab=VDD_tran}
C {devices/lab_pin.sym} 180 820 0 1 {name=p8 sig_type=std_logic lab=VDD_tran}
C {devices/lab_pin.sym} 0 770 1 0 {name=p9 sig_type=std_logic lab=VDD_tran}
C {devices/lab_pin.sym} 100 890 2 0 {name=p10 sig_type=std_logic lab=VREF_tran}
C {devices/lab_pin.sym} 70 1030 0 0 {name=p13 sig_type=std_logic lab=VDD_tran}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -90 940 0 1 {name=M3
L=1
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 80 940 0 0 {name=M4
L=1
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/ammeter.sym} 400 220 0 0 {name=Vmeas1}
C {devices/ammeter.sym} 610 220 0 0 {name=Vmeas2}
C {sky130_fd_pr/res_high_po_0p69.sym} 610 430 0 0 {name=R7
L=1
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -90 820 0 1 {name=M6
L=1
W=25
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 80 820 0 0 {name=M7
L=1
W=25
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p69.sym} 100 1030 0 0 {name=R1
L=1
model=res_high_po_0p69
spiceprefix=X
 mult=1}
