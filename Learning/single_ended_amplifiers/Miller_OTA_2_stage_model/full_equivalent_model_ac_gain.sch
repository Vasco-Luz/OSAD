v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -790 -60 -790 100 {}
L 4 -790 100 -470 100 {}
L 4 -470 -80 -470 100 {}
L 4 -790 -80 -470 -80 {}
L 4 -790 -80 -790 -60 {}
T {simulation scripts} -880 -160 0 0 1 1 {}
N 240 100 240 110 {lab=GND}
N 240 40 280 40 {lab=Vin}
N 370 -10 490 -10 {lab=#net1}
N 370 50 490 50 {lab=V1}
N 280 40 330 40 {lab=Vin}
N 330 -50 330 -0 {lab=#net1}
N 330 -50 360 -50 {lab=#net1}
N 360 -50 370 -50 {lab=#net1}
N 370 -50 370 -10 {lab=#net1}
N 490 260 580 260 {lab=V1}
N 490 320 580 320 {lab=GND}
N 370 50 370 260 {lab=V1}
N 370 260 490 260 {lab=V1}
N 370 320 490 320 {lab=GND}
N 370 320 370 360 {lab=GND}
N 330 310 330 320 {lab=GND}
N 330 320 370 320 {lab=GND}
N 490 -10 600 -10 {lab=#net1}
N 490 50 600 50 {lab=V1}
N 370 -190 370 -50 {lab=#net1}
N 370 -280 370 -250 {lab=GND}
N 370 -190 460 -190 {lab=#net1}
N 370 -250 460 -250 {lab=GND}
N -10 -20 -10 10 {lab=#net1}
N -10 -20 30 -20 {lab=#net1}
N 30 -20 30 -0 {lab=#net1}
N 30 -40 30 -20 {lab=#net1}
N 30 -50 30 -40 {lab=#net1}
N 30 -50 330 -50 {lab=#net1}
N 20 260 110 260 {lab=#net2}
N 20 320 110 320 {lab=GND}
N -100 260 20 260 {lab=#net2}
N -100 320 20 320 {lab=GND}
N -100 320 -100 360 {lab=GND}
N -140 310 -140 320 {lab=GND}
N -140 320 -100 320 {lab=GND}
N 30 60 30 260 {lab=#net2}
N -140 260 -140 270 {lab=#net2}
N -140 260 -100 260 {lab=#net2}
N 110 260 320 260 {lab=#net2}
N 320 260 320 270 {lab=#net2}
N 320 270 330 270 {lab=#net2}
N -160 70 -50 70 {lab=#net2}
N 30 -0 130 -0 {lab=#net1}
N 30 60 130 60 {lab=#net2}
N -160 -20 -160 10 {lab=#net1}
N -160 -20 -10 -20 {lab=#net1}
N -50 70 -50 90 {lab=#net2}
N -50 90 30 90 {lab=#net2}
N 710 150 730 150 {lab=V1}
N 790 150 830 150 {lab=#net3}
N 910 200 910 210 {lab=V1}
N 950 140 950 200 {lab=V2}
N 820 200 910 200 {lab=V1}
N 950 40 950 80 {lab=GND}
N 950 200 1020 200 {lab=V2}
N 950 260 1020 260 {lab=GND}
N 1020 200 1080 200 {lab=V2}
N 1020 260 1080 260 {lab=GND}
N 950 260 950 280 {lab=GND}
N 910 250 910 260 {lab=GND}
N 910 260 950 260 {lab=GND}
N 850 260 910 260 {lab=GND}
N 890 150 910 150 {lab=V2}
N 710 150 710 200 {lab=V1}
N 910 150 950 150 {lab=V2}
N 710 200 820 200 {lab=V1}
N 370 200 710 200 {lab=V1}
N -130 170 -130 180 {lab=GND}
N -130 50 -130 110 {lab=GND}
N -130 50 -10 50 {lab=GND}
N -130 110 -130 170 {lab=GND}
C {sky130_fd_pr/corner.sym} -760 -30 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -610 -30 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 5
.param VSS = 0



.control
save all
ac dec 100 1 10G
plot db(v(V2)) (180+(180*ph(v(V2))/pi)) db(v(V1))
pz VIN 0 0 V2 vol pz
print all




.endc

"



}
C {vsource.sym} 240 70 0 0 {name=V1 value="ac 1" savecurrent=false}
C {gnd.sym} 240 110 0 0 {name=l4 lab=GND
value="ac 1"}
C {devices/lab_pin.sym} 270 40 1 0 {name=p2 sig_type=std_logic lab=Vin}
C {vccs.sym} 370 20 0 0 {name=G1 value=0.000109}
C {res.sym} 490 20 0 0 {name=R1
value=2484836
footprint=1206
device=resistor
m=1}
C {res.sym} 490 290 0 0 {name=R2
value=2809549
footprint=1206
device=resistor
m=1}
C {gnd.sym} 370 360 0 0 {name=l1 lab=GND
value="ac 1"}
C {vccs.sym} 370 290 0 0 {name=G3 value=5.095e-05}
C {capa.sym} 580 290 0 0 {name=C2
m=1
value=1.18e-14
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 600 20 0 0 {name=C1
m=1
value=1.36e-14
footprint=1206
device="ceramic capacitor"}
C {res.sym} 370 -220 0 0 {name=R3
value=1785813
footprint=1206
device=resistor
m=1}
C {gnd.sym} 370 -280 2 0 {name=l2 lab=GND
value="ac 1"}
C {capa.sym} 460 -220 0 0 {name=C3
m=1
value=3.9e-14
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 30 30 0 0 {name=G2 value=0.000109}
C {res.sym} 20 290 0 0 {name=R4
value=2809549
footprint=1206
device=resistor
m=1}
C {gnd.sym} -100 360 0 0 {name=l5 lab=GND
value="ac 1"}
C {vccs.sym} -100 290 0 0 {name=G4 value=5.095e-05}
C {res.sym} -160 40 0 0 {name=R5
value=2484836
footprint=1206
device=resistor
m=1}
C {capa.sym} 130 30 0 0 {name=C5
m=1
value=1.36e-14
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 950 230 0 0 {name=G5 value=0.000416}
C {res.sym} 760 150 1 0 {name=R6
value=22845
footprint=1206
device=resistor
m=1}
C {capa.sym} 860 150 1 0 {name=C6
m=1
value=4.6818e-13
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 950 280 0 0 {name=l6 lab=GND}
C {res.sym} 950 110 0 0 {name=R7
value=1212121
footprint=1206
device=resistor
m=1}
C {gnd.sym} 950 40 2 0 {name=l7 lab=GND}
C {capa.sym} 1080 230 0 0 {name=C7
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1020 230 0 0 {name=R8
value=821692
footprint=1206
device=resistor
m=1}
C {capa.sym} 850 230 0 0 {name=C8
m=1
value=4.14e-14
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 950 170 2 0 {name=p1 sig_type=std_logic lab=V2}
C {devices/lab_pin.sym} 580 200 3 0 {name=p3 sig_type=std_logic lab=V1}
C {capa.sym} 110 290 0 0 {name=C4
m=1
value=1.18e-14
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -130 180 0 0 {name=l8 lab=GND
value="ac 1"}
