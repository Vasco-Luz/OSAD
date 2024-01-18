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
N 360 20 360 50 {
lab=VDD}
N 300 260 340 260 {
lab=VDD}
N 400 80 560 80 {
lab=Va}
N 400 170 560 170 {
lab=Vc}
N 360 110 360 140 {
lab=Vb}
N 360 200 360 230 {
lab=Va}
N 350 170 360 170 {
lab=Vb}
N 350 140 350 170 {
lab=Vb}
N 350 140 360 140 {
lab=Vb}
N 350 80 360 80 {
lab=VDD}
N 350 50 350 80 {
lab=VDD}
N 350 50 360 50 {
lab=VDD}
N 360 290 360 320 {
lab=Vc}
N 360 380 360 400 {
lab=GND}
N 600 80 680 80 {
lab=VDD}
N 600 170 680 170 {
lab=VDD}
N 600 30 600 50 {
lab=VDD}
N 600 110 600 140 {
lab=#net1}
N 600 210 600 240 {
lab=#net2}
N 600 200 600 210 {
lab=#net2}
N 600 300 600 410 {
lab=VIN}
N 430 80 430 210 {
lab=Va}
N 360 210 430 210 {
lab=Va}
N 470 170 470 300 {
lab=Vc}
N 360 300 470 300 {
lab=Vc}
C {sky130_fd_pr/corner.sym} -390 -170 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -530 210 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -530 270 0 0 {name=V1 value=5
}
C {devices/vsource.sym} -450 270 0 0 {name=V2 value=2.5}
C {devices/gnd.sym} -530 320 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -450 210 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -450 340 0 0 {name=l5 lab=GND}
C {devices/isource.sym} 360 350 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 360 20 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 80 0 1 {name=M9
L=2
W=20
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 170 0 1 {name=M1
L=1
W=15
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_2p85.sym} 360 260 0 0 {name=R14

L=200
model=res_high_po_2p85
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 300 260 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 360 400 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 680 80 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 680 170 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 600 30 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/ammeter.sym} 600 270 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 600 410 3 0 {name=p8 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 470 80 1 0 {name=p9 sig_type=std_logic lab=Va}
C {devices/lab_pin.sym} 360 120 2 0 {name=p10 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 470 200 2 0 {name=p11 sig_type=std_logic lab=Vc}
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
plot v(Va) v(Vb) v(Vc)
.endc
"}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 580 80 0 0 {name=M2
L=2
W=80
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 580 170 0 0 {name=M3
L=1
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
