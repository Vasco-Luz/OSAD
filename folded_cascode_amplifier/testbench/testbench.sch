v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -410 110 -410 130 {
lab=GND}
N -410 10 -410 50 {
lab=VDD}
N -330 110 -330 130 {
lab=GND}
N -330 10 -330 50 {
lab=#net1}
N -330 130 -330 150 {
lab=GND}
N -190 120 -190 140 {
lab=GND}
N -190 20 -190 60 {
lab=#net2}
N -190 140 -190 160 {
lab=GND}
N -330 -100 -330 -50 {
lab=VIN}
N -190 -120 -190 -40 {
lab=VB}
N 570 -300 570 -280 {
lab=VDD}
N 570 -170 570 -150 {
lab=GND}
N 470 -260 470 -250 {
lab=#net3}
N 470 -250 520 -250 {
lab=#net3}
N 830 -20 850 -20 {
lab=VIN}
N 830 20 850 20 {
lab=VB}
N 620 -250 650 -250 {
lab=VB4}
N 620 -230 650 -230 {
lab=VB3}
N 620 -210 650 -210 {
lab=VB2}
N 620 -190 650 -190 {
lab=VB1}
N 830 50 850 50 {
lab=VB4}
N 830 70 850 70 {
lab=VB3}
N 830 90 850 90 {
lab=VB2}
N 830 110 850 110 {
lab=VB1}
N 720 150 850 150 {
lab=#net4}
N 880 -60 880 -40 {
lab=VDD}
N 880 40 880 60 {
lab=GND}
N 930 -20 1040 -20 {
lab=VOUT+}
N 1260 -100 1260 -80 {
lab=GND}
N 930 20 1040 20 {
lab=VOUT-}
N 1260 80 1260 100 {
lab=GND}
N 1070 -60 1070 -40 {
lab=VDD}
N 1070 40 1070 60 {
lab=GND}
N 1120 20 1260 20 {
lab=VOUT2-}
N 1120 -20 1260 -20 {
lab=VOUT2+}
N 1010 60 1010 90 {
lab=#net5}
N 1010 60 1040 60 {
lab=#net5}
C {devices/code.sym} -100 -360 0 0 {name=spice only_toplevel=false
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
plot v(VOUT+) v(VOUT-) deriv(v(VOUT+)) deriv(v(VOUT-))
plot v(VOUT2+) v(VOUT2-) deriv(v(VOUT2+)) deriv(v(VOUT2-))
*plot v(VA)
*plot i(Vmeas)
ac dec 20 1 1000G 
plot db(v(VOUT+))
plot db(v(VOUT2+)) phase(v(VOUT2+))
.endc
"}
C {sky130_fd_pr/corner.sym} -270 -360 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -410 20 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -410 80 0 0 {name=V1 value=5
}
C {devices/vsource.sym} -330 80 0 0 {name=V2 value=2.5}
C {devices/gnd.sym} -410 130 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -330 -100 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -330 150 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -190 90 0 0 {name=V6 value=2.5}
C {devices/gnd.sym} -190 160 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -190 -120 0 0 {name=p10 sig_type=std_logic lab=VB
}
C {devices/vsource.sym} -330 -20 0 0 {name=V4 value="ac 0.5 sin (0 100u 100k)"}
C {devices/vsource.sym} -190 -10 2 1 {name=V3 value="ac 0.5 sin (0 100u 100k)"}
C {/home/vasco/Desktop/sky130A/folded_cascode_amplifier/Low_voltage_current_mirror_NMOS/bias_generator.sym} 560 -220 0 0 {name=x1}
C {devices/lab_pin.sym} 570 -300 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 570 -150 0 0 {name=l1 lab=GND}
C {devices/isource.sym} 470 -290 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 470 -320 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {/home/vasco/Desktop/sky130A/folded_cascode_amplifier/1_stage/1stage.sym} 1080 30 0 0 {name=x2}
C {devices/lab_pin.sym} 830 -20 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 830 20 0 0 {name=p4 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} 650 -250 0 1 {name=p5 sig_type=std_logic lab=VB4
}
C {devices/lab_pin.sym} 650 -230 0 1 {name=p8 sig_type=std_logic lab=VB3
}
C {devices/lab_pin.sym} 650 -210 0 1 {name=p9 sig_type=std_logic lab=VB2
}
C {devices/lab_pin.sym} 650 -190 0 1 {name=p11 sig_type=std_logic lab=VB1
}
C {devices/lab_pin.sym} 830 50 0 0 {name=p12 sig_type=std_logic lab=VB4
}
C {devices/lab_pin.sym} 830 70 0 0 {name=p13 sig_type=std_logic lab=VB3
}
C {devices/lab_pin.sym} 830 90 0 0 {name=p14 sig_type=std_logic lab=VB2
}
C {devices/lab_pin.sym} 830 110 0 0 {name=p15 sig_type=std_logic lab=VB1
}
C {devices/isource.sym} 720 120 0 0 {name=I1 value=50u}
C {devices/lab_pin.sym} 720 90 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 880 -60 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 880 60 0 0 {name=l2 lab=GND}
C {devices/res.sym} 1260 -50 2 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1260 -100 2 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 970 -20 3 1 {name=p18 sig_type=std_logic lab=VOUT+
}
C {devices/res.sym} 1260 50 0 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 970 20 1 1 {name=p19 sig_type=std_logic lab=VOUT-
}
C {devices/gnd.sym} 1260 100 0 0 {name=l6 lab=GND}
C {/home/vasco/Desktop/sky130A/folded_cascode_amplifier/2_stage/second_stage.sym} 1060 0 0 0 {name=x3}
C {devices/lab_pin.sym} 1070 -60 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1070 60 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 1210 -20 3 1 {name=p21 sig_type=std_logic lab=VOUT2+
}
C {devices/lab_pin.sym} 1210 20 1 1 {name=p22 sig_type=std_logic lab=VOUT2-
}
