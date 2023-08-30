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
} 1070 -460 0 0 0.4 0.4 {}
N 430 -250 430 -220 {
lab=VOUT}
N 430 -340 430 -310 {
lab=VDD}
N 430 -160 430 -130 {
lab=VSS}
N 430 -130 430 -110 {
lab=VSS}
N 430 -440 430 -400 {
lab=VDD}
N 340 -190 390 -190 {
lab=#net1}
N 430 -230 480 -230 {
lab=VOUT}
N 390 -280 410 -280 {
lab=VDD}
N 140 -240 170 -240 {
lab=VDD}
N 140 -210 170 -210 {
lab=VSS}
N 140 -180 170 -180 {
lab=VIN}
N 480 -230 550 -230 {
lab=VOUT}
N 430 -400 430 -340 {
lab=VDD}
N 140 -150 170 -150 {
lab=VOUT}
N 330 -190 340 -190 {
lab=#net1}
N 300 -220 300 -210 {
lab=VDD}
N 430 -190 460 -190 {
lab=VSS}
C {devices/lab_pin.sym} 430 -430 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 550 -230 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 270 -190 0 0 {name=p4 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 390 -280 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po_0p35.sym} 430 -280 0 0 {name=R6
L=1*9
model=res_high_po_0p35
spiceprefix=X
 mult=2}
C {devices/iopin.sym} 140 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 170 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 140 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 170 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 140 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} 170 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 430 -110 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 140 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} 170 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/npn_05v5.sym} 410 -190 0 0 {name=Q2
model=npn_05v5_w1p00l2p00
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 300 -190 1 0 {name=R1
L=1
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 300 -220 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 460 -190 0 1 {name=p14 sig_type=std_logic lab=VSS}
