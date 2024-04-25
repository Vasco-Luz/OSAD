v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {NMOS current design} 280 -90 0 0 0.4 0.4 {}
T {IREF is assumed to be 5uA
the desired IBIAS is 50u, so just perform a simple dc simulation
the minimum allowed voltage is 0.5V(depends on the objective,the desired swing)
the current mirror multiple is dimensionated to obtain the 10x5u = 50uA} 600 40 0 0 0.4 0.4 {}
N -120 200 -120 220 {
lab=GND}
N -120 100 -120 140 {
lab=VDD}
N -40 200 -40 220 {
lab=GND}
N -40 100 -40 140 {
lab=VIN}
N -40 220 -40 240 {
lab=GND}
N 490 130 490 200 {
lab=#net1}
N 490 20 490 70 {
lab=VIN}
N 490 200 490 220 {
lab=#net1}
N 340 250 450 250 {
lab=#net2}
N 300 170 300 220 {
lab=#net2}
N 380 200 380 250 {
lab=#net2}
N 300 280 300 310 {
lab=GND}
N 490 280 490 310 {
lab=GND}
N 300 70 300 170 {
lab=#net2}
N 300 -20 300 10 {
lab=VDD}
N 300 250 300 280 {
lab=GND}
N 490 250 490 280 {
lab=GND}
N 300 200 380 200 {
lab=#net2}
C {sky130_fd_pr/corner.sym} -240 -100 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -100 -100 0 0 {name=spice only_toplevel=false
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
dc V2 0 1.8 0.001 
*dc simulation
plot i(Vmeas) 
plot 1/deriv(i(Vmeas))
.endc
"}
C {devices/lab_pin.sym} -120 110 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -120 170 0 0 {name=V1 value=1.8

}
C {devices/vsource.sym} -40 170 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} -120 220 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -40 110 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -40 240 0 0 {name=l5 lab=GND}
C {devices/ammeter.sym} 490 100 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 490 20 1 0 {name=p2 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} 300 310 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 490 310 0 0 {name=l2 lab=GND}
C {devices/isource.sym} 300 40 0 0 {name=I0 value=5u}
C {devices/lab_pin.sym} 300 -20 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8_nf.sym} 470 250 0 0 {name=M34
L=6
W=0.9  
nf=2 mult=10
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 320 250 0 1 {name=M1
L=6
W=0.9  
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
