v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -350 100 -330 {
lab=GND}
N 100 -450 100 -410 {
lab=VDD}
N 430 -390 430 -350 {
lab=VDD}
N 180 -350 180 -330 {
lab=GND}
N 180 -450 180 -410 {
lab=VIN}
N 340 -230 390 -230 {
lab=VIN}
N 180 -330 180 -310 {
lab=GND}
N 650 -230 690 -230 {
lab=VOUT}
N 480 -230 650 -230 {
lab=VOUT}
N 650 -170 650 -150 {
lab=GND}
N 370 -40 390 -40 {
lab=VIN}
N 430 -90 430 -70 {
lab=VDD}
N 430 -10 430 0 {
lab=GND}
N 540 -40 580 -40 {
lab=VOUT_tran}
N 540 20 540 40 {
lab=GND}
N 480 -40 540 -40 {
lab=VOUT_tran}
N 430 -290 430 -260 {
lab=#net1}
N 430 -200 430 -180 {
lab=GND}
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
.include ~/Documents/cs_resistor_stage_post_layout.spice
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
plot v(VOUT) v(VIN) deriv(v(VOUT)) v(VOUt_tran) deriv(v(VOUT_tran))

.endc
"}
C {devices/ammeter.sym} 430 -320 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 100 -440 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 100 -380 0 0 {name=V1 value=5
}
C {devices/vsource.sym} 180 -380 0 0 {name=V2 value=1.265}
C {devices/gnd.sym} 100 -330 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 430 -390 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -440 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 690 -230 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 340 -230 0 0 {name=p4 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} 180 -310 0 0 {name=l5 lab=GND}
C {devices/res.sym} 650 -200 0 0 {name=R2
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 650 -150 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/corner.sym} -160 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {/home/vasco/Desktop/sky130A/amp_tests/basic_stages/cs_resistor_stage/cs_resistor_stage_post.sym} 510 -40 0 0 {name=x2}
C {devices/lab_pin.sym} 370 -40 0 0 {name=p11 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 430 -90 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 430 0 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 580 -40 2 0 {name=p13 sig_type=std_logic lab=VOUT_tran}
C {devices/res.sym} 540 -10 0 0 {name=R1
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 540 40 0 0 {name=l10 lab=GND}
C {/home/vasco/Desktop/sky130A/amp_tests/basic_stages/cs_resistor_stage/cs_resistor_stage.sym} 510 -230 0 0 {name=x8}
C {devices/gnd.sym} 430 -180 0 0 {name=l1 lab=GND}
