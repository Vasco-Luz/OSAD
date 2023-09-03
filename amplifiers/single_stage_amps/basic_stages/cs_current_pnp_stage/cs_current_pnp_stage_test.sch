v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -250 430 -220 {
lab=VOUT}
N 430 -160 430 -130 {
lab=GND}
N 430 -130 430 -110 {
lab=GND}
N 100 -350 100 -330 {
lab=GND}
N 100 -450 100 -410 {
lab=VDD}
N 430 -440 430 -400 {
lab=VDD}
N 180 -350 180 -330 {
lab=GND}
N 180 -450 180 -410 {
lab=VIN}
N 180 -330 180 -310 {
lab=GND}
N 250 270 250 300 {
lab=GND}
N 650 -230 690 -230 {
lab=VOUT}
N 480 -230 650 -230 {
lab=VOUT}
N 650 -170 650 -150 {
lab=GND}
N 250 190 300 190 {
lab=VINT}
N 250 190 250 210 {
lab=VINT}
N 360 190 430 190 {
lab=#net1}
N 650 190 690 190 {
lab=VOUTT}
N 650 250 650 270 {
lab=GND}
N 610 190 650 190 {
lab=VOUTT}
N 420 110 420 190 {
lab=#net1}
N 420 30 420 50 {
lab=VIN}
N 430 -190 470 -190 {
lab=GND}
N 310 -190 320 -190 {
lab=VIN}
N 500 450 500 470 {
lab=#net2}
N 420 500 440 500 {
lab=VIN}
N 600 500 640 500 {
lab=VOUT_a+}
N 600 560 600 580 {
lab=GND}
N 500 380 520 380 {
lab=VDD}
N 500 440 500 450 {
lab=#net2}
N 420 740 440 740 {
lab=VIN}
N 600 740 640 740 {
lab=VOUT_a-}
N 600 800 600 820 {
lab=GND}
N 490 800 490 810 {
lab=#net3}
N 490 870 490 890 {
lab=GND}
N 430 -270 430 -250 {
lab=VOUT}
N 430 -230 480 -230 {
lab=VOUT}
N 340 -190 390 -190 {
lab=VIN}
N 320 -190 340 -190 {
lab=VIN}
N 430 -340 430 -330 {
lab=#net4}
N 430 -300 480 -300 {
lab=VDD}
N 260 -350 260 -310 {
lab=GND}
N 260 -450 260 -410 {
lab=VB}
N 370 -300 390 -300 {
lab=VB}
N 490 780 490 800 {
lab=#net3}
N 480 230 480 250 {
lab=GND}
N 540 500 600 500 {
lab=VOUT_a+}
N 530 190 550 190 {
lab=#net5}
N 540 740 600 740 {
lab=VOUT_a-}
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
save all
dc V2 0 5 0.01 
*dc simulation
plot v(VOUT) v(VIN) deriv(v(VOUT))
*ploting VIN VOUT and the voltage gain
plot i(Vmeas) 
*ploting the current for curiosity
tran 0.1ns 20u 
*transient simulation
plot (v(VINT)) (v(VOUTT)) 
*simple plot to exemplify the gain
fft v(VOUTT) v(VINT) 
*fast fourier transfor
plot mag(v(VOUTT)) mag(v(VINT)) 
* analyse the frequency spectrum of the transient waves, to detect distortion
ac dec 20 1 50G 
*simple ac simulation
plot db(v(VOUTT))
plot db(v(VOUT_a+))
plot db(v(VOUT_a-))
*gain in function of the input frequency
.endc
"}
C {devices/ammeter.sym} 430 -370 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 100 -440 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 430 -110 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 100 -380 0 0 {name=V1 value=5
}
C {devices/vsource.sym} 180 -380 0 0 {name=V2 value=1.010
}
C {devices/gnd.sym} 100 -330 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 430 -430 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 250 300 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 180 -440 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 690 -230 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 250 240 0 0 {name=V3 value="ac 1.0 sin (0 100u 100k)"}
C {devices/lab_pin.sym} 310 -190 0 0 {name=p4 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} 180 -310 0 0 {name=l5 lab=GND}
C {devices/res.sym} 650 -200 0 0 {name=R2
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 650 -150 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 330 190 3 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 420 30 0 0 {name=p6 sig_type=std_logic lab=VIN
}
C {devices/res.sym} 420 80 0 0 {name=R3
value=10M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 650 220 0 0 {name=R5
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 650 270 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 690 190 2 0 {name=p8 sig_type=std_logic lab=VOUTT}
C {devices/lab_pin.sym} 260 190 1 0 {name=p9 sig_type=std_logic lab=VINT
}
C {sky130_fd_pr/corner.sym} -160 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/capa.sym} 580 190 3 0 {name=C2
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 490 160 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 480 250 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 470 -190 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 520 380 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 490 540 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 420 500 0 0 {name=p13 sig_type=std_logic lab=VIN
}
C {devices/res.sym} 600 530 0 0 {name=R4
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 600 580 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 640 500 2 0 {name=p14 sig_type=std_logic lab=VOUT_a+}
C {devices/vsource.sym} 500 410 2 0 {name=V4 value="ac 1.0 sin (0 0 100k)"}
C {devices/lab_pin.sym} 500 710 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 490 890 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 420 740 0 0 {name=p16 sig_type=std_logic lab=VIN
}
C {devices/res.sym} 600 770 0 0 {name=R7
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 600 820 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 640 740 2 0 {name=p17 sig_type=std_logic lab=VOUT_a-}
C {devices/vsource.sym} 490 840 0 0 {name=V5 value="ac 1.0 sin (0 0 100k)"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 -190 0 0 {name=M1
L=0.8
W=80
nf=10 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 480 -300 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 260 -380 0 0 {name=V6 value=3.8
}
C {devices/gnd.sym} 260 -310 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 260 -450 0 0 {name=p11 sig_type=std_logic lab=VB

}
C {devices/lab_pin.sym} 370 -300 0 0 {name=p18 sig_type=std_logic lab=VB

}
C {devices/lab_pin.sym} 460 140 0 0 {name=p19 sig_type=std_logic lab=VB

}
C {devices/lab_pin.sym} 470 450 0 0 {name=p20 sig_type=std_logic lab=VB

}
C {devices/lab_pin.sym} 470 690 0 0 {name=p21 sig_type=std_logic lab=VB

}
C {sky130_fd_pr/pnp_05v5.sym} 410 -300 0 0 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {/home/vasco/Desktop/sky130A/amplifiers/single_stage_amps/basic_stages/cs_current_pnp_stage/cs_current_pnp_stage.sym} 450 190 0 0 {name=x1}
C {/home/vasco/Desktop/sky130A/amplifiers/single_stage_amps/basic_stages/cs_current_pnp_stage/cs_current_pnp_stage.sym} 460 500 0 0 {name=x2}
C {/home/vasco/Desktop/sky130A/amplifiers/single_stage_amps/basic_stages/cs_current_pnp_stage/cs_current_pnp_stage.sym} 460 740 0 0 {name=x3}
