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
N 390 -280 410 -280 {
lab=VDD}
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
dc V2 0 3.3 0.01 
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
plot v(VOUTT) v(VOUTT)
*gain in function of the input frequency
.endc
"}
C {devices/ammeter.sym} 430 -370 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 100 -440 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 430 -110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 500 -190 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 100 -380 0 0 {name=V1 value=5
}
C {devices/vsource.sym} 180 -380 0 0 {name=V2 value=1.265}
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
L=1
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
C {devices/lab_pin.sym} 390 -280 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 580 190 3 0 {name=C2
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/res_high_po_0p35.sym} 430 -280 0 0 {name=R6
L=1*8
model=res_high_po_0p35
spiceprefix=X
 mult=2}
C {/home/vasco/Desktop/sky130A/amp_tests/basic_stages/cs_resistor_stage/cs_resistor_stage.sym} 550 190 0 0 {name=x1}
C {devices/lab_pin.sym} 470 140 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 470 240 0 0 {name=l7 lab=GND}
