v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Layout Pattern} 150 -220 0 0 0.4 0.4 {}
T {D M1 M2 M2 D
D M1 M2 M2 D} 150 -180 0 0 0.4 0.4 {}
T {BEcause IHP is in very early stage i nrelatio nto the open source tools, a lot of the things need to be done manually in the layout} -200 -350 0 0 0.4 0.4 {}
N -160 -10 -160 50 {lab=VSS}
N -120 -70 -120 -10 {lab=Iref}
N -160 -70 -120 -70 {lab=Iref}
N -160 -70 -160 -40 {lab=Iref}
N -160 -150 -160 -70 {lab=Iref}
N -120 -10 -20 -10 {lab=Iref}
N 20 -10 20 50 {lab=VSS}
N 20 -90 20 -40 {lab=Iout}
N -380 -170 -350 -170 {lab=VSS}
N -380 -130 -350 -130 {lab=Iref}
N -380 -90 -350 -90 {lab=Iout}
N 140 -40 180 -40 {lab=#net1}
N 140 -40 140 20 {lab=#net1}
N 180 20 190 20 {lab=#net1}
N 180 -10 180 20 {lab=#net1}
N 140 20 180 20 {lab=#net1}
C {sg13g2_pr/sg13_hv_nmos.sym} -140 -10 2 0 {name=M1
l=2.2u
w=2.0u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} -160 50 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 50 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 -10 2 1 {name=M2
l=2.2u
w=2.0u
ng=2
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} -160 -150 2 0 {name=p1 sig_type=std_logic lab=Iref}
C {devices/lab_pin.sym} 20 -90 2 0 {name=p2 sig_type=std_logic lab=Iout}
C {iopin.sym} -380 -170 0 1 {name=p4 lab=VSS}
C {devices/lab_pin.sym} -350 -170 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {iopin.sym} -380 -130 0 1 {name=p7 lab=Iref}
C {devices/lab_pin.sym} -350 -130 2 0 {name=p8 sig_type=std_logic lab=Iref}
C {iopin.sym} -380 -90 0 1 {name=p9 lab=Iout}
C {devices/lab_pin.sym} -350 -90 2 0 {name=p10 sig_type=std_logic lab=Iout}
C {sg13g2_pr/sg13_hv_nmos.sym} 160 -10 2 1 {name=M3
l=2.2u
w=1.0u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 190 20 2 0 {name=p11 sig_type=std_logic lab=VSS}
