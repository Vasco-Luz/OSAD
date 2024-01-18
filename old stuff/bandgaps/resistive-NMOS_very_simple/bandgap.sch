v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {The most basic bandgap in existance.
In simple terms the current pushed by the diode connected NMOS and the resistor create an voltage reference
that is not very suscetable for variation in VDD as shown in the simulations

But it suffer a big variation from Temperature and process variation, so we cant considerit a strong bias voltage, but it serves its purpose

The Resistance has a negative Temperature coefecient, ths means the Resistance increases with temperature

In the case of the NMOS, its VTH increases with temperature, decreasing the current and "depending" in the variation of R and VTH sometimes VrEF increases or decreases or does a 2 order variation


The value dependes a lot of VDD


} 330 -330 0 0 0.4 0.4 {}
N -510 -220 -510 -200 {
lab=GND}
N -510 -320 -510 -280 {
lab=#net1}
N -100 -260 -100 -240 {
lab=GND}
N -190 -290 -100 -290 {
lab=GND}
N -40 -350 -40 -290 {
lab=VREF}
N -490 380 -490 400 {
lab=GND}
N -490 280 -490 320 {
lab=VDD_tran}
N -510 -390 -510 -380 {
lab=VDD}
N -100 -360 -100 -320 {
lab=VREF}
N -100 -360 -40 -360 {
lab=VREF}
N -40 -360 -40 -350 {
lab=VREF}
N -60 -290 -40 -290 {
lab=VREF}
N -100 -370 -100 -360 {
lab=VREF}
N -140 -400 -120 -400 {
lab=VDD}
N -100 -450 -100 -430 {
lab=VDD}
N -190 320 -190 340 {
lab=GND}
N -280 290 -190 290 {
lab=GND}
N -130 230 -130 290 {
lab=VREF_tran}
N -190 220 -190 260 {
lab=VREF_tran}
N -190 220 -130 220 {
lab=VREF_tran}
N -130 220 -130 230 {
lab=VREF_tran}
N -150 290 -130 290 {
lab=VREF_tran}
N -190 210 -190 220 {
lab=VREF_tran}
N -230 180 -210 180 {
lab=VDD_tran}
N -190 130 -190 150 {
lab=VDD_tran}
C {devices/code.sym} -860 -600 0 0 {name=spice only_toplevel=false
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
tran 10ns 1us
plot v(VREF_tran)
ac dec 20 1 1000G 
plot db(v(VREF))

.endc
"}
C {sky130_fd_pr/corner.sym} -1030 -600 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -510 -390 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -510 -250 0 0 {name=V1 value=5
}
C {devices/gnd.sym} -510 -200 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -100 -240 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -190 -290 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -490 280 0 0 {name=p5 sig_type=std_logic lab=VDD_tran}
C {devices/vsource.sym} -490 350 0 0 {name=V2 value="PULSE ( 0 5 0 500n 10n 100u 110u 0 )"
}
C {devices/gnd.sym} -490 400 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -80 -290 0 1 {name=M5
L=1
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} -510 -350 0 0 {name=V4 value="ac 1 sin (0 100u 100k)"}
C {sky130_fd_pr/res_high_po_0p35.sym} -100 -400 0 0 {name=R6
L=1*5
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -140 -400 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -100 -450 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -40 -360 2 0 {name=p3 sig_type=std_logic lab=VREF}
C {devices/gnd.sym} -190 340 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -280 290 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -170 290 0 1 {name=M1
L=1
W=25
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} -190 180 0 0 {name=R1
L=1*5
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -230 180 0 0 {name=p4 sig_type=std_logic lab=VDD_tran}
C {devices/lab_pin.sym} -190 130 1 0 {name=p7 sig_type=std_logic lab=VDD_tran}
C {devices/lab_pin.sym} -130 220 2 0 {name=p8 sig_type=std_logic lab=VREF_tran}
