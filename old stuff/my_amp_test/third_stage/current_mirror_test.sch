v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -530 300 -530 320 {
lab=GND}
N -530 200 -530 240 {
lab=VDD}
N -450 300 -450 320 {
lab=GND}
N -450 200 -450 240 {
lab=VIN}
N -450 320 -450 340 {
lab=GND}
N 210 470 320 470 {
lab=#net1}
N 360 470 430 470 {
lab=GND}
N 160 570 320 570 {
lab=#net2}
N 360 500 360 540 {
lab=#net3}
N 360 600 360 620 {
lab=GND}
N 360 570 430 570 {
lab=GND}
N 100 200 100 230 {
lab=VDD}
N 100 290 100 360 {
lab=#net1}
N 100 510 100 550 {
lab=#net4}
N 100 610 100 630 {
lab=GND}
N 20 580 100 580 {
lab=GND}
N 20 480 100 480 {
lab=GND}
N 100 420 100 450 {
lab=#net2}
N 100 340 210 340 {
lab=#net1}
N 210 340 210 480 {
lab=#net1}
N 140 480 210 480 {
lab=#net1}
N 140 580 160 580 {
lab=#net2}
N 160 440 160 580 {
lab=#net2}
N 100 440 160 440 {
lab=#net2}
N 360 50 360 80 {
lab=VDD}
N 300 290 340 290 {
lab=VDD}
N 360 140 360 170 {
lab=#net5}
N 360 230 360 260 {
lab=#net6}
N 350 200 360 200 {
lab=#net5}
N 350 170 350 200 {
lab=#net5}
N 350 170 360 170 {
lab=#net5}
N 350 110 360 110 {
lab=VDD}
N 350 80 350 110 {
lab=VDD}
N 350 80 360 80 {
lab=VDD}
N 430 110 430 240 {
lab=#net6}
N 360 240 430 240 {
lab=#net6}
N 400 110 430 110 {
lab=#net6}
N 400 200 400 330 {
lab=#net7}
N 360 330 400 330 {
lab=#net7}
N 360 320 360 330 {
lab=#net7}
N 360 330 360 350 {
lab=#net7}
N 360 410 360 440 {
lab=#net8}
C {sky130_fd_pr/corner.sym} -390 -170 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -530 210 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -530 270 0 0 {name=V1 value=5
}
C {devices/vsource.sym} -450 270 0 0 {name=V2 value=2.5}
C {devices/gnd.sym} -530 320 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -450 210 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -450 340 0 0 {name=l5 lab=GND}
C {devices/code.sym} -210 -170 0 0 {name=spice only_toplevel=false
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
*dc simulation
*ploting VIN VOUT and the voltage gain
plot i(Vmeas) 
plot 1/deriv(i(Vmeas))
.endc
"}
C {devices/gnd.sym} 430 470 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 360 620 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 430 570 0 0 {name=l9 lab=GND}
C {devices/isource.sym} 100 260 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 100 200 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 80 390 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 100 630 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 20 580 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 20 480 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 360 50 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 300 290 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/ammeter.sym} 360 380 0 0 {name=Vmeas}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 120 480 0 1 {name=M2
L=1.2
W=15
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 120 580 0 1 {name=M3
L=2
W=15
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_2p85.sym} 100 390 0 0 {name=R14

L=80
model=res_high_po_2p85
spiceprefix=X
 mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 340 470 0 0 {name=M1
L=1.2
W=15
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 340 570 0 0 {name=M6
L=2
W=15
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_2p85.sym} 360 290 0 0 {name=R2

L=200
model=res_high_po_2p85
spiceprefix=X
 mult=1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 110 0 1 {name=M9
L=2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 200 0 1 {name=M4
L=1
W=15
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
