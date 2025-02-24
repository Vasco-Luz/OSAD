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
N 150 40 150 70 {
lab=VDD}
N 150 170 150 200 {
lab=VSS}
N 50 140 120 140 {
lab=VIN-}
N 50 100 120 100 {
lab=VIN+}
N 220 120 290 120 {
lab=VOUT}
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
C {devices/lab_pin.sym} 150 40 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 200 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 50 140 0 0 {name=p5 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 50 100 0 0 {name=p8 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 290 120 2 0 {name=p9 sig_type=std_logic lab=VOUT}
C {Sky130A/Learning/Design_of_Two-Stage_CMOS_Operational_Amplifier_for_Fluorescence_Signal_Processing_5V/amplifier.sym} 160 120 0 0 {name=x1}
