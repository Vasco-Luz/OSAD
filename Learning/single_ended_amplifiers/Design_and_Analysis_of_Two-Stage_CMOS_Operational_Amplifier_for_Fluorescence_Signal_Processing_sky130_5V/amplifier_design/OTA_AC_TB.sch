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


.control

	save all
	ac dec 100 1 10G
	plot db(v(VOUT))
	plot db(v(VOUT_CM))
	plot db(v(VOUT_A-))
	plot db(v(VOUT_A+))	
	wrdata VIN_sweep_AC.csv db(v(VOUT)) phase(v(VOUT)) db(v(VOUT_CM)) db(v(VOUT_A-)) db(v(VOUT_A+))
.endc


.subckt A001 VDD VSS Vin+ Vin- VOUT
X0 bias_res_0/li_3970_7618# bias_res_0/li_2816_7756# VSS sky130_fd_pr__res_high_po_0p69 l=1.57
X1 VSS VSS VSS sky130_fd_pr__res_high_po_0p69 l=1.57
X2 bias_res_0/li_3970_7364# Lower_Nmos_0/IC VSS sky130_fd_pr__res_high_po_0p69 l=1.57
X3 bias_res_0/li_3970_7872# bias_res_0/li_2816_7756# VSS sky130_fd_pr__res_high_po_0p69 l=1.57
X4 VSS VSS VSS sky130_fd_pr__res_high_po_0p69 l=1.57
X5 bias_res_0/li_3970_8126# bias_res_0/li_2816_8248# VSS sky130_fd_pr__res_high_po_0p69 l=1.57
X6 bias_res_0/li_3969_8380# bias_res_0/li_2816_8248# VSS sky130_fd_pr__res_high_po_0p69 l=1.57
X7 VSS VSS VSS sky130_fd_pr__res_high_po_0p69 l=2.72
X8 VSS VSS VSS sky130_fd_pr__res_high_po_0p69 l=2.72
X9 bias_res_0/li_5323_7502# bias_res_0/li_3970_7364# VSS sky130_fd_pr__res_high_po_0p69 l=2.72
X10 bias_res_0/li_5323_7502# bias_res_0/li_3970_7618# VSS sky130_fd_pr__res_high_po_0p69 l=2.72
X11 bias_res_0/li_5321_8010# bias_res_0/li_3970_7872# VSS sky130_fd_pr__res_high_po_0p69 l=2.72
X12 bias_res_0/li_5321_8010# bias_res_0/li_3970_8126# VSS sky130_fd_pr__res_high_po_0p69 l=2.72
X13 VSS bias_res_0/li_3969_8380# VSS sky130_fd_pr__res_high_po_0p69 l=2.72
X14 VOUT VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=1 pd=4.5 as=1.2 ps=8.6 w=4 l=1
X15 VSS active_load_0/IA VOUT VSS sky130_fd_pr__nfet_g5v0d10v5 ad=1 pd=4.5 as=1 ps=4.5 w=4 l=1
X16 VSS VSS VOUT VSS sky130_fd_pr__nfet_g5v0d10v5 ad=1.2 pd=8.6 as=1 ps=4.5 w=4 l=1
X17 VOUT active_load_0/IA VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=1 pd=4.5 as=1 ps=4.5 w=4 l=1
X18 VOUT VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=8 pd=36 as=20 ps=127.6 w=4 l=1
X19 VSS active_load_0/IA VOUT VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4 l=1
X20 VSS VSS VOUT VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4 l=1
X21 VOUT active_load_0/IA VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4 l=1
X22 VSS active_load_0/IB active_load_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.375 pd=2 as=0.375 ps=2 w=1.5 l=2
X23 active_load_0/IB VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.375 pd=2 as=0.45 ps=3.6 w=1.5 l=2
X24 active_load_0/IA active_load_0/IB VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.375 pd=2 as=0.375 ps=2 w=1.5 l=2
X25 VSS active_load_0/IB active_load_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.375 pd=2 as=0.375 ps=2 w=1.5 l=2
X26 VSS VSS active_load_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.45 pd=3.6 as=0.375 ps=2 w=1.5 l=2
X27 active_load_0/IB active_load_0/IB VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.375 pd=2 as=0.375 ps=2 w=1.5 l=2
X28 VSS active_load_0/IB active_load_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=2.34 ps=14.8 w=1.5 l=2
X29 active_load_0/IB VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=3 pd=16 as=0 ps=0 w=1.5 l=2
X30 active_load_0/IA active_load_0/IB VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1.5 l=2
X31 VSS active_load_0/IB active_load_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1.5 l=2
X32 VSS VSS active_load_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1.5 l=2
X33 active_load_0/IB active_load_0/IB VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1.5 l=2
X34 active_load_0/IA Vin+ Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.125 pd=5 as=1.125 ps=5 w=4.5 l=1
X35 active_load_0/IB Vin- Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.125 pd=5 as=1.125 ps=5 w=4.5 l=1
X36 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.125 pd=5 as=1.35 ps=9.6 w=4.5 l=1
X37 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.35 pd=9.6 as=1.125 ps=5 w=4.5 l=1
X38 active_load_0/IB Vin- Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.125 pd=5 as=1.125 ps=5 w=4.5 l=1
X39 active_load_0/IA Vin+ Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.125 pd=5 as=1.125 ps=5 w=4.5 l=1
X40 Pmos_current_mirror_0/IC Vin+ active_load_0/IA Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.125 pd=5 as=1.125 ps=5 w=4.5 l=1
X41 Pmos_current_mirror_0/IC Vin+ active_load_0/IA Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.125 pd=5 as=1.125 ps=5 w=4.5 l=1
X42 Pmos_current_mirror_0/IC Vin- active_load_0/IB Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.125 pd=5 as=1.125 ps=5 w=4.5 l=1
X43 Pmos_current_mirror_0/IC Vin- active_load_0/IB Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=1.125 pd=5 as=1.125 ps=5 w=4.5 l=1
X44 active_load_0/IB Vin- Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=9 pd=40 as=31.9 ps=162.39999 w=4.5 l=1
X45 active_load_0/IA Vin+ Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=9 pd=40 as=0 ps=0 w=4.5 l=1
X46 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4.5 l=1
X47 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4.5 l=1
X48 active_load_0/IA Vin+ Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4.5 l=1
X49 active_load_0/IB Vin- Pmos_current_mirror_0/IC Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4.5 l=1
X50 Pmos_current_mirror_0/IC Vin- active_load_0/IB Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4.5 l=1
X51 Pmos_current_mirror_0/IC Vin- active_load_0/IB Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4.5 l=1
X52 Pmos_current_mirror_0/IC Vin+ active_load_0/IA Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4.5 l=1
X53 Pmos_current_mirror_0/IC Vin+ active_load_0/IA Pmos_current_mirror_0/IC sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=4.5 l=1
X54 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IA VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X55 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X56 Pmos_current_mirror_0/IA VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.3 ps=2.6 w=1 l=2.2
X57 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X58 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X59 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IB VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X60 VDD VDD Pmos_current_mirror_0/IA VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X61 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X62 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X63 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X64 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X65 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X66 Pmos_current_mirror_0/IB Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X67 Pmos_current_mirror_0/IA Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X68 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X69 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X70 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X71 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X72 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X73 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X74 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X75 VDD VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.3 pd=2.6 as=0.25 ps=1.5 w=1 l=2.2
X76 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X77 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X78 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X79 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X80 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X81 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X82 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X83 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X84 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2.2
X85 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IA VDD sky130_fd_pr__pfet_g5v0d10v5 ad=16.2 pd=100.4 as=2 ps=12 w=1 l=2.2
X86 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=8 ps=48 w=1 l=2.2
X87 Pmos_current_mirror_0/IA VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X88 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X89 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X90 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IB VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=1 ps=6 w=1 l=2.2
X91 VDD VDD Pmos_current_mirror_0/IA VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X92 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X93 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X94 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X95 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X96 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X97 Pmos_current_mirror_0/IB Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X98 Pmos_current_mirror_0/IA Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X99 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X100 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X101 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X102 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X103 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X104 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X105 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X106 VDD VDD VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X107 Pmos_current_mirror_0/IC Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X108 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X109 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X110 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X111 VOUT Pmos_current_mirror_0/IA VDD VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X112 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X113 VDD Pmos_current_mirror_0/IA VOUT VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X114 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X115 VDD Pmos_current_mirror_0/IA Pmos_current_mirror_0/IC VDD sky130_fd_pr__pfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2.2
X116 m1_17410_n5244# Pmos_current_mirror_0/IB active_load_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.35 pd=1.9 as=0.42 ps=3.4 w=1.4 l=2.6
X117 active_load_0/IA Pmos_current_mirror_0/IB m1_17410_n5244# VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.42 pd=3.4 as=0.35 ps=1.9 w=1.4 l=2.6
X118 Pmos_current_mirror_0/IA VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X119 Pmos_current_mirror_0/IB VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.3 ps=2.6 w=1 l=2
X120 VSS VSS Lower_Nmos_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X121 VSS VSS Pmos_current_mirror_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.3 pd=2.6 as=0.25 ps=1.5 w=1 l=2
X122 Pmos_current_mirror_0/IB Pmos_current_mirror_0/IB Lower_Nmos_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X123 Lower_Nmos_0/IA VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X124 Lower_Nmos_0/IA Pmos_current_mirror_0/IB Pmos_current_mirror_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X125 VSS VSS Pmos_current_mirror_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X126 Pmos_current_mirror_0/IA Pmos_current_mirror_0/IB Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X127 Lower_Nmos_0/IB Pmos_current_mirror_0/IB Pmos_current_mirror_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=2
X128 Pmos_current_mirror_0/IA VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=2 pd=12 as=0 ps=0 w=1 l=2
X129 Pmos_current_mirror_0/IB VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=2 pd=12 as=0 ps=0 w=1 l=2
X130 VSS VSS Lower_Nmos_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=4 ps=24 w=1 l=2
X131 VSS VSS Pmos_current_mirror_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X132 Pmos_current_mirror_0/IB Pmos_current_mirror_0/IB Lower_Nmos_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X133 Lower_Nmos_0/IA VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X134 Lower_Nmos_0/IA Pmos_current_mirror_0/IB Pmos_current_mirror_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X135 VSS VSS Pmos_current_mirror_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X136 Pmos_current_mirror_0/IA Pmos_current_mirror_0/IB Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=6 ps=36 w=1 l=2
X137 Lower_Nmos_0/IB Pmos_current_mirror_0/IB Pmos_current_mirror_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0 pd=0 as=0 ps=0 w=1 l=2
X138 Lower_Nmos_0/IA Lower_Nmos_0/IA VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X139 Lower_Nmos_0/IA VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.3 ps=2.6 w=1 l=3.2
X140 Lower_Nmos_0/IB VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X141 VSS VSS Lower_Nmos_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.3 pd=2.6 as=0.25 ps=1.5 w=1 l=3.2
X142 Lower_Nmos_0/IC Lower_Nmos_0/IA Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X143 Lower_Nmos_0/IC Lower_Nmos_0/IA Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X144 VSS Lower_Nmos_0/IA Lower_Nmos_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X145 Lower_Nmos_0/IB Lower_Nmos_0/IA Lower_Nmos_0/IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X146 Lower_Nmos_0/IB Lower_Nmos_0/IA Lower_Nmos_0/IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X147 Lower_Nmos_0/IC Lower_Nmos_0/IA Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X148 Lower_Nmos_0/IB Lower_Nmos_0/IA Lower_Nmos_0/IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X149 Lower_Nmos_0/IB Lower_Nmos_0/IA Lower_Nmos_0/IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X150 Lower_Nmos_0/IC Lower_Nmos_0/IA Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X151 VSS VSS Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X152 Lower_Nmos_0/IA Lower_Nmos_0/IA VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X153 Lower_Nmos_0/IA VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.3 ps=2.6 w=1 l=3.2
X154 Lower_Nmos_0/IB VSS VSS VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X155 VSS VSS Lower_Nmos_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.3 pd=2.6 as=0.25 ps=1.5 w=1 l=3.2
X156 Lower_Nmos_0/IC Lower_Nmos_0/IA Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X157 Lower_Nmos_0/IC Lower_Nmos_0/IA Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X158 VSS Lower_Nmos_0/IA Lower_Nmos_0/IA VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X159 Lower_Nmos_0/IB Lower_Nmos_0/IA Lower_Nmos_0/IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X160 Lower_Nmos_0/IB Lower_Nmos_0/IA Lower_Nmos_0/IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X161 Lower_Nmos_0/IC Lower_Nmos_0/IA Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X162 Lower_Nmos_0/IB Lower_Nmos_0/IA Lower_Nmos_0/IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X163 Lower_Nmos_0/IB Lower_Nmos_0/IA Lower_Nmos_0/IC VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X164 Lower_Nmos_0/IC Lower_Nmos_0/IA Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X165 VSS VSS Lower_Nmos_0/IB VSS sky130_fd_pr__nfet_g5v0d10v5 ad=0.25 pd=1.5 as=0.25 ps=1.5 w=1 l=3.2
X166 m1_17410_n5244# VOUT sky130_fd_pr__cap_mim_m3_1 l=8 w=8
X167 m1_17410_n5244# VOUT sky130_fd_pr__cap_mim_m3_1 l=8 w=8
X168 m1_17410_n5244# VOUT sky130_fd_pr__cap_mim_m3_1 l=8 w=8
X169 m1_17410_n5244# VOUT sky130_fd_pr__cap_mim_m3_1 l=8 w=8
C0 m1_17410_n5244# VOUT 29.48602f
C1 Lower_Nmos_0/IC Lower_Nmos_0/IA 4.67946f
C2 VSS Pmos_current_mirror_0/IB 5.40428f
C3 VSS VOUT 5.17316f
C4 VOUT active_load_0/IA 2.72808f
C5 Lower_Nmos_0/IB Lower_Nmos_0/IA 6.14554f
C6 VDD Pmos_current_mirror_0/IC 2.33191f
C7 VSS Lower_Nmos_0/IA 8.39534f
C8 VSS active_load_0/IA 2.70333f
C9 VOUT Pmos_current_mirror_0/IC 5.16991f
C10 Vin+ Vin- 7.8812f
C11 Pmos_current_mirror_0/IA Pmos_current_mirror_0/IC 3.2178f
C12 VSS active_load_0/IB 3.18341f
C13 active_load_0/IB active_load_0/IA 3.94623f
C14 Vin+ Pmos_current_mirror_0/IC 4.40894f
C15 active_load_0/IA Pmos_current_mirror_0/IC 3.7446f
C16 Pmos_current_mirror_0/IB VDD 2.21479f
C17 VOUT VDD 2.66933f
C18 active_load_0/IB Pmos_current_mirror_0/IC 3.62092f
C19 Pmos_current_mirror_0/IB Pmos_current_mirror_0/IA 2.46011f
C20 VDD Pmos_current_mirror_0/IA 42.3693f
C21 Vin- Pmos_current_mirror_0/IC 4.1741f
C22 VOUT Pmos_current_mirror_0/IA 3.75574f
C23 m1_17410_n5244# 0 3.66429f $ **FLOATING
C24 Lower_Nmos_0/IA 0 24.44891f
C25 Lower_Nmos_0/IC 0 2.12289f
C26 VSS 0 27.03676f
C27 Pmos_current_mirror_0/IB 0 11.50098f
C28 VOUT 0 15.46451f
C29 Pmos_current_mirror_0/IA 0 18.95395f
C30 VDD 0 82.29778f
C31 Vin- 0 2.25373f
C32 active_load_0/IA 0 5.84906f
C33 Pmos_current_mirror_0/IC 0 32.86668f
C34 active_load_0/IB 0 8.75947f
.ends


"}
