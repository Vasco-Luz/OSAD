v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 -500 560 -480 {
lab=#net1}
N 100 -350 100 -330 {
lab=GND}
N 100 -450 100 -410 {
lab=VDD}
N 560 -630 560 -590 {
lab=VDD}
N 180 -350 180 -330 {
lab=GND}
N 180 -450 180 -410 {
lab=VIN}
N 180 -330 180 -310 {
lab=GND}
N 250 270 250 300 {
lab=GND}
N 730 -350 770 -350 {
lab=VOUT}
N 730 -290 730 -270 {
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
N 560 -260 630 -260 {
lab=GND}
N 410 470 480 470 {
lab=VIN}
N 700 470 740 470 {
lab=VOUT_A+}
N 660 470 700 470 {
lab=VOUT_A+}
N 570 470 600 470 {
lab=VOUT_A+}
N 520 420 520 440 {
lab=#net4}
N 520 500 520 520 {
lab=GND}
N 600 470 660 470 {
lab=VOUT_A+}
N 520 410 520 420 {
lab=#net4}
N 520 340 520 350 {
lab=VDD}
N 410 730 480 730 {
lab=VIN}
N 700 730 740 730 {
lab=VOUT_A-}
N 660 730 700 730 {
lab=VOUT_A-}
N 570 730 600 730 {
lab=VOUT_A-}
N 520 680 520 700 {
lab=VDD}
N 520 760 520 780 {
lab=#net5}
N 600 730 660 730 {
lab=VOUT_A-}
N 520 670 520 680 {
lab=VDD}
N 520 660 520 670 {
lab=VDD}
N 560 -530 560 -510 {
lab=#net1}
N 650 -350 730 -350 {
lab=VOUT}
N 560 -400 560 -290 {
lab=VOUT}
N 560 -510 560 -500 {
lab=#net1}
N 560 -350 650 -350 {
lab=VOUT}
N 560 -420 560 -400 {
lab=VOUT}
N 560 -450 600 -450 {
lab=VDD}
N 560 -230 560 -200 {
lab=#net6}
N 560 -140 560 -110 {
lab=VIN}
N 520 -170 540 -170 {
lab=VDD}
N 250 -350 250 -330 {
lab=GND}
N 250 -450 250 -410 {
lab=VB1}
N 250 -330 250 -310 {
lab=GND}
N 310 -350 310 -330 {
lab=GND}
N 310 -450 310 -410 {
lab=VB2}
N 310 -330 310 -310 {
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
plot (v(VOUTT)) (v(VINT))
*simple plot to exemplify the gain
fft v(VOUTT) v(VINT) 
*fast fourier transfor
plot mag(v(VOUTT)) mag(v(VINT)) 
* analyse the frequency spectrum of the transient waves, to detect distortion
ac dec 20 1 1000G 
*simple ac simulation
plot db(v(VOUTT)) db(v(VINT))
*gain in function of the input frequency
plot db(v(VOUT_A+)) 
plot db(v(VOUT_A-)) 
.endc
"}
C {devices/ammeter.sym} 560 -560 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 100 -440 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 100 -380 0 0 {name=V1 value=5
}
C {devices/vsource.sym} 180 -380 0 0 {name=V2 value=0.150}
C {devices/gnd.sym} 100 -330 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 560 -620 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 250 300 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 180 -440 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 770 -350 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 250 240 0 0 {name=V3 value="ac 1.0 sin (0 100u 100k)"}
C {devices/gnd.sym} 180 -310 0 0 {name=l5 lab=GND}
C {devices/res.sym} 730 -320 0 0 {name=R2
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 730 -270 0 0 {name=l6 lab=GND}
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 540 -260 0 0 {name=M1
L=0.7
W=60
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
C {devices/gnd.sym} 630 -260 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 520 380 2 0 {name=V4 value="ac 1.0 sin (0 0 100k)"}
C {devices/lab_pin.sym} 410 470 0 0 {name=p11 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 740 470 2 0 {name=p12 sig_type=std_logic lab=VOUT_A+}
C {devices/lab_pin.sym} 520 340 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 520 520 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 520 810 0 0 {name=V5 value="ac 1.0 sin (0 0 100k)"}
C {devices/lab_pin.sym} 410 730 0 0 {name=p13 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 740 730 2 0 {name=p15 sig_type=std_logic lab=VOUT_A-}
C {devices/lab_pin.sym} 520 660 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 520 840 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/res_high_po_0p35.sym} 560 -170 0 0 {name=R4
L=1
model=res_high_po_0p35
spiceprefix=X
 mult=6}
C {devices/lab_pin.sym} 600 -450 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 540 -450 0 0 {name=M9
L=0.7
W=60
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 520 -170 2 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 250 -380 0 0 {name=V6 value=3.8}
C {devices/lab_pin.sym} 250 -440 0 0 {name=p4 sig_type=std_logic lab=VB1
}
C {devices/gnd.sym} 250 -310 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 310 -380 0 0 {name=V7 value=1.2}
C {devices/lab_pin.sym} 310 -440 0 0 {name=p18 sig_type=std_logic lab=VB2}
C {devices/gnd.sym} 310 -310 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 520 -450 0 0 {name=p19 sig_type=std_logic lab=VB1
}
C {devices/lab_pin.sym} 520 -260 0 0 {name=p20 sig_type=std_logic lab=VB2}
C {devices/lab_pin.sym} 560 -110 0 0 {name=p21 sig_type=std_logic lab=VIN
}
C {/home/vasco/Desktop/sky130A/amplifiers/single_stage_amps/stange_stages/cg_2/cg_2_stage.sym} 550 190 0 0 {name=x1}
C {/home/vasco/Desktop/sky130A/amplifiers/single_stage_amps/stange_stages/cg_2/cg_2_stage.sym} 600 470 0 0 {name=x2}
C {/home/vasco/Desktop/sky130A/amplifiers/single_stage_amps/stange_stages/cg_2/cg_2_stage.sym} 600 730 0 0 {name=x3}
