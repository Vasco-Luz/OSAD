v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Basic CS resistor amplifier stage.
It serves as a gain stage because the output impedance is high and the gain is high.
By switching the load resistor we can test how the systems responds to different loads
the load could be represented as an ac current source.
initially the load is set to the highest possible value.
The gain is directly dependent on gm1(current changes in fuction of VIN) and R1.
by increasing it and changing the bias voltage to accomodate it an increase in the output voltage will be detected.
the gain is negative.
the first configuration is to test the dc characteristics of the circuit
the plot represents the VOUT in function of the VIN, and the gain is the derivation of VOUT in function of VIN
After the bias point is chosen(preferebly when the NMOS is in saturation and the gain is the most linear)
The second configuration is used o exemplify amplification.
two blocking capacitors are use to block the dc signal, and the sinoisoidal wave is amplified as seen in the trans simulation
then a fft is made to check the distortion caused by the  amplifier
because the gain is not linear the output sinoisoidal will not be a perfect sinoisoidal in other words, distortion
In the end an AC simulation is performed to check how the gain mantains itself in the frequency range.
Because of the input blocking capacitors, it looks like a kinda revered passband filter.
} 920 -250 0 0 0.4 0.4 {}
N 430 -250 430 -220 {
lab=VOUT}
N 430 -340 430 -310 {
lab=#net1}
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
N 340 -190 390 -190 {
lab=#net2}
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
lab=#net3}
N 650 190 690 190 {
lab=VOUTT}
N 650 250 650 270 {
lab=GND}
N 610 190 650 190 {
lab=VOUTT}
N 390 -280 410 -280 {
lab=VDD}
N 520 190 550 190 {
lab=#net4}
N 420 110 420 190 {
lab=#net3}
N 420 30 420 50 {
lab=VIN}
N 470 140 470 160 {
lab=VDD}
N 470 220 470 240 {
lab=GND}
N 430 -190 470 -190 {
lab=GND}
N 260 -230 260 -210 {
lab=VDD}
N 290 -190 340 -190 {
lab=#net2}
N 220 -190 230 -190 {
lab=VIN}
N 480 450 480 470 {
lab=#net5}
N 480 530 480 550 {
lab=GND}
N 420 500 440 500 {
lab=VIN}
N 600 500 640 500 {
lab=VOUT_a+}
N 600 560 600 580 {
lab=GND}
N 530 500 600 500 {
lab=VOUT_a+}
N 480 380 500 380 {
lab=VDD}
N 480 440 480 450 {
lab=#net5}
N 480 690 480 710 {
lab=VDD}
N 480 770 480 790 {
lab=#net6}
N 420 740 440 740 {
lab=VIN}
N 600 740 640 740 {
lab=VOUT_a-}
N 600 800 600 820 {
lab=GND}
N 530 740 600 740 {
lab=VOUT_a-}
N 480 680 480 690 {
lab=VDD}
N 480 790 480 800 {
lab=#net6}
N 480 860 480 880 {
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
C {devices/vsource.sym} 180 -380 0 0 {name=V2 value=0.950}
C {devices/gnd.sym} 100 -330 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 430 -430 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 250 300 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 180 -440 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 690 -230 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 250 240 0 0 {name=V3 value="ac 1.0 sin (0 100u 100k)"}
C {devices/lab_pin.sym} 220 -190 0 0 {name=p4 sig_type=std_logic lab=VIN
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
C {devices/lab_pin.sym} 390 -280 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 580 190 3 0 {name=C2
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/res_high_po_0p35.sym} 430 -280 0 0 {name=R6
L=1*9
model=res_high_po_0p35
spiceprefix=X
 mult=2}
C {devices/lab_pin.sym} 470 140 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 470 240 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/npn_05v5.sym} 410 -190 0 0 {name=Q2
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {devices/code.sym} -340 -160 0 0 {name="NPN tt params"
only_toplevel=true
format="tcleval( @value )"
value="
** Additional definitions for NPN
.param
+ dkisnpn1x1=8.7913e-01 dkbfnpn1x1=9.8501e-01
+ dkisnpn1x2=9.0950e-01 dkbfnpn1x2=9.6759e-01
+ dkisnpnpolyhv=1.0 dkbfnpnpolyhv=1.0

"
spice_ignore=false}
C {devices/gnd.sym} 470 -190 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/res_high_po_0p35.sym} 260 -190 1 0 {name=R1
L=1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 260 -230 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {/home/vasco/Desktop/sky130A/amp_tests/basic_stages/ce_resistive_stage/ce_resistor_stage.sym} 550 190 0 0 {name=x1}
C {devices/lab_pin.sym} 500 380 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 480 550 0 0 {name=l8 lab=GND}
C {/home/vasco/Desktop/sky130A/amp_tests/basic_stages/ce_resistive_stage/ce_resistor_stage.sym} 560 500 0 0 {name=x2}
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
C {/home/vasco/Desktop/sky130A/amp_tests/basic_stages/ce_resistive_stage/ce_resistor_stage.sym} 560 740 0 0 {name=x3}
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
