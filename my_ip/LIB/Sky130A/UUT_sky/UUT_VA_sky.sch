v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
N 150 -120 150 -90 {
lab=VDD}
N 150 -10 150 20 {
lab=VSS}
N 30 -70 100 -70 {
lab=VIN-}
N 30 -30 100 -30 {
lab=VIN+}
N 220 -50 290 -50 {
lab=#net1}
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
C {Sky130A/single ended amplifiers/VA001_PMOS_1.8_sky130A.sym} 150 -50 0 0 {name=x1}
C {devices/lab_pin.sym} 150 -120 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 20 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 30 -70 0 0 {name=p5 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 30 -30 0 0 {name=p8 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 290 -50 2 0 {name=p9 sig_type=std_logic lab=VOUT}
