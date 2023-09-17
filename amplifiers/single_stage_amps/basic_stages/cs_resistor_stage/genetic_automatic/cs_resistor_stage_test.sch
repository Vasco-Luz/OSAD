v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -250 430 -220 {
lab=VOUT}
N 430 -340 430 -310 {
lab=#net1}
N 430 -160 430 -130 {
lab=GND}
N 430 -130 430 -110 {
lab=GND}
N 430 -190 500 -190 {
lab=GND}
N 100 -350 100 -330 {
lab=GND}
N 100 -450 100 -410 {
lab=VDD}
N 430 -440 430 -400 {
lab=VDD}
N 180 -350 180 -330 {
lab=GND}
N 340 -190 390 -190 {
lab=VIN}
N 180 -330 180 -310 {
lab=GND}
N 430 -230 480 -230 {
lab=VOUT}
N 650 -230 690 -230 {
lab=VOUT}
N 480 -230 650 -230 {
lab=VOUT}
N 650 -170 650 -150 {
lab=GND}
N 390 -280 410 -280 {
lab=VDD}
N 180 -510 180 -500 {
lab=VIN}
N 180 -500 180 -480 {
lab=VIN}
N 180 -550 180 -510 {
lab=VIN}
N 180 -420 180 -410 {
lab=#net2}
C {devices/code.sym} 10 -160 0 0 {name=spice only_toplevel=false
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
.param R1 = 5
.param L1 = 0.5
.param VDD = 5
.param W1 = 50
.param vin =  2



save all
dc V2 0 5 0.01
plot v(VOUT) deriv(v(VOUT))



.endc
"}
C {devices/ammeter.sym} 430 -370 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 100 -440 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 430 -110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 500 -190 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 100 -380 0 0 {name=V1 value="VDD"
}
C {devices/vsource.sym} 180 -380 0 0 {name=V2 value= "vin"}
C {devices/gnd.sym} 100 -330 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 430 -430 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -550 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 690 -230 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 340 -190 0 0 {name=p4 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} 180 -310 0 0 {name=l5 lab=GND}
C {devices/res.sym} 650 -200 0 0 {name=R2
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 650 -150 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/corner.sym} -160 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} 390 -280 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po_0p35.sym} 430 -280 0 0 {name=R6
L=R1
model=res_high_po_0p35
spiceprefix=X
 mult=2}
C {devices/vsource.sym} 180 -450 0 0 {name=V4 value="ac 1.0 sin (0 100u 100k)"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 -190 0 0 {name=M5
L=L1
W=W1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
