v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -150 -30 -150 {
lab=VDD}
N -100 -110 -30 -110 {
lab=VSS}
N -100 -70 -30 -70 {
lab=VIN-}
N -100 -30 -30 -30 {
lab=VIN+}
N -100 10 -30 10 {
lab=VOUT}
N 310 0 500 0 {
lab=VSS}
N 310 -220 310 -180 {
lab=VDD}
N 310 -220 500 -220 {
lab=VDD}
N 500 -220 500 -30 {
lab=VDD}
N 310 -90 310 -30 {
lab=#net5}
N 200 0 270 0 {
lab=#net6}
N 310 30 310 120 {
lab=#net7}
N 400 120 500 120 {
lab=#net7}
N 500 30 500 120 {
lab=#net7}
N 400 120 400 170 {
lab=#net7}
N 310 120 400 120 {
lab=#net7}
N 400 230 400 260 {
lab=VSS}
N 310 -90 780 -90 {
lab=#net5}
N 310 -120 310 -90 {
lab=#net5}
N 500 -220 820 -220 {
lab=VDD}
N 820 -220 820 -200 {
lab=VDD}
N 820 -140 820 -120 {
lab=#net8}
N 400 260 820 260 {
lab=VSS}
N 820 210 820 260 {
lab=VSS}
N 820 -60 820 150 {
lab=VOUT}
N 540 0 610 0 {
lab=VIN-}
C {devices/iopin.sym} -100 -150 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -30 -150 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -100 -110 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} -30 -110 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -100 -70 0 1 {name=p12 lab=VIN-}
C {devices/lab_pin.sym} -30 -70 2 0 {name=p13 sig_type=std_logic lab=VIN-}
C {devices/iopin.sym} -100 -30 0 1 {name=p17 lab=VIN+}
C {devices/lab_pin.sym} -30 -30 2 0 {name=p18 sig_type=std_logic lab=VIN+}
C {devices/iopin.sym} -100 10 0 1 {name=p19 lab=VOUT}
C {devices/lab_pin.sym} -30 10 2 0 {name=p20 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 820 20 2 0 {name=p21 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 600 -220 3 0 {name=p2 sig_type=std_logic lab=VDD}
C {sg13g2_pr/npn13G2.sym} 290 0 0 0 {name=Q1
model=npn13G2
spiceprefix=X
Nx=1
le=900e-9}
C {devices/lab_pin.sym} 410 0 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {sg13g2_pr/rhigh.sym} 310 -150 0 0 {name=R1
w=1e-6
l=2e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rppd.sym} 400 200 0 0 {name=R2
w=0.5e-6
l=1.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {devices/lab_pin.sym} 400 260 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {sg13g2_pr/npn13G2.sym} 520 0 0 1 {name=Q2
model=npn13G2
spiceprefix=X
Nx=1
le=900e-9}
C {sg13g2_pr/pnpMPA.sym} 800 -90 0 0 {name=Q6
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
}
C {sg13g2_pr/rhigh.sym} 820 -170 0 0 {name=R7
w=2e-6
l=0.5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 820 180 0 0 {name=R8
w=0.5e-6
l=5.4e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {devices/lab_pin.sym} 610 0 0 1 {name=p8 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 200 0 0 0 {name=p9 sig_type=std_logic lab=VIN+}
