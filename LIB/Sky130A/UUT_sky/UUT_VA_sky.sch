v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {UUt is a special symbol used for testing this type of blocks} 50 -150 0 0 0.4 0.4 {}
T {It is easier to reutilize testbenches this way} 50 -100 0 0 0.4 0.4 {}
N -210 -140 -140 -140 {
lab=VDD}
N -210 -100 -140 -100 {
lab=VSS}
N -210 -60 -140 -60 {
lab=VIN-}
N -210 -20 -140 -20 {
lab=VIN+}
N -210 20 -140 20 {
lab=VOUT}
N 170 -10 170 20 {
lab=VDD}
N 170 140 170 170 {
lab=VSS}
N 50 110 120 110 {
lab=VIN-}
N 50 50 120 50 {
lab=VIN+}
N 260 80 310 80 {lab=VOUT}
N 240 80 260 80 {lab=VOUT}
N 170 20 170 40 {lab=VDD}
N 120 50 130 60 {lab=VIN+}
N 120 110 130 100 {lab=VIN-}
N 170 120 170 140 {lab=VSS}
C {devices/iopin.sym} -210 -140 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -140 -140 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -210 -100 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -140 -100 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -210 -60 0 1 {name=p12 lab=VIN-}
C {devices/lab_pin.sym} -140 -60 2 0 {name=p13 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -210 -20 0 1 {name=p17 lab=VIN+}
C {devices/lab_pin.sym} -140 -20 2 0 {name=p18 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -210 20 0 1 {name=p19 lab=VOUT}
C {devices/lab_pin.sym} -140 20 2 0 {name=p20 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 170 -10 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 170 170 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 50 110 0 0 {name=p5 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 50 50 0 0 {name=p8 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 310 80 2 0 {name=p9 sig_type=std_logic lab=VOUT}
C {Sky130A/single ended amplifiers/VA001_sky130_1_8V.sym} 170 80 0 0 {name=x1}
