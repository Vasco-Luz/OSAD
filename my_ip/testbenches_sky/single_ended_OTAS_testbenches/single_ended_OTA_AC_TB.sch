v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -560 -310 -560 -150 {}
L 4 -560 -150 -240 -150 {}
L 4 -240 -330 -240 -150 {}
L 4 -560 -330 -240 -330 {}
L 4 -560 -330 -560 -310 {}
T {simulation scripts} -650 -410 0 0 1 1 {}
N -320 40 -320 60 {
lab=GND}
N -320 -60 -320 -20 {
lab=VDD}
N -390 40 -390 60 {
lab=GND}
N 180 -150 180 -110 {
lab=VSS}
N -10 310 -10 350 {
lab=#net1}
N 80 -210 130 -210 {
lab=VIN+}
N -10 70 -10 120 {
lab=VIN+}
N 180 -330 180 -290 {
lab=VDD}
N 250 -190 300 -190 {
lab=VOUT}
N -10 180 -10 250 {
lab=#net1}
N -390 -60 -390 -20 {
lab=VSS}
N 180 -290 180 -230 {
lab=VDD}
N -10 350 -10 420 {
lab=#net1}
N -10 480 -10 500 {
lab=GND}
N -180 70 -180 120 {
lab=VIN-}
N -180 320 -180 360 {
lab=#net1}
N -180 360 -10 360 {
lab=#net1}
N 80 -170 130 -170 {
lab=VIN-}
N 300 -130 300 -90 {
lab=VSS}
N -180 180 -180 260 {
lab=#net2}
N -10 250 -10 310 {
lab=#net1}
N 540 10 540 50 {
lab=VDD}
N 540 50 540 110 {
lab=VDD}
N 540 190 540 230 {
lab=VSS}
N 610 150 660 150 {
lab=VOUT_cm}
N 660 210 660 250 {
lab=VSS}
N 440 410 440 450 {
lab=#net3}
N 440 280 440 350 {
lab=#net3}
N 440 580 440 600 {
lab=GND}
N 270 170 270 220 {
lab=#net4}
N 270 420 270 460 {
lab=#net3}
N 270 460 440 460 {
lab=#net3}
N 270 280 270 360 {
lab=#net4}
N 440 350 440 410 {
lab=#net3}
N 440 130 490 130 {
lab=#net3}
N 270 170 490 170 {
lab=#net4}
N 440 130 440 220 {
lab=#net3}
N 440 220 440 280 {
lab=#net3}
N 270 220 270 280 {
lab=#net4}
N 440 450 440 460 {
lab=#net3}
N 1160 30 1160 70 {
lab=VDD}
N 1160 70 1160 130 {
lab=VDD}
N 1230 170 1280 170 {
lab=VOUT_a-}
N 1280 230 1280 270 {
lab=VSS}
N 1060 430 1060 470 {
lab=#net5}
N 1060 300 1060 370 {
lab=#net5}
N 1060 600 1060 620 {
lab=GND}
N 890 190 890 240 {
lab=#net6}
N 890 440 890 480 {
lab=#net5}
N 890 480 1060 480 {
lab=#net5}
N 890 300 890 380 {
lab=#net6}
N 1060 370 1060 430 {
lab=#net5}
N 1060 150 1110 150 {
lab=#net5}
N 890 190 1110 190 {
lab=#net6}
N 1060 150 1060 240 {
lab=#net5}
N 1060 240 1060 300 {
lab=#net5}
N 890 240 890 300 {
lab=#net6}
N 1060 470 1060 480 {
lab=#net5}
N 1160 350 1160 390 {
lab=VSS}
N 1160 210 1160 280 {
lab=#net7}
N 1060 480 1060 540 {
lab=#net5}
N 1670 20 1670 60 {
lab=VDD}
N 1740 160 1790 160 {
lab=VOUT_a+}
N 1790 220 1790 260 {
lab=VSS}
N 1570 420 1570 460 {
lab=#net8}
N 1570 290 1570 360 {
lab=#net8}
N 1570 590 1570 610 {
lab=GND}
N 1400 180 1400 230 {
lab=#net9}
N 1400 430 1400 470 {
lab=#net8}
N 1400 470 1570 470 {
lab=#net8}
N 1400 290 1400 370 {
lab=#net9}
N 1570 360 1570 420 {
lab=#net8}
N 1570 140 1620 140 {
lab=#net8}
N 1400 180 1620 180 {
lab=#net9}
N 1570 140 1570 230 {
lab=#net8}
N 1570 230 1570 290 {
lab=#net8}
N 1400 230 1400 290 {
lab=#net9}
N 1570 460 1570 470 {
lab=#net8}
N 1670 270 1670 310 {
lab=VSS}
N 1670 200 1670 270 {
lab=VSS}
N 1570 470 1570 530 {
lab=#net8}
N 1160 280 1160 290 {
lab=#net7}
C {/home/vasco/Desktop/OSAD/my_ip/testbenches_sky/single_ended_OTAS_testbenches/UUT.sym} 180 -200 0 0 {name=x1}
C {devices/lab_pin.sym} -320 -60 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -320 10 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -320 60 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 180 -110 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -390 10 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -390 60 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -530 -280 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -390 -280 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	

.Temp 27
.param VDD = 1.8
.param VSS = 0
.param VCM=\{(VDD-VSS)/2\}
.param VCM_NEG=\{-VCM\}
.param V_OFF = 12u
.param CL = 3p

.control
save all

ac dec 10 1 10G
wrdata VIN_sweep_AC.csv db(v(VOUT)) phase(VOUT) db(v(VOUT_cm)) db(v(VOUT_a-)) db(v(VOUT_a+))
plot db(v(VOUT))
plot db(v(VOUT_cm))
plot db(v(VOUT_a-))
plot db(v(VOUT_a+))

.endc
"}
C {devices/lab_pin.sym} 80 -210 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -10 150 0 0 {name=V4 value= "ac 0.5"}
C {devices/lab_pin.sym} -10 70 0 0 {name=p3 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 180 -330 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 300 -190 1 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {devices/vsource.sym} -180 290 0 0 {name=V6 value= "V_OFF"}
C {devices/lab_pin.sym} -390 -60 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -10 450 0 0 {name=V3 value= "VCM"}
C {devices/gnd.sym} -10 500 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -180 150 0 0 {name=V5 value= "ac -0.5"}
C {devices/lab_pin.sym} -180 70 0 0 {name=p2 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} 80 -170 0 0 {name=p7 sig_type=std_logic lab=VIN-}
C {capa.sym} 300 -160 0 0 {name=C1
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 300 -90 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {/home/vasco/Desktop/OSAD/my_ip/testbenches_sky/single_ended_OTAS_testbenches/UUT.sym} 540 140 0 0 {name=x2}
C {devices/lab_pin.sym} 540 10 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 230 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 660 150 1 0 {name=p13 sig_type=std_logic lab=VOUT_cm

}
C {capa.sym} 660 180 0 0 {name=C2
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 660 250 0 0 {name=p14 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 270 390 0 0 {name=V8 value= "V_OFF"}
C {devices/vsource.sym} 440 550 0 0 {name=V9 value= "VCM"}
C {devices/gnd.sym} 440 600 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 440 490 0 0 {name=V7 value= "ac 1"}
C {/home/vasco/Desktop/OSAD/my_ip/testbenches_sky/single_ended_OTAS_testbenches/UUT.sym} 1160 160 0 0 {name=x3}
C {devices/lab_pin.sym} 1160 30 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1280 170 1 0 {name=p17 sig_type=std_logic lab=VOUT_a-

}
C {capa.sym} 1280 200 0 0 {name=C3
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1280 270 0 0 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 890 410 0 0 {name=V10 value= "V_OFF"}
C {devices/vsource.sym} 1060 570 0 0 {name=V11 value= "VCM"}
C {devices/gnd.sym} 1060 620 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 1160 320 0 0 {name=V13 value= "ac 1"}
C {devices/lab_pin.sym} 1160 390 0 0 {name=p19 sig_type=std_logic lab=VSS
}
C {/home/vasco/Desktop/OSAD/my_ip/testbenches_sky/single_ended_OTAS_testbenches/UUT.sym} 1670 150 0 0 {name=x4}
C {devices/lab_pin.sym} 1670 20 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1790 160 1 0 {name=p20 sig_type=std_logic lab=VOUT_a+

}
C {capa.sym} 1790 190 0 0 {name=C4
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1790 260 0 0 {name=p21 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 1400 400 0 0 {name=V12 value= "V_OFF"}
C {devices/vsource.sym} 1570 560 0 0 {name=V14 value= "VCM"}
C {devices/gnd.sym} 1570 610 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1670 90 2 0 {name=V15 value= "ac 1"}
C {devices/lab_pin.sym} 1670 310 0 0 {name=p22 sig_type=std_logic lab=VSS
}
