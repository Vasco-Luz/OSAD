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
T {AC testbench} -400 -260 0 0 0.4 0.4 {}
T {I need to do a small change in the simulation script} -410 -420 0 0 0.4 0.4 {}
N -1420 -130 -1420 -110 {
lab=GND}
N -1420 -230 -1420 -190 {
lab=VDD}
N -1490 -130 -1490 -110 {
lab=GND}
N -1020 -410 -1020 -370 {
lab=VSS}
N -1110 140 -1110 180 {
lab=#net1}
N -1110 -510 -1060 -510 {
lab=VIN+}
N -1110 -100 -1110 -50 {
lab=VIN+}
N -1020 -650 -1020 -610 {
lab=VDD}
N -920 -480 -870 -480 {
lab=VOUT}
N -1110 10 -1110 80 {
lab=#net1}
N -1490 -230 -1490 -190 {
lab=VSS}
N -1020 -610 -1020 -550 {
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
N -1110 -450 -1060 -450 {
lab=VIN-}
N -870 -420 -870 -380 {
lab=VSS}
N -1280 10 -1280 90 {
lab=#net2}
N -1110 80 -1110 140 {
lab=#net1}
N -590 -200 -590 -160 {
lab=VDD}
N -590 -160 -590 -100 {
lab=VDD}
N -590 40 -590 80 {
lab=VSS}
N -480 -30 -430 -30 {
lab=VOUT_cm}
N -430 30 -430 70 {
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
N -660 -40 -660 50 {
lab=#net3}
N -660 50 -660 110 {
lab=#net3}
N -830 50 -830 110 {
lab=#net4}
N -660 280 -660 290 {
lab=#net3}
N 30 -180 30 -140 {
lab=VDD}
N 30 -140 30 -80 {
lab=VDD}
N 140 -10 190 -10 {
lab=VOUT_a-}
N 190 50 190 90 {
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
N -40 -20 -40 70 {
lab=#net5}
N -40 70 -40 130 {
lab=#net5}
N -210 70 -210 130 {
lab=#net6}
N -40 300 -40 310 {
lab=#net5}
N 30 200 30 240 {
lab=VSS}
N 30 60 30 130 {
lab=#net7}
N -40 310 -40 370 {
lab=#net5}
N 630 -200 630 -160 {
lab=VDD}
N 740 0 790 0 {
lab=VOUT_a+}
N 790 60 790 100 {
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
N 630 140 630 180 {
lab=VSS}
N 630 70 630 140 {
lab=VSS}
N 470 300 470 360 {
lab=#net8}
N 30 130 30 140 {
lab=#net7}
N -1280 -0 -1280 10 {lab=#net2}
N 630 -100 630 -70 {lab=#net10}
N 520 -30 590 -30 {lab=#net8}
N 520 10 520 30 {lab=#net9}
N 520 30 590 30 {lab=#net9}
N -210 20 -10 20 {lab=#net6}
N -40 -40 -40 -20 {lab=#net5}
N -40 -40 -10 -40 {lab=#net5}
N -830 0 -630 -0 {lab=#net4}
N -660 -60 -660 -40 {lab=#net3}
N -660 -60 -630 -60 {lab=#net3}
C {devices/lab_pin.sym} -1420 -230 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -1420 -160 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -1420 -110 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1020 -370 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1490 -160 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -1490 -110 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -1630 -450 0 0 {name=CORNER only_toplevel=true corner=fs}
C {devices/lab_pin.sym} -1110 -510 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -1110 -20 0 0 {name=V4 value= "ac 0.5"}
C {devices/lab_pin.sym} -1110 -100 0 0 {name=p3 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} -1020 -650 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -870 -480 1 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {devices/vsource.sym} -1280 120 0 0 {name=V6 value= "V_OFF"}
C {devices/lab_pin.sym} -1490 -230 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -1110 280 0 0 {name=V3 value= "VCM"}
C {devices/gnd.sym} -1110 330 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -1280 -100 0 0 {name=p2 sig_type=std_logic lab=VIN-}
C {devices/lab_pin.sym} -1110 -450 0 0 {name=p7 sig_type=std_logic lab=VIN-}
C {capa.sym} -870 -450 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -870 -380 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -590 -200 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -590 80 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -430 -30 1 0 {name=p13 sig_type=std_logic lab=VOUT_cm

}
C {devices/lab_pin.sym} -430 70 0 0 {name=p14 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -830 220 0 0 {name=V8 value= "V_OFF"}
C {devices/vsource.sym} -660 380 0 0 {name=V9 value= "VCM"}
C {devices/gnd.sym} -660 430 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -660 320 0 0 {name=V7 value= "ac 1"}
C {devices/lab_pin.sym} 30 -180 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -10 1 0 {name=p17 sig_type=std_logic lab=VOUT_a-

}
C {devices/lab_pin.sym} 190 90 0 0 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -210 240 0 0 {name=V10 value= "V_OFF"}
C {devices/vsource.sym} -40 400 0 0 {name=V11 value= "VCM"}
C {devices/gnd.sym} -40 450 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 30 170 0 0 {name=V13 value= "ac 1"}
C {devices/lab_pin.sym} 30 240 0 0 {name=p19 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 630 -200 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 0 1 0 {name=p20 sig_type=std_logic lab=VOUT_a+

}
C {devices/lab_pin.sym} 790 100 0 0 {name=p21 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 300 230 0 0 {name=V12 value= "V_OFF"}
C {devices/vsource.sym} 470 390 0 0 {name=V14 value= "VCM"}
C {devices/gnd.sym} 470 440 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 630 -130 2 0 {name=V15 value= "ac 1"}
C {devices/lab_pin.sym} 630 180 0 0 {name=p22 sig_type=std_logic lab=VSS
}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} -990 -480 0 0 {name=x1}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} -560 -30 0 0 {name=x2}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 60 -10 0 0 {name=x3}
C {Sky130A/UUT_sky/UUT_VA_sky.sym} 660 0 0 0 {name=x4}
C {devices/vsource.sym} -1280 -20 0 0 {name=V5 value= "ac -0.5"}
C {capa.sym} -430 0 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 190 20 0 0 {name=C3
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 790 30 0 0 {name=C4
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -1490 -450 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
.Temp 27
.param VDD = 5
.param VSS = 0
.param CL = 3p
.param V_OFF = -806.71u
.param VCM=2.5


.control

	save all
	ac dec 100 1 10G
	plot db(v(VOUT))
	plot db(v(VOUT_CM))
	plot db(v(VOUT_A-))
	plot db(v(VOUT_A+))	
	wrdata VIN_sweep_AC.csv db(v(VOUT)) phase(v(VOUT)) db(v(VOUT_CM)) db(v(VOUT_A-)) db(v(VOUT_A+))
.endc



"}
