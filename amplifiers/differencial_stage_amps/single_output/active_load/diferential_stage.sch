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
N -310 -140 -310 -120 {
lab=GND}
N -310 -240 -310 -200 {
lab=VB2}
N -310 -120 -310 -100 {
lab=GND}
N 250 -160 410 -160 {
lab=#net1}
N 210 -130 210 -100 {
lab=#net1}
N 210 -100 290 -100 {
lab=#net1}
N 290 -100 320 -100 {
lab=#net1}
N 320 -160 320 -100 {
lab=#net1}
N 210 -240 210 -190 {
lab=VDD}
N 210 -240 450 -240 {
lab=VDD}
N 450 -240 450 -190 {
lab=VDD}
N 200 -160 210 -160 {
lab=VDD}
N 200 -190 200 -160 {
lab=VDD}
N 200 -190 210 -190 {
lab=VDD}
N 450 -160 460 -160 {
lab=VDD}
N 460 -190 460 -160 {
lab=VDD}
N 450 -190 460 -190 {
lab=VDD}
N 210 -100 210 -30 {
lab=#net1}
N 450 -130 450 -30 {
lab=VOUT}
N 210 -0 450 -0 {
lab=GND}
N 490 0 510 -0 {
lab=VB}
N 150 0 170 -0 {
lab=VIN}
N 210 30 210 80 {
lab=#net2}
N 210 80 450 80 {
lab=#net2}
N 450 30 450 80 {
lab=#net2}
N 320 80 320 180 {
lab=#net2}
N 70 100 70 120 {
lab=#net3}
N 70 120 270 120 {
lab=#net3}
N 270 120 270 140 {
lab=#net3}
N 70 30 70 40 {
lab=VDD}
N 270 230 270 250 {
lab=GND}
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
plot v(VOUT) v(VIN) deriv(v(VOUT))

.endc
"}
C {sky130_fd_pr/corner.sym} -710 -340 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -850 40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -850 100 0 0 {name=V1 value=5
}
C {devices/vsource.sym} -770 100 0 0 {name=V2 value=2.5}
C {devices/gnd.sym} -850 150 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -770 40 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -770 170 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -630 110 0 0 {name=V6 value=2.5}
C {devices/gnd.sym} -630 180 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -630 40 0 0 {name=p10 sig_type=std_logic lab=VB
}
C {devices/vsource.sym} -310 -170 0 0 {name=V3 value=3.5}
C {devices/gnd.sym} -310 -100 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -310 -240 0 0 {name=p3 sig_type=std_logic lab=VB2
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 430 -160 0 0 {name=M9
L=1.5
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 230 -160 0 1 {name=M1
L=1.5
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 330 -240 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 190 0 0 0 {name=M5
L=1
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 470 0 0 1 {name=M2
L=1
W=20
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 330 0 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 510 0 0 1 {name=p4 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} 150 0 0 0 {name=p5 sig_type=std_logic lab=VIN
}
C {/home/vasco/Desktop/sky130A/amplifiers/current_mirrors/lower_vt_current_mirror/current_mirror.sym} 280 190 0 0 {name=x6}
C {devices/isource.sym} 70 70 0 0 {name=I0 value=200m}
C {devices/lab_pin.sym} 70 30 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 270 250 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 450 -80 0 1 {name=p9 sig_type=std_logic lab=VOUT
}
