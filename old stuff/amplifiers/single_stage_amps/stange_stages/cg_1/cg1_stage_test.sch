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
N 710 -160 750 -160 {
lab=VOUT}
N 710 -100 710 -80 {
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
N 520 190 550 190 {
lab=#net2}
N 390 110 390 190 {
lab=#net1}
N 390 30 390 50 {
lab=VIN}
N 460 130 460 150 {
lab=VDD}
N 460 230 460 250 {
lab=GND}
N 420 500 440 500 {
lab=VIN}
N 600 500 640 500 {
lab=VOUT_a+}
N 600 560 600 580 {
lab=GND}
N 480 380 500 380 {
lab=VDD}
N 480 440 480 450 {
lab=#net3}
N 480 690 480 710 {
lab=VDD}
N 480 770 480 790 {
lab=#net4}
N 420 740 440 740 {
lab=VIN}
N 600 740 640 740 {
lab=VOUT_a-}
N 600 800 600 820 {
lab=GND}
N 480 680 480 690 {
lab=VDD}
N 480 790 480 800 {
lab=#net4}
N 480 860 480 880 {
lab=GND}
N 430 -340 430 -330 {
lab=#net5}
N 430 -330 430 -320 {
lab=#net5}
N 430 -100 480 -100 {
lab=GND}
N 360 -30 430 -30 {
lab=VIN}
N 430 -70 430 -30 {
lab=VIN}
N 430 -140 430 -130 {
lab=VOUT}
N 430 -170 430 -140 {
lab=VOUT}
N 430 -200 430 -170 {
lab=VOUT}
N 430 -320 430 -260 {
lab=#net5}
N 450 -230 480 -230 {
lab=VDD}
N 240 -350 240 -330 {
lab=GND}
N 240 -430 240 -410 {
lab=VB}
N 370 -100 390 -100 {
lab=VB}
N 440 500 450 500 {
lab=VIN}
N 540 500 600 500 {
lab=VOUT_a+}
N 480 540 480 550 {
lab=GND}
N 480 450 480 460 {
lab=#net3}
N 440 740 450 740 {
lab=VIN}
N 540 740 600 740 {
lab=VOUT_a-}
N 440 -160 710 -160 {
lab=VOUT}
N 430 -160 440 -160 {
lab=VOUT}
N 430 -60 620 -60 {
lab=VIN}
N 620 -130 620 -120 {
lab=VOUT}
N 430 -130 620 -130 {
lab=VOUT}
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
C {devices/vsource.sym} 100 -380 0 0 {name=V1 value=5
}
C {devices/vsource.sym} 180 -380 0 0 {name=V2 value=0.160
}
C {devices/gnd.sym} 100 -330 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 430 -430 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 250 300 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 180 -440 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 750 -160 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 250 240 0 0 {name=V3 value="ac 1.0 sin (0 100u 100k)"}
C {devices/lab_pin.sym} 360 -30 0 0 {name=p4 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} 180 -310 0 0 {name=l5 lab=GND}
C {devices/res.sym} 710 -130 0 0 {name=R2
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 710 -80 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 330 190 3 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 390 30 0 0 {name=p6 sig_type=std_logic lab=VIN
}
C {devices/res.sym} 390 80 0 0 {name=R3
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
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 460 130 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 460 250 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 500 380 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 480 550 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 420 500 0 0 {name=p13 sig_type=std_logic lab=VIN
}
C {devices/res.sym} 600 530 0 0 {name=R4
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 600 580 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 640 500 2 0 {name=p14 sig_type=std_logic lab=VOUT_a+}
C {devices/vsource.sym} 480 410 2 0 {name=V4 value="ac 1.0 sin (0 0 100k)"}
C {devices/lab_pin.sym} 480 680 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 480 880 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 420 740 0 0 {name=p16 sig_type=std_logic lab=VIN
}
C {devices/res.sym} 600 770 0 0 {name=R7
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 600 820 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 640 740 2 0 {name=p17 sig_type=std_logic lab=VOUT_a-}
C {devices/vsource.sym} 480 830 0 0 {name=V5 value="ac 1.0 sin (0 0 100k)"}
C {sky130_fd_pr/res_high_po_0p35.sym} 430 -230 2 0 {name=R8
L=1*3
model=res_high_po_0p35
spiceprefix=X
mult=2}
C {devices/lab_pin.sym} 480 -230 2 0 {name=p18 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 -100 0 0 {name=M5
L=0.8
W=60
nf=1 mult=10
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 480 -100 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 240 -380 0 0 {name=V6 value=1.2
}
C {devices/gnd.sym} 240 -330 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 240 -430 0 1 {name=p10 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} 370 -100 0 0 {name=p11 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} 430 170 0 0 {name=p19 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} 450 480 0 0 {name=p20 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} 450 720 0 0 {name=p21 sig_type=std_logic lab=VB
}
C {sky130_fd_pr/res_high_po_0p35.sym} 620 -90 2 0 {name=R1
L=1*10
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 640 -90 2 0 {name=p22 sig_type=std_logic lab=VDD}
C {/home/vasco/Desktop/sky130A/amplifiers/single_stage_amps/stange_stages/cg_1/cg1_stage.sym} 450 190 0 0 {name=x1}
C {/home/vasco/Desktop/sky130A/amplifiers/single_stage_amps/stange_stages/cg_1/cg1_stage.sym} 470 500 0 0 {name=x2}
C {/home/vasco/Desktop/sky130A/amplifiers/single_stage_amps/stange_stages/cg_1/cg1_stage.sym} 470 740 0 0 {name=x3}
