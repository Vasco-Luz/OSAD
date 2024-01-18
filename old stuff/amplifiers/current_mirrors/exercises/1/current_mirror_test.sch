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
N 170 150 250 150 {
lab=Vx}
N 130 100 130 120 {
lab=Vx}
N 130 100 210 100 {
lab=Vx}
N 210 100 210 150 {
lab=Vx}
N 40 150 130 150 {
lab=GND}
N 290 150 380 150 {
lab=GND}
N 130 180 130 230 {
lab=GND}
N 290 180 290 230 {
lab=GND}
N 130 230 290 230 {
lab=GND}
N 210 230 210 240 {
lab=GND}
N 130 60 130 100 {
lab=Vx}
N 290 60 290 120 {
lab=Vy}
N 150 30 270 30 {
lab=VDD}
N 130 -40 130 -0 {
lab=VDD}
N 130 -40 290 -40 {
lab=VDD}
N 290 -40 290 -0 {
lab=VDD}
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
dc V1 0 5 0.001 
plot v(Vx) v(Vy)
plot v(Vy)

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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 150 150 0 1 {name=M5
L=1
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 270 150 0 0 {name=M1
L=1
W=30
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 40 150 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 380 150 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 210 240 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/res_high_po_0p35.sym} 130 30 0 1 {name=R6
L=1*10
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 290 30 0 0 {name=R1
L=1*10
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 210 30 3 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 210 -40 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 80 0 0 {name=p3 sig_type=std_logic lab=Vx}
C {devices/lab_pin.sym} 290 80 0 1 {name=p4 sig_type=std_logic lab=Vy}
