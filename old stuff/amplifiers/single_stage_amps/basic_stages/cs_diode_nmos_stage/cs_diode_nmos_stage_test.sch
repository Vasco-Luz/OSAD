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
N 180 -450 180 -410 {
lab=VIN}
N 340 -190 390 -190 {
lab=VIN}
N 180 -330 180 -310 {
lab=GND}
N 250 270 250 300 {
lab=GND}
N 430 -230 480 -230 {
lab=VOUT}
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
lab=#net2}
N 650 190 690 190 {
lab=VOUTT}
N 650 250 650 270 {
lab=GND}
N 610 190 650 190 {
lab=VOUTT}
N 520 190 550 190 {
lab=#net3}
N 420 110 420 190 {
lab=#net2}
N 420 30 420 50 {
lab=VIN}
N 470 140 470 160 {
lab=VDD}
N 470 220 470 240 {
lab=GND}
N 430 -280 500 -280 {
lab=GND}
N 390 -320 390 -280 {
lab=#net1}
N 390 -320 430 -320 {
lab=#net1}
N 660 630 700 630 {
lab=VOUT_a+}
N 660 690 660 710 {
lab=GND}
N 620 630 660 630 {
lab=VOUT_a+}
N 530 630 560 630 {
lab=VOUT_a+}
N 480 580 480 600 {
lab=#net4}
N 480 660 480 680 {
lab=GND}
N 670 1010 710 1010 {
lab=VOUT_a-}
N 670 1070 670 1090 {
lab=GND}
N 630 1010 670 1010 {
lab=VOUT_a-}
N 540 1010 570 1010 {
lab=VOUT_a-}
N 490 960 490 980 {
lab=VDD}
N 490 1040 490 1060 {
lab=#net5}
N 440 1010 450 1010 {
lab=VIN}
N 490 1130 490 1140 {
lab=GND}
N 490 1060 490 1070 {
lab=#net5}
N 430 630 440 630 {
lab=VIN}
N 480 570 480 580 {
lab=#net4}
N 480 480 480 510 {
lab=VDD}
N 570 1010 630 1010 {
lab=VOUT_a-}
N 560 630 620 630 {
lab=VOUT_a+}
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
C {devices/gnd.sym} 500 -190 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 100 -380 0 0 {name=V1 value=5
}
C {devices/vsource.sym} 180 -380 0 0 {name=V2 value=0.950}
C {devices/gnd.sym} 100 -330 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 430 -430 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 250 300 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 180 -440 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 690 -230 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 250 240 0 0 {name=V3 value="ac 1.0 sin (0 100u 100k)"}
C {devices/lab_pin.sym} 340 -190 0 0 {name=p4 sig_type=std_logic lab=VIN
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 -190 0 0 {name=M1
L=0.5
W=100
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/corner.sym} -160 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/capa.sym} 580 190 3 0 {name=C2
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 470 140 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 470 240 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 -280 0 0 {name=M2
L=2
W=6
nf=3
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 500 -280 0 0 {name=l8 lab=GND}
C {/home/vasco/Desktop/sky130A/amp_tests/basic_stages/cs_diode_nmos_stage/cs_diode_nmos_stage.sym} 550 190 0 0 {name=x1}
C {devices/vsource.sym} 480 540 2 0 {name=V4 value="ac 1.0 sin (0 0 100k)"}
C {devices/lab_pin.sym} 430 630 0 0 {name=p10 sig_type=std_logic lab=VIN
}
C {devices/res.sym} 660 660 0 0 {name=R4
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 660 710 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 480 480 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 480 680 0 0 {name=l12 lab=GND}
C {/home/vasco/Desktop/sky130A/amp_tests/basic_stages/cs_diode_nmos_stage/cs_diode_nmos_stage.sym} 560 630 0 0 {name=x2}
C {devices/vsource.sym} 490 1100 0 0 {name=V5 value="ac 1.0 sin (0 0 100k)"}
C {devices/lab_pin.sym} 440 1010 0 0 {name=p14 sig_type=std_logic lab=VIN
}
C {devices/res.sym} 670 1040 0 0 {name=R7
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 670 1090 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 710 1010 2 0 {name=p15 sig_type=std_logic lab=VOUT_a-}
C {devices/lab_pin.sym} 490 960 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {/home/vasco/Desktop/sky130A/amp_tests/basic_stages/cs_diode_nmos_stage/cs_diode_nmos_stage.sym} 570 1010 0 0 {name=x3}
C {devices/gnd.sym} 490 1140 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 700 630 2 0 {name=p11 sig_type=std_logic lab=VOUT_a+}
