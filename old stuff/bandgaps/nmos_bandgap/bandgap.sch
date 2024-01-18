v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {In this Band gap two current Mirror were added

IN this it provides a stronger, and offer a Vref for PMOS and NMOS but is not exacly a strong current source


It consumes too mutch current, and its not a very good circuit

But here it can be observed an important transient phenoment, if we do VDD as a pulse function, it can be observed the transient effect in the equivalent capacitors the mosfets, this effect should be minimized in order to ot cause problems, because it can danify the MOS transistors} 1270 30 0 0 0.4 0.4 {}
N -10 290 -10 310 {
lab=GND}
N -10 190 -10 230 {
lab=#net1}
N 440 220 570 220 {
lab=#net2}
N 400 250 400 270 {
lab=GND}
N 610 250 610 270 {
lab=GND}
N 310 220 400 220 {
lab=GND}
N 610 220 710 220 {
lab=GND}
N 610 130 610 190 {
lab=VREF}
N 400 130 400 190 {
lab=#net2}
N 440 100 570 100 {
lab=VREF}
N 400 160 460 160 {
lab=#net2}
N 460 160 460 220 {
lab=#net2}
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
N 10 890 10 910 {
lab=GND}
N 10 790 10 830 {
lab=VDD_tran}
N 270 790 400 790 {
lab=#net3}
N 230 820 230 840 {
lab=GND}
N 440 820 440 840 {
lab=GND}
N 140 790 230 790 {
lab=GND}
N 440 790 540 790 {
lab=GND}
N 440 700 440 760 {
lab=VREF_tran}
N 230 700 230 760 {
lab=#net3}
N 270 560 400 560 {
lab=#net4}
N 290 730 290 790 {
lab=#net3}
N 330 560 330 610 {
lab=#net4}
N 330 610 440 610 {
lab=#net4}
N 170 560 230 560 {
lab=VDD_tran}
N 440 560 520 560 {
lab=VDD_tran}
N 230 510 230 530 {
lab=VDD_tran}
N 230 400 440 400 {
lab=VDD_tran}
N 440 510 440 530 {
lab=#net5}
N -10 120 -10 130 {
lab=VDD}
N 260 180 260 220 {
lab=#net2}
N 260 180 400 180 {
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
lab=#net6}
N 230 590 230 620 {
lab=#net3}
N 440 590 440 610 {
lab=#net4}
N 230 620 230 700 {
lab=#net3}
N 230 730 290 730 {
lab=#net3}
N 440 610 440 650 {
lab=#net4}
N 440 500 440 510 {
lab=#net5}
N 440 400 440 440 {
lab=VDD_tran}
N 230 400 230 500 {
lab=VDD_tran}
N 230 500 230 510 {
lab=VDD_tran}
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
C {sky130_fd_pr/corner.sym} -530 -90 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -10 120 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -10 260 0 0 {name=V1 value=5
}
C {devices/gnd.sym} -10 310 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 400 270 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 610 270 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 310 220 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 710 220 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 340 100 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 690 100 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 510 50 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 610 170 2 0 {name=p4 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 10 790 0 0 {name=p5 sig_type=std_logic lab=VDD_tran}
C {devices/vsource.sym} 10 860 0 0 {name=V2 value="PULSE ( 0 5 0 1000n 10n 100u 110u 0 )"
}
C {devices/gnd.sym} 10 910 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 230 840 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 440 840 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 140 790 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 540 790 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 420 560 0 0 {name=M6
L=1.5
W=40
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 250 560 0 1 {name=M7
L=1.5
W=40
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 440 740 2 0 {name=p10 sig_type=std_logic lab=VREF_tran}
C {devices/lab_pin.sym} 170 560 0 0 {name=p7 sig_type=std_logic lab=VDD_tran}
C {devices/lab_pin.sym} 520 560 0 1 {name=p8 sig_type=std_logic lab=VDD_tran}
C {devices/lab_pin.sym} 330 400 3 1 {name=p9 sig_type=std_logic lab=VDD_tran}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 250 790 0 1 {name=M3
L=3
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 790 0 0 {name=M4
L=3
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 220 0 1 {name=M5
L=3
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 590 220 0 0 {name=M1
L=3
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 590 100 0 0 {name=M2
L=1.5
W=40
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 420 100 0 1 {name=M8
L=1.5
W=40
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} -10 160 0 0 {name=V4 value="ac 1 sin (0 100u 100k)"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 240 220 0 1 {name=M9
L=1.5
W=10
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 220 100 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 220 270 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 150 220 0 0 {name=l12 lab=GND}
C {devices/ammeter.sym} 220 140 0 0 {name=Vmeas}
C {devices/ammeter.sym} 440 680 0 0 {name=Vmeas1}
C {devices/ammeter.sym} 440 470 0 0 {name=Vmeas2}
