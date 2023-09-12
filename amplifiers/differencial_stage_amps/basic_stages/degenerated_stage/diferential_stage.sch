v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -80 70 -30 {
lab=VOUT+}
N 290 -70 290 -30 {
lab=VOUT-}
N 70 -140 290 -140 {
lab=VDD}
N 290 -80 290 -70 {
lab=VOUT-}
N 70 0 180 -0 {
lab=GND}
N 180 0 290 0 {
lab=GND}
N 180 280 180 290 {
lab=GND}
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
N -30 0 30 0 {
lab=VIN}
N 330 0 360 0 {
lab=VB}
N -280 240 -280 260 {
lab=GND}
N -280 140 -280 180 {
lab=VB2}
N -280 260 -280 280 {
lab=GND}
N 130 250 140 250 {
lab=VB2}
N 180 250 190 250 {
lab=GND}
N 190 250 190 280 {
lab=GND}
N 180 280 190 280 {
lab=GND}
N 180 190 180 220 {
lab=#net1}
N 20 490 20 510 {
lab=VDD}
N 20 590 20 620 {
lab=GND}
N 290 610 290 630 {
lab=#net2}
N -50 570 -20 570 {
lab=VB}
N -60 470 -60 530 {
lab=#net3}
N -60 530 -20 530 {
lab=#net3}
N -60 380 -60 410 {
lab=VIN}
N -240 610 -240 640 {
lab=GND}
N -240 530 -240 550 {
lab=VIN_tran}
N -240 530 -160 530 {
lab=VIN_tran}
N 290 550 380 550 {
lab=VOUT+_tran}
N 210 550 290 550 {
lab=VOUT+_tran}
N 90 550 150 550 {
lab=#net4}
N -160 530 -150 530 {
lab=VIN_tran}
N -90 530 -60 530 {
lab=#net3}
N 20 820 20 840 {
lab=GND}
N 20 710 20 740 {
lab=VDD}
N -60 700 -60 760 {
lab=#net5}
N -60 760 -20 760 {
lab=#net5}
N -60 610 -60 640 {
lab=VIN}
N -90 760 -60 760 {
lab=#net5}
N -230 840 -230 870 {
lab=GND}
N -230 760 -230 780 {
lab=#net6}
N -230 760 -150 760 {
lab=#net6}
N -30 800 -20 800 {
lab=VB}
N 290 840 290 860 {
lab=GND}
N 290 780 380 780 {
lab=VOUT+_ac}
N 210 780 290 780 {
lab=VOUT+_ac}
N 90 780 210 780 {
lab=VOUT+_ac}
N 290 860 290 870 {
lab=GND}
N -70 1020 -20 1020 {
lab=VIN}
N 20 980 20 1000 {
lab=#net7}
N 20 890 20 920 {
lab=VDD}
N 20 1080 20 1110 {
lab=GND}
N -30 1060 -20 1060 {
lab=VB}
N 90 1040 390 1040 {
lab=VOUT+_a+}
N 290 1100 290 1120 {
lab=GND}
N 290 1120 290 1130 {
lab=GND}
N -70 1060 -30 1060 {
lab=VB}
N -70 1300 -20 1300 {
lab=VIN}
N 20 1260 20 1280 {
lab=VDD}
N 20 1360 20 1390 {
lab=#net8}
N -30 1340 -20 1340 {
lab=VB}
N -70 1340 -30 1340 {
lab=VB}
N 20 1240 20 1260 {
lab=VDD}
N 20 1450 20 1470 {
lab=GND}
N 90 1320 390 1320 {
lab=VOUT+_a-}
N 290 1380 290 1400 {
lab=GND}
N 290 1400 290 1410 {
lab=GND}
N -70 1580 -20 1580 {
lab=#net9}
N 20 1540 20 1560 {
lab=VDD}
N 20 1640 20 1670 {
lab=GND}
N -30 1620 -20 1620 {
lab=#net9}
N -70 1620 -30 1620 {
lab=#net9}
N 20 1520 20 1540 {
lab=VDD}
N 20 1670 20 1690 {
lab=GND}
N 90 1600 390 1600 {
lab=VOUT+_CA}
N -140 1440 -140 1460 {
lab=VB}
N -140 1520 -140 1580 {
lab=#net9}
N -140 1580 -70 1580 {
lab=#net9}
N -140 1620 -70 1620 {
lab=#net9}
N -140 1580 -140 1620 {
lab=#net9}
N -200 1600 -140 1600 {
lab=#net9}
N -290 1660 -290 1690 {
lab=GND}
N -290 1600 -260 1600 {
lab=#net10}
N 70 110 180 110 {
lab=#net11}
N 180 110 180 130 {
lab=#net11}
N 180 110 290 110 {
lab=#net11}
N 290 30 290 50 {
lab=#net12}
N 70 30 70 50 {
lab=#net13}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 50 0 0 0 {name=M5
L=1
W=40
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 310 0 0 1 {name=M1
L=1
W=40
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 70 -110 0 0 {name=R6
L=1*25
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 170 -140 3 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 50 -110 2 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 310 -110 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 180 0 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 180 290 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/res_high_po_0p35.sym} 290 -110 0 1 {name=R1
L=1*25
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 70 -50 2 1 {name=p4 sig_type=std_logic lab=VOUT+}
C {devices/lab_pin.sym} 290 -50 0 1 {name=p5 sig_type=std_logic lab=VOUT-}
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
plot v(VOUT-) v(VIN) deriv(v(VOUT-)) v(VOUT+) deriv(v(VOUT+))
*ploting VIN VOUT and the voltage gain
plot i(Vmeas) 
*ploting the current for curiosity
tran 0.2ns 20u 
*transient simulation
plot (v(VOUT+_tran)) v(VIN_tran)
*simple plot to exemplify the gain
fft v(VOUT+_tran) v(VIN_tran) 
*fast fourier transfor
plot mag(v(VOUT+_tran)) mag(v(VIN_tran)) 
ac dec 20 1 1000G 
*simple ac simulation
plot db(v(VOUT+_ac))
plot db(v(VOUT+_a+))
plot db(v(VOUT+_a-))
plot db(v(VOUT+_CA))
plot db((v(VOUT+_ac))/(v(VOUT+_CA)))
plot db((v(VOUT+_ac))/(v(VOUT+_a+)))
plot db((v(VOUT+_ac))/(v(VOUT+_a-)))
.endc
"}
C {sky130_fd_pr/corner.sym} -710 -340 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -850 40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -850 100 0 0 {name=V1 value=5
}
C {devices/vsource.sym} -770 100 0 0 {name=V2 value=1.5}
C {devices/gnd.sym} -850 150 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -770 40 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -770 170 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -630 110 0 0 {name=V6 value=1.5}
C {devices/gnd.sym} -630 180 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -630 40 0 0 {name=p10 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} -30 0 0 0 {name=p8 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 360 0 2 0 {name=p9 sig_type=std_logic lab=VB
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 160 250 0 0 {name=M2
L=0.5
W=75
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} -280 210 0 0 {name=V3 value=1}
C {devices/gnd.sym} -280 280 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -280 140 0 0 {name=p11 sig_type=std_logic lab=VB2
}
C {devices/lab_pin.sym} 130 250 0 0 {name=p12 sig_type=std_logic lab=VB2
}
C {devices/ammeter.sym} 180 160 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 20 490 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 20 610 0 0 {name=l6 lab=GND}
C {devices/res.sym} 290 580 0 0 {name=R5
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 290 640 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -50 570 0 0 {name=p14 sig_type=std_logic lab=VB
}
C {devices/res.sym} -60 440 0 0 {name=R2
value=10G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -60 380 0 0 {name=p15 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -240 640 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -240 580 0 0 {name=V4 value="ac 1.0 sin (0 100u 100k)"}
C {devices/lab_pin.sym} 380 550 0 1 {name=p16 sig_type=std_logic lab=VOUT+_tran}
C {devices/lab_pin.sym} -200 530 3 1 {name=p17 sig_type=std_logic lab=VIN_tran}
C {devices/capa.sym} 180 550 3 0 {name=C2
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -120 530 3 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 20 840 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 20 710 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/res.sym} -60 670 0 0 {name=R3
value=10G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -60 610 0 0 {name=p19 sig_type=std_logic lab=VIN
}
C {devices/capa.sym} -120 760 3 0 {name=C3
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -230 870 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} -230 810 0 0 {name=V5 value="ac 1.0 sin (0 100u 100k)"}
C {devices/lab_pin.sym} -30 800 0 0 {name=p20 sig_type=std_logic lab=VB
}
C {devices/res.sym} 290 810 0 0 {name=R4
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 290 870 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 380 780 0 1 {name=p21 sig_type=std_logic lab=VOUT+_ac}
C {devices/lab_pin.sym} -70 1020 0 0 {name=p22 sig_type=std_logic lab=VIN
}
C {devices/vsource.sym} 20 950 2 0 {name=V7 value="ac 1.0 sin (0 0u 100k)"}
C {devices/lab_pin.sym} 20 890 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 20 1110 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -70 1060 0 0 {name=p24 sig_type=std_logic lab=VB
}
C {devices/lab_pin.sym} 390 1040 0 1 {name=p25 sig_type=std_logic lab=VOUT+_a+}
C {devices/res.sym} 290 1070 0 0 {name=R7
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 290 1130 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -70 1300 0 0 {name=p26 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 20 1240 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 20 1470 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} -70 1340 0 0 {name=p28 sig_type=std_logic lab=VB
}
C {devices/vsource.sym} 20 1420 0 0 {name=V8 value="ac 1.0 sin (0 0u 100k)"}
C {devices/lab_pin.sym} 390 1320 0 1 {name=p29 sig_type=std_logic lab=VOUT+_a-}
C {devices/res.sym} 290 1350 0 0 {name=R8
value=10G
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 290 1410 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 20 1520 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 20 1690 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 390 1600 0 1 {name=p33 sig_type=std_logic lab=VOUT+_CA}
C {devices/lab_pin.sym} -140 1440 1 0 {name=p34 sig_type=std_logic lab=VB
}
C {devices/res.sym} -140 1490 0 0 {name=R9
value=10G
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -230 1600 3 0 {name=C4
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -290 1690 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} -290 1630 0 0 {name=V10 value="ac 1.0 sin (0 100u 100k)"}
C {/home/vasco/Desktop/sky130A/amplifiers/differencial_stage_amps/basic_stages/degenerated_stage/differential_stage.sym} 0 550 0 0 {name=x1}
C {/home/vasco/Desktop/sky130A/amplifiers/differencial_stage_amps/basic_stages/degenerated_stage/differential_stage.sym} 0 780 0 0 {name=x2}
C {/home/vasco/Desktop/sky130A/amplifiers/differencial_stage_amps/basic_stages/degenerated_stage/differential_stage.sym} 0 1040 0 0 {name=x3}
C {/home/vasco/Desktop/sky130A/amplifiers/differencial_stage_amps/basic_stages/degenerated_stage/differential_stage.sym} 0 1320 0 0 {name=x4}
C {/home/vasco/Desktop/sky130A/amplifiers/differencial_stage_amps/basic_stages/degenerated_stage/differential_stage.sym} 0 1600 0 0 {name=x5}
C {sky130_fd_pr/res_high_po_0p35.sym} 70 80 0 0 {name=R10
L=1*1
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 290 80 0 1 {name=R11
L=1*1
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 50 80 2 1 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 310 80 2 0 {name=p32 sig_type=std_logic lab=VDD}
