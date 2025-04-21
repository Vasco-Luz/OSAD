v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1130 -630 -1130 -470 {}
L 4 -1130 -470 -810 -470 {}
L 4 -810 -650 -810 -470 {}
L 4 -1130 -650 -810 -650 {}
L 4 -1130 -650 -1130 -630 {}
T {simulation scripts} -1220 -730 0 0 1 1 {}
N -100 -470 -100 -460 {lab=GND}
N -100 -530 -60 -530 {lab=Vin}
N 30 -580 150 -580 {lab=#net1}
N 30 -520 150 -520 {lab=V1}
N -60 -530 -10 -530 {lab=Vin}
N -10 -620 -10 -570 {lab=#net1}
N -10 -620 20 -620 {lab=#net1}
N 20 -620 30 -620 {lab=#net1}
N 30 -620 30 -580 {lab=#net1}
N 150 -310 240 -310 {lab=V1}
N 150 -250 240 -250 {lab=GND}
N 30 -520 30 -310 {lab=V1}
N 30 -310 150 -310 {lab=V1}
N 30 -250 150 -250 {lab=GND}
N 30 -250 30 -210 {lab=GND}
N -10 -260 -10 -250 {lab=GND}
N -10 -250 30 -250 {lab=GND}
N 150 -580 260 -580 {lab=#net1}
N 150 -520 260 -520 {lab=V1}
N 30 -760 30 -620 {lab=#net1}
N 30 -850 30 -820 {lab=GND}
N 30 -760 120 -760 {lab=#net1}
N 30 -820 120 -820 {lab=GND}
N -350 -590 -350 -560 {lab=#net1}
N -350 -590 -310 -590 {lab=#net1}
N -310 -590 -310 -570 {lab=#net1}
N -310 -610 -310 -590 {lab=#net1}
N -310 -620 -310 -610 {lab=#net1}
N -310 -620 -10 -620 {lab=#net1}
N -320 -310 -230 -310 {lab=#net2}
N -320 -250 -230 -250 {lab=GND}
N -440 -310 -320 -310 {lab=#net2}
N -440 -250 -320 -250 {lab=GND}
N -440 -250 -440 -210 {lab=GND}
N -480 -260 -480 -250 {lab=GND}
N -480 -250 -440 -250 {lab=GND}
N -310 -510 -310 -310 {lab=#net2}
N -480 -310 -480 -300 {lab=#net2}
N -480 -310 -440 -310 {lab=#net2}
N -230 -310 -20 -310 {lab=#net2}
N -20 -310 -20 -300 {lab=#net2}
N -20 -300 -10 -300 {lab=#net2}
N -500 -500 -390 -500 {lab=#net2}
N -310 -570 -210 -570 {lab=#net1}
N -310 -510 -210 -510 {lab=#net2}
N -500 -590 -500 -560 {lab=#net1}
N -500 -590 -350 -590 {lab=#net1}
N -390 -500 -390 -480 {lab=#net2}
N -390 -480 -310 -480 {lab=#net2}
N 370 -420 390 -420 {lab=V1}
N 450 -420 490 -420 {lab=#net3}
N 570 -370 570 -360 {lab=V1}
N 610 -430 610 -370 {lab=V2}
N 480 -370 570 -370 {lab=V1}
N 610 -530 610 -490 {lab=GND}
N 610 -370 680 -370 {lab=V2}
N 610 -310 680 -310 {lab=GND}
N 680 -370 740 -370 {lab=V2}
N 680 -310 740 -310 {lab=GND}
N 610 -310 610 -290 {lab=GND}
N 570 -320 570 -310 {lab=GND}
N 570 -310 610 -310 {lab=GND}
N 510 -310 570 -310 {lab=GND}
N 550 -420 570 -420 {lab=V2}
N 370 -420 370 -370 {lab=V1}
N 570 -420 610 -420 {lab=V2}
N 370 -370 480 -370 {lab=V1}
N 30 -370 370 -370 {lab=V1}
N -140 -530 -100 -530 {lab=Vin}
N -140 -530 -140 -430 {lab=Vin}
N -350 -430 -140 -430 {lab=Vin}
N -350 -520 -350 -430 {lab=Vin}
C {sky130_fd_pr/corner.sym} -1100 -600 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -950 -600 0 0 {name=spice only_toplevel=false
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
C {vsource.sym} -100 -500 0 0 {name=V1 value="ac 1" savecurrent=false}
C {gnd.sym} -100 -460 0 0 {name=l4 lab=GND
value="ac 1"}
C {devices/lab_pin.sym} -70 -530 1 0 {name=p2 sig_type=std_logic lab=Vin}
C {vccs.sym} 30 -550 0 0 {name=G1 value=0.000109}
C {res.sym} 150 -550 0 0 {name=R1
value=2484836
footprint=1206
device=resistor
m=1}
C {res.sym} 150 -280 0 0 {name=R2
value=2809549
footprint=1206
device=resistor
m=1}
C {gnd.sym} 30 -210 0 0 {name=l1 lab=GND
value="ac 1"}
C {vccs.sym} 30 -280 0 0 {name=G3 value=5.095e-05}
C {capa.sym} 240 -280 0 0 {name=C2
m=1
value=1.18e-14
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 260 -550 0 0 {name=C1
m=1
value=1.36e-14
footprint=1206
device="ceramic capacitor"}
C {res.sym} 30 -790 0 0 {name=R3
value=1785813
footprint=1206
device=resistor
m=1}
C {gnd.sym} 30 -850 2 0 {name=l2 lab=GND
value="ac 1"}
C {capa.sym} 120 -790 0 0 {name=C3
m=1
value=3.9e-14
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} -310 -540 0 0 {name=G2 value=0.000109}
C {res.sym} -320 -280 0 0 {name=R4
value=2809549
footprint=1206
device=resistor
m=1}
C {gnd.sym} -440 -210 0 0 {name=l5 lab=GND
value="ac 1"}
C {vccs.sym} -440 -280 0 0 {name=G4 value=5.095e-05}
C {res.sym} -500 -530 0 0 {name=R5
value=2484836
footprint=1206
device=resistor
m=1}
C {capa.sym} -210 -540 0 0 {name=C5
m=1
value=1.36e-14
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 610 -340 0 0 {name=G5 value=0.000416}
C {res.sym} 420 -420 1 0 {name=R6
value=22845
footprint=1206
device=resistor
m=1}
C {capa.sym} 520 -420 1 0 {name=C6
m=1
value=4.6818e-13
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 610 -290 0 0 {name=l6 lab=GND}
C {res.sym} 610 -460 0 0 {name=R7
value=1212121
footprint=1206
device=resistor
m=1}
C {gnd.sym} 610 -530 2 0 {name=l7 lab=GND}
C {capa.sym} 740 -340 0 0 {name=C7
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 680 -340 0 0 {name=R8
value=821692
footprint=1206
device=resistor
m=1}
C {capa.sym} 510 -340 0 0 {name=C8
m=1
value=4.14e-14
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 610 -400 2 0 {name=p1 sig_type=std_logic lab=V2}
C {devices/lab_pin.sym} 240 -370 3 0 {name=p3 sig_type=std_logic lab=V1}
C {capa.sym} -230 -280 0 0 {name=C4
m=1
value=1.18e-14
footprint=1206
device="ceramic capacitor"}
