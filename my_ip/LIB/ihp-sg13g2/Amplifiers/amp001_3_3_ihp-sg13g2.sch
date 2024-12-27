v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
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
N 290 30 480 30 {
lab=VSS}
N 290 -190 290 -150 {
lab=VDD}
N 290 -190 480 -190 {
lab=VDD}
N 480 -190 480 0 {
lab=VDD}
N 290 -60 290 0 {
lab=Vout_1_stage}
N 180 30 250 30 {
lab=VIN+}
N 520 30 590 30 {
lab=VIN-}
N 290 60 290 150 {
lab=#net1}
N 380 150 480 150 {
lab=#net1}
N 480 60 480 150 {
lab=#net1}
N 380 150 380 200 {
lab=#net1}
N 290 150 380 150 {
lab=#net1}
N 380 260 380 290 {
lab=VSS}
N 290 -60 760 -60 {
lab=Vout_1_stage}
N 290 -90 290 -60 {
lab=Vout_1_stage}
N 480 -190 800 -190 {
lab=VDD}
N 800 -190 800 -170 {
lab=VDD}
N 800 -110 800 -90 {
lab=#net2}
N 380 290 800 290 {
lab=VSS}
N 800 240 800 290 {
lab=VSS}
N 800 -30 800 180 {
lab=VOUT}
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
C {devices/lab_pin.sym} 580 -190 3 0 {name=p11 sig_type=std_logic lab=VDD}
C {sg13g2_pr/npn13G2.sym} 270 30 0 0 {name=Q3
model=npn13G2
spiceprefix=X
Nx=1
le=900e-9}
C {devices/lab_pin.sym} 390 30 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {sg13g2_pr/rhigh.sym} 290 -120 0 0 {name=R3
w=1e-6
l=2e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {devices/lab_pin.sym} 180 30 0 0 {name=p15 sig_type=std_logic lab=VIN+}
C {sg13g2_pr/rppd.sym} 380 230 0 0 {name=R4
w=0.5e-6
l=1.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {devices/lab_pin.sym} 380 290 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 40 2 0 {name=p21 sig_type=std_logic lab=VOUT}
C {sg13g2_pr/npn13G2.sym} 500 30 0 1 {name=Q4
model=npn13G2
spiceprefix=X
Nx=1
le=900e-9}
C {sg13g2_pr/pnpMPA.sym} 780 -60 0 0 {name=Q5
model=pnpMPA
spiceprefix=X
w=1.0u
l=2.0u
}
C {sg13g2_pr/rhigh.sym} 800 -140 0 0 {name=R5
w=2e-6
l=0.5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 800 210 0 0 {name=R6
w=0.5e-6
l=5.4e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {devices/lab_pin.sym} 590 30 0 1 {name=p23 sig_type=std_logic lab=VIN-}
