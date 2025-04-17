v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -740 -280 -740 -120 {}
L 4 -740 -120 -420 -120 {}
L 4 -420 -300 -420 -120 {}
L 4 -740 -300 -420 -300 {}
L 4 -740 -300 -740 -280 {}
T {simulation scripts} -830 -380 0 0 1 1 {}
N 100 -180 200 -180 {lab=V1}
N 100 -120 200 -120 {lab=GND}
N 100 -340 100 -300 {lab=GND}
N 200 -180 300 -180 {lab=V1}
N 200 -120 300 -120 {lab=GND}
N 330 -230 350 -230 {lab=V1}
N 410 -230 450 -230 {lab=#net1}
N 300 -180 440 -180 {lab=V1}
N 530 -180 530 -170 {lab=V1}
N 100 -120 100 -100 {lab=GND}
N 60 -130 60 -120 {lab=GND}
N 60 -120 100 -120 {lab=GND}
N 100 -240 100 -180 {lab=V1}
N 570 -240 570 -180 {lab=V2}
N 440 -180 530 -180 {lab=V1}
N 570 -340 570 -300 {lab=GND}
N 570 -180 640 -180 {lab=V2}
N 570 -120 640 -120 {lab=GND}
N 640 -180 700 -180 {lab=V2}
N 640 -120 700 -120 {lab=GND}
N 570 -120 570 -100 {lab=GND}
N 530 -130 530 -120 {lab=GND}
N 530 -120 570 -120 {lab=GND}
N -30 -170 60 -170 {lab=Vin}
N -30 -110 -30 -100 {lab=GND}
N 100 -240 180 -240 {lab=V1}
N 100 -300 180 -300 {lab=GND}
N 470 -120 530 -120 {lab=GND}
N 510 -230 530 -230 {lab=V2}
N 330 -230 330 -180 {lab=V1}
N 530 -230 570 -230 {lab=V2}
C {vccs.sym} 100 -150 0 0 {name=G1 value=0.000109}
C {capa.sym} 300 -150 0 0 {name=C1
m=1
value=1.36e-14
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 100 -100 0 0 {name=l1 lab=GND}
C {res.sym} 200 -150 0 0 {name=R1
value=2484836
footprint=1206
device=resistor
m=1}
C {gnd.sym} 100 -340 2 0 {name=l2 lab=GND}
C {vccs.sym} 570 -150 0 0 {name=G2 value=0.000416}
C {res.sym} 380 -230 1 0 {name=R3
value=22845
footprint=1206
device=resistor
m=1}
C {capa.sym} 480 -230 1 0 {name=C3
m=1
value=4.6818e-13
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 570 -100 0 0 {name=l5 lab=GND}
C {res.sym} 570 -270 0 0 {name=R5
value=1212121
footprint=1206
device=resistor
m=1}
C {gnd.sym} 570 -340 2 0 {name=l3 lab=GND}
C {capa.sym} 700 -150 0 0 {name=C5
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 640 -150 0 0 {name=R4
value=821692
footprint=1206
device=resistor
m=1}
C {vsource.sym} -30 -140 0 0 {name=V1 value="ac 1" savecurrent=false}
C {gnd.sym} -30 -100 0 0 {name=l4 lab=GND
value="ac 1"}
C {capa.sym} 180 -270 0 0 {name=C2
m=1
value=1.18e-14
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 470 -150 0 0 {name=C4
m=1
value=4.14e-14
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/corner.sym} -710 -250 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -560 -250 0 0 {name=spice only_toplevel=false
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
C {devices/lab_pin.sym} 270 -180 1 0 {name=p33 sig_type=std_logic lab=V1}
C {devices/lab_pin.sym} 570 -210 2 0 {name=p1 sig_type=std_logic lab=V2}
C {res.sym} 100 -270 0 0 {name=R2
value=2484836
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 10 -170 1 0 {name=p2 sig_type=std_logic lab=Vin}
