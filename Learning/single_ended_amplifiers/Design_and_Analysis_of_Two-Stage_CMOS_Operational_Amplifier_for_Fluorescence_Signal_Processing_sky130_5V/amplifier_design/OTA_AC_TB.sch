v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1660 -480 -1660 -320 {}
L 4 -1660 -320 -1340 -320 {}
L 4 -1340 -500 -1340 -320 {}
L 4 -1660 -500 -1340 -500 {}
L 4 -1660 -500 -1660 -480 {}
T {simulation scripts} -1750 -580 0 0 1 1 {}
N -1420 -130 -1420 -110 {
lab=GND}
N -1420 -230 -1420 -190 {
lab=VDD}
N -1490 -130 -1490 -110 {
lab=GND}
N -920 -320 -920 -280 {
lab=VSS}
N -1110 140 -1110 180 {
lab=#net1}
N -1020 -380 -970 -380 {
lab=VIN+}
N -1110 -100 -1110 -50 {
lab=VIN+}
N -920 -500 -920 -460 {
lab=VDD}
N -850 -360 -800 -360 {
lab=VOUT}
N -1110 10 -1110 80 {
lab=#net1}
N -1490 -230 -1490 -190 {
lab=VSS}
N -920 -460 -920 -400 {
lab=VDD}
N -1110 180 -1110 250 {
lab=#net1}
N -1110 310 -1110 330 {
lab=GND}
N -1280 -100 -1280 -50 {
lab=VIN-}
N -1280 150 -1280 190 {
lab=#net1}
N -1280 190 -1110 190 {
lab=#net1}
N -1020 -340 -970 -340 {
lab=VIN-}
N -800 -300 -800 -260 {
lab=VSS}
N -1280 10 -1280 90 {
lab=#net2}
N -1110 80 -1110 140 {
lab=#net1}
N -560 -160 -560 -120 {
lab=VDD}
N -560 -120 -560 -60 {
lab=VDD}
N -560 20 -560 60 {
lab=VSS}
N -490 -20 -440 -20 {
lab=VOUT_cm}
N -440 40 -440 80 {
lab=VSS}
N -660 240 -660 280 {
lab=#net3}
N -660 110 -660 180 {
lab=#net3}
N -660 410 -660 430 {
lab=GND}
N -830 0 -830 50 {
lab=#net4}
N -830 250 -830 290 {
lab=#net3}
N -830 290 -660 290 {
lab=#net3}
N -830 110 -830 190 {
lab=#net4}
N -660 180 -660 240 {
lab=#net3}
N -660 -40 -610 -40 {
lab=#net3}
N -830 0 -610 0 {
lab=#net4}
N -660 -40 -660 50 {
lab=#net3}
N -660 50 -660 110 {
lab=#net3}
N -830 50 -830 110 {
lab=#net4}
N -660 280 -660 290 {
lab=#net3}
N 60 -140 60 -100 {
lab=VDD}
N 60 -100 60 -40 {
lab=VDD}
N 130 0 180 0 {
lab=VOUT_a-}
N 180 60 180 100 {
lab=VSS}
N -40 260 -40 300 {
lab=#net5}
N -40 130 -40 200 {
lab=#net5}
N -40 430 -40 450 {
lab=GND}
N -210 20 -210 70 {
lab=#net6}
N -210 270 -210 310 {
lab=#net5}
N -210 310 -40 310 {
lab=#net5}
N -210 130 -210 210 {
lab=#net6}
N -40 200 -40 260 {
lab=#net5}
N -40 -20 10 -20 {
lab=#net5}
N -210 20 10 20 {
lab=#net6}
N -40 -20 -40 70 {
lab=#net5}
N -40 70 -40 130 {
lab=#net5}
N -210 70 -210 130 {
lab=#net6}
N -40 300 -40 310 {
lab=#net5}
N 60 180 60 220 {
lab=VSS}
N 60 40 60 110 {
lab=#net7}
N -40 310 -40 370 {
lab=#net5}
N 570 -150 570 -110 {
lab=VDD}
N 640 -10 690 -10 {
lab=VOUT_a+}
N 690 50 690 90 {
lab=VSS}
N 470 250 470 290 {
lab=#net8}
N 470 120 470 190 {
lab=#net8}
N 470 420 470 440 {
lab=GND}
N 300 10 300 60 {
lab=#net9}
N 300 260 300 300 {
lab=#net8}
N 300 300 470 300 {
lab=#net8}
N 300 120 300 200 {
lab=#net9}
N 470 190 470 250 {
lab=#net8}
N 470 -30 520 -30 {
lab=#net8}
N 300 10 520 10 {
lab=#net9}
N 470 -30 470 60 {
lab=#net8}
N 470 60 470 120 {
lab=#net8}
N 300 60 300 120 {
lab=#net9}
N 470 290 470 300 {
lab=#net8}
N 570 100 570 140 {
lab=VSS}
N 570 30 570 100 {
lab=VSS}
N 470 300 470 360 {
lab=#net8}
N 60 110 60 120 {
lab=#net7}
C {devices/lab_pin.sym} -1420 -230 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -1420 -160 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -1420 -110 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -920 -280 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1490 -160 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -1490 -110 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -1630 -450 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -1490 -450 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 1.8
.param VSS = 0
.param VCM=\{(VDD-VSS)/2\}
.param VCM_NEG=\{-VCM\}
.param V_OFF = 2.01u
.param CL = 3p

.control
save all

ac dec 100 1 10G
setseed 10
wrdata VIN_sweep_AC.csv db(v(VOUT)) phase(VOUT) db(v(VOUT_cm)) db(v(VOUT_a-)) db(v(VOUT_a+))
plot db(v(VOUT)) phase(VOUT)
plot db(v(VOUT_cm))
plot db(v(VOUT_a-))
plot db(v(VOUT_a+))

.endc
"}
C {devices/lab_pin.sym} -1020 -380 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -1110 -20 0 0 {name=V4 value= "ac 0.5"}
C {devices/lab_pin.sym} -1110 -100 0 0 {name=p3 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} -920 -500 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -800 -360 1 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {devices/vsource.sym} -1280 120 0 0 {name=V6 value= "V_OFF"}
C {devices/lab_pin.sym} -1490 -230 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1110 280 0 0 {name=V3 value= "VCM"}
C {devices/gnd.sym} -1110 330 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1280 -20 0 0 {name=V5 value= "ac -0.5"}
C {devices/lab_pin.sym} -1280 -100 0 0 {name=p2 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} -1020 -340 0 0 {name=p7 sig_type=std_logic lab=VIN-}
C {capa.sym} -800 -330 0 0 {name=C1
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -800 -260 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -560 -160 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -560 60 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -440 -20 1 0 {name=p13 sig_type=std_logic lab=VOUT_cm

}
C {capa.sym} -440 10 0 0 {name=C2
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -440 80 0 0 {name=p14 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -830 220 0 0 {name=V8 value= "V_OFF"}
C {devices/vsource.sym} -660 380 0 0 {name=V9 value= "VCM"}
C {devices/gnd.sym} -660 430 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -660 320 0 0 {name=V7 value= "ac 1"}
C {devices/lab_pin.sym} 60 -140 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 0 1 0 {name=p17 sig_type=std_logic lab=VOUT_a-

}
C {capa.sym} 180 30 0 0 {name=C3
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 180 100 0 0 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -210 240 0 0 {name=V10 value= "V_OFF"}
C {devices/vsource.sym} -40 400 0 0 {name=V11 value= "VCM"}
C {devices/gnd.sym} -40 450 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 60 150 0 0 {name=V13 value= "ac 1"}
C {devices/lab_pin.sym} 60 220 0 0 {name=p19 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 570 -150 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 690 -10 1 0 {name=p20 sig_type=std_logic lab=VOUT_a+

}
C {capa.sym} 690 20 0 0 {name=C4
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 690 90 0 0 {name=p21 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 300 230 0 0 {name=V12 value= "V_OFF"}
C {devices/vsource.sym} 470 390 0 0 {name=V14 value= "VCM"}
C {devices/gnd.sym} 470 440 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 570 -80 2 0 {name=V15 value= "ac 1"}
C {devices/lab_pin.sym} 570 140 0 0 {name=p22 sig_type=std_logic lab=VSS
}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} -920 -370 0 0 {name=x1}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} -560 -30 0 0 {name=x2}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 60 -10 0 0 {name=x3}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 570 -20 0 0 {name=x4}
