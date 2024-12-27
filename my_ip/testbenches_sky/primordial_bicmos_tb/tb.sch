v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -1620 -480 -960 -480 {}
L 4 -960 -480 -870 -480 {}
L 4 -870 -480 -870 -140 {}
L 4 -1610 -140 -870 -140 {}
L 4 -1620 -470 -1620 -140 {}
L 4 -1620 -480 -1620 -470 {}
L 4 -1620 -140 -1610 -140 {}
L 4 -1360 -840 -1360 -680 {}
L 4 -1360 -680 -1040 -680 {}
L 4 -1040 -860 -1040 -680 {}
L 4 -1360 -860 -1040 -860 {}
L 4 -1360 -860 -1360 -840 {}
T {SOURCES} -1380 -550 0 0 1 1 {}
T {simulation scripts} -1450 -940 0 0 1 1 {}
N -1430 -290 -1430 -270 {
lab=GND}
N -1430 -390 -1430 -350 {
lab=VDD}
N -1500 -290 -1500 -270 {
lab=GND}
N -1500 -390 -1500 -350 {
lab=VSS}
N -640 -450 -640 -410 {
lab=VDD}
N -640 -330 -640 -290 {
lab=VSS}
N -1220 -290 -1220 -270 {
lab=GND}
N -1220 -460 -1220 -420 {
lab=Vin}
N -710 -370 -670 -370 {
lab=Vin}
N -420 -310 -420 -280 {
lab=VSS}
N -580 -370 -420 -370 {
lab=VOUT}
N -1220 -360 -1220 -350 {
lab=#net1}
C {devices/lab_pin.sym} -1430 -390 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -1430 -320 0 0 {name=V1 value=5

}
C {devices/gnd.sym} -1430 -270 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1500 -390 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1500 -320 0 0 {name=V2 value=0


}
C {devices/gnd.sym} -1500 -270 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -1330 -810 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -1190 -810 0 0 {name=spice only_toplevel=false
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
.include ~/PDK/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice



.control
save all
op
write tb.raw
set appendwrite

dc V3 0 5 0.001
plot v(VOUT)
ac dec 10 1 50G
plot db(v(VOUT))

tran 10ns 50u
plot v(VOUT)

set appendwrite
write tb.raw

op
write tb.raw
.endc
"}
C {devices/lab_pin.sym} -640 -450 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -640 -290 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1220 -320 0 0 {name=V3 value=2.8

}
C {devices/gnd.sym} -1220 -270 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -1220 -460 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -710 -370 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {devices/capa.sym} -420 -340 0 0 {name=C10
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -420 -280 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -510 -370 1 0 {name=p7 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -1220 -390 0 0 {name=V13 value="ac 1 sin (0 200m 100k)"}
C {primordial_bicmos/audio003_5V_sky130A.sym} -620 -370 0 0 {name=x1}
C {devices/launcher.sym} -850 -630 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
