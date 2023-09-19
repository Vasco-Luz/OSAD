v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -850 130 -850 150 {
lab=GND}
N -850 30 -850 70 {
lab=VDD}
N -770 130 -770 150 {
lab=GND}
N -770 30 -770 70 {
lab=VIN}
N -770 150 -770 170 {
lab=GND}
N -630 140 -630 160 {
lab=GND}
N -630 40 -630 80 {
lab=VB}
N -630 160 -630 180 {
lab=GND}
N 290 -650 290 -600 {
lab=#net1}
N 1330 -280 1330 -240 {
lab=GND}
N 1330 -540 1330 -340 {
lab=VB3}
N 1330 -640 1330 -600 {
lab=VDD}
N 1320 -570 1330 -570 {
lab=VDD}
N 1250 -570 1320 -570 {
lab=VDD}
N 1400 -570 1400 -520 {
lab=VB3}
N 290 -570 300 -570 {
lab=#net1}
N 300 -600 300 -570 {
lab=#net1}
N 290 -600 300 -600 {
lab=#net1}
N 290 -540 290 -470 {
lab=VC}
N 200 -470 200 -440 {
lab=VC}
N 200 -470 290 -470 {
lab=VC}
N 290 -470 380 -470 {
lab=VC}
N 380 -470 390 -470 {
lab=VC}
N 390 -470 390 -440 {
lab=VC}
N 200 -410 390 -410 {
lab=VC}
N 130 -410 160 -410 {
lab=VIN}
N 430 -410 460 -410 {
lab=VB}
N 620 -510 760 -510 {
lab=#net2}
N 600 -560 600 -540 {
lab=VDD}
N 600 -560 780 -560 {
lab=VDD}
N 780 -560 780 -540 {
lab=VDD}
N 600 -420 780 -420 {
lab=GND}
N 600 -480 600 -450 {
lab=VOUT+}
N 780 -480 780 -450 {
lab=VOUT-}
N 540 -420 560 -420 {
lab=VB2}
N 820 -420 830 -420 {
lab=VB2}
N 830 -420 840 -420 {
lab=VB2}
N 1100 -570 1100 -550 {
lab=VDD}
N 1100 -490 1100 -470 {
lab=VB2}
N 1100 -440 1170 -440 {
lab=GND}
N 1050 -480 1100 -480 {
lab=VB2}
N 1050 -480 1050 -440 {
lab=VB2}
N 1050 -440 1060 -440 {
lab=VB2}
N 600 -390 600 -260 {
lab=#net3}
N 780 -390 780 -260 {
lab=#net4}
N 600 -230 780 -230 {
lab=GND}
N 600 -200 600 -150 {
lab=GND}
N 600 -150 780 -150 {
lab=GND}
N 780 -200 780 -150 {
lab=GND}
N 690 -150 690 -120 {
lab=GND}
N 1100 -290 1110 -290 {
lab=GND}
N 1110 -290 1110 -260 {
lab=GND}
N 1100 -260 1110 -260 {
lab=GND}
N 1040 -290 1060 -290 {
lab=VB1}
N 1040 -340 1040 -290 {
lab=VB1}
N 1040 -340 1100 -340 {
lab=VB1}
N 820 -230 830 -230 {
lab=VB1}
N 830 -230 840 -230 {
lab=VB1}
N 540 -230 560 -230 {
lab=VB1}
N 1370 -570 1400 -570 {
lab=VB3}
N 1330 -520 1400 -520 {
lab=VB3}
N 200 -570 250 -570 {
lab=VB3}
N 200 -380 200 -340 {
lab=#net3}
N 200 -340 600 -340 {
lab=#net3}
N 390 -380 390 -370 {
lab=#net4}
N 390 -370 780 -370 {
lab=#net4}
N 1100 -260 1100 -230 {
lab=GND}
N 1100 -340 1100 -320 {
lab=VB1}
N 1100 -410 1100 -340 {
lab=VB1}
C {devices/code.sym} -540 -340 0 0 {name=spice only_toplevel=false
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
dc V2 0 5 0.01 
*dc simulation
plot v(VOUT+) deriv(v(VOUT+))
plot i(Vmeas) 

.endc
"}
C {sky130_fd_pr/corner.sym} -710 -340 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -850 40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -850 100 0 0 {name=V1 value=5
}
C {devices/vsource.sym} -770 100 0 0 {name=V2 value=3}
C {devices/gnd.sym} -850 150 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -770 40 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -770 170 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -630 110 0 0 {name=V6 value=2.5}
C {devices/gnd.sym} -630 180 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -630 40 0 0 {name=p10 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} 290 -710 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 1330 -310 0 0 {name=I0 value=50u}
C {devices/gnd.sym} 1330 -240 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 290 -680 0 0 {name=Vmeas}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1350 -570 0 1 {name=M9
L=1
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1330 -640 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1250 -570 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 270 -570 0 0 {name=M1
L=1
W=60
nf=1 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 290 -510 0 0 {name=p4 sig_type=std_logic lab=VC}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 180 -410 0 0 {name=M2
L=1
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 410 -410 0 1 {name=M3
L=1
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 290 -410 3 0 {name=p5 sig_type=std_logic lab=VC}
C {devices/lab_pin.sym} 130 -410 3 0 {name=p8 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 460 -410 3 0 {name=p9 sig_type=std_logic lab=VB}
C {sky130_fd_pr/res_high_po_0p35.sym} 600 -510 0 1 {name=R6
L=1*40
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 780 -510 0 0 {name=R1
L=1*40
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 690 -560 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 580 -420 0 0 {name=M5
L=1
W=80
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 800 -420 0 1 {name=M4
L=1
W=80
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 690 -420 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 540 -420 0 0 {name=p12 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 840 -420 2 0 {name=p30 sig_type=std_logic lab=VB2}
C {devices/isource.sym} 1100 -520 0 0 {name=I1 value=50u}
C {devices/lab_pin.sym} 1100 -570 1 0 {name=p32 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -440 0 0 {name=M6
L=1
W=80
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 1170 -440 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 1050 -460 0 0 {name=p35 sig_type=std_logic lab=VB2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 580 -230 0 0 {name=M7
L=1
W=60
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 800 -230 0 1 {name=M8
L=1
W=60
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 690 -230 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 690 -120 0 0 {name=l21 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1080 -290 0 0 {name=M10
L=1
W=60
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1040 -300 0 0 {name=p36 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 840 -230 0 1 {name=p37 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 540 -230 0 0 {name=p38 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 1400 -550 2 0 {name=p39 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} 200 -570 2 1 {name=p40 sig_type=std_logic lab=VB3}
C {devices/lab_pin.sym} 600 -470 0 0 {name=p41 sig_type=std_logic lab=VOUT+}
C {devices/lab_pin.sym} 780 -470 0 0 {name=p42 sig_type=std_logic lab=VOUT-}
C {devices/gnd.sym} 1100 -230 0 0 {name=l23 lab=GND}
