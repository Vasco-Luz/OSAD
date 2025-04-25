v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -660 250 -660 270 {
lab=GND}
N -660 150 -660 190 {
lab=VDD}
N -530 250 -530 270 {
lab=GND}
N -530 150 -530 190 {
lab=VSS}
N 250 270 250 310 {
lab=VSS}
N -10 480 -10 530 {
lab=#net1}
N -10 200 210 200 {lab=VIN}
N -10 590 -10 610 {lab=GND}
N -10 200 -10 420 {lab=VIN}
N 100 240 100 350 {lab=#net2}
N 100 580 100 620 {
lab=VSS}
N 100 410 100 520 {lab=#net3}
N 100 240 210 240 {lab=#net2}
N 650 310 650 350 {
lab=VSS}
N 500 220 650 220 {lab=VOUT}
N 650 220 650 250 {lab=VOUT}
N 500 220 500 360 {lab=VOUT}
N 180 400 180 440 {
lab=VSS}
N 490 360 500 360 {lab=VOUT}
N 320 220 500 220 {lab=VOUT}
N 290 360 430 360 {lab=#net4}
N 140 400 180 400 {lab=VSS}
N 290 450 290 490 {
lab=VSS}
N 290 360 290 390 {lab=#net4}
N 140 360 290 360 {lab=#net4}
N 250 130 250 170 {
lab=VDD}
C {devices/lab_pin.sym} -660 150 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -660 220 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -660 270 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -530 220 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -530 270 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -530 150 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/code_shown.sym} -1210 -180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/code_shown.sym} -1210 -90 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -1200 0 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/code_shown.sym} -1170 150 0 0 {name=NGSPICE only_toplevel=true 
name=COMMANDS
simulator=ngspice
place=end
value="
.param VDD = 1.2
.param VSS = 0
.param VCM = 0.6
.param CL =3p


.param mm_ok=0
.param mc_ok=0

.param temp=27
.control
save all 
ac dec 1000 1 10G
plot db(v(VOUT)) (180+(180*ph(v(VOUT))/pi))

op
print (-1.2*i(V1))
print (0.6-v(VOUT))

.endc
"}
C {devices/lab_pin.sym} 250 310 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -10 560 0 0 {name=V3 value= "VCM"}
C {devices/gnd.sym} -10 610 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -10 450 0 0 {name=V4 value= "ac 0.5"}
C {devices/lab_pin.sym} 100 620 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 100 550 0 0 {name=V6 value= "ac -0.5"}
C {vcvs.sym} 100 380 0 1 {name=E1 value=1}
C {devices/lab_pin.sym} 500 220 2 0 {name=p10 sig_type=std_logic lab=VOUT
}
C {capa.sym} 650 280 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 650 350 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 180 440 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {res_ac.sym} 460 360 1 0 {name=R1
value=1k
ac=1000000000000G
m=1}
C {capa.sym} 290 420 0 0 {name=C3
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 290 490 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -10 250 2 0 {name=p14 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 250 130 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {ihp-sg13g2/Amplifiers/Va001_ihp-sg13g2_1_2.sym} 250 220 0 0 {name=x1}
