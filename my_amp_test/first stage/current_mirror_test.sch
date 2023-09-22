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
N 130 -30 130 0 {
lab=VDD}
N 130 60 130 130 {
lab=Va}
N 390 10 390 90 {
lab=VIN}
N 130 280 130 320 {
lab=Vc}
N 130 380 130 400 {
lab=GND}
N 50 350 130 350 {
lab=GND}
N 50 250 130 250 {
lab=GND}
N 130 190 130 220 {
lab=Vb}
N 130 110 240 110 {
lab=Va}
N 240 110 240 250 {
lab=Va}
N 170 250 240 250 {
lab=Va}
N 170 350 190 350 {
lab=Vb}
N 190 210 190 350 {
lab=Vb}
N 130 210 190 210 {
lab=Vb}
N 240 250 350 250 {
lab=Va}
N 390 250 460 250 {
lab=GND}
N 190 350 350 350 {
lab=Vb}
N 390 280 390 320 {
lab=#net1}
N 390 380 390 400 {
lab=GND}
N 390 150 390 220 {
lab=#net2}
N 390 350 460 350 {
lab=GND}
C {devices/code.sym} -220 -170 0 0 {name=spice only_toplevel=false
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
plot v(Va) v(Vb) v(Vc)
.endc
"}
C {sky130_fd_pr/corner.sym} -390 -170 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -530 210 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -530 270 0 0 {name=V1 value=5
}
C {devices/vsource.sym} -450 270 0 0 {name=V2 value=2.5}
C {devices/gnd.sym} -530 320 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -450 210 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -450 340 0 0 {name=l5 lab=GND}
C {devices/isource.sym} 130 30 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 130 -30 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/ammeter.sym} 390 120 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 390 10 1 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 130 90 0 0 {name=p4 sig_type=std_logic lab=Va
}
C {sky130_fd_pr/res_high_po_2p85.sym} 130 160 0 0 {name=R14

L=80
model=res_high_po_2p85
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 110 160 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 150 250 0 1 {name=M5
L=1.2
W=15
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 150 350 0 1 {name=M1
L=2
W=15
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 130 400 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 50 350 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 50 250 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 460 250 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 390 400 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 130 200 0 0 {name=p5 sig_type=std_logic lab=Vb
}
C {devices/lab_pin.sym} 130 300 0 0 {name=p8 sig_type=std_logic lab=Vc
}
C {devices/gnd.sym} 460 350 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 370 250 0 0 {name=M2
L=1.2
W=60
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 370 350 0 0 {name=M3
L=2
W=60
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
