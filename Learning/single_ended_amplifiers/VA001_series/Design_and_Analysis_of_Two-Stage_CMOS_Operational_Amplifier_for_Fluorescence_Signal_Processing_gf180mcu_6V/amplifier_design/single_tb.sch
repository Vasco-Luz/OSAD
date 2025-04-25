v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 650 150 650 170 {
lab=GND}
N 650 50 650 90 {
lab=VDD}
N 780 150 780 170 {
lab=GND}
N 780 50 780 90 {
lab=VSS}
N 1270 60 1270 100 {
lab=VSS}
N 1010 270 1010 320 {
lab=#net1}
N 1010 -10 1230 -10 {lab=VIN}
N 1010 380 1010 400 {lab=GND}
N 1010 -10 1010 210 {lab=VIN}
N 1120 30 1120 140 {lab=#net2}
N 1120 370 1120 410 {
lab=VSS}
N 1120 200 1120 310 {lab=#net3}
N 1120 30 1230 30 {lab=#net2}
N 1670 100 1670 140 {
lab=VSS}
N 1520 10 1670 10 {lab=VOUT}
N 1670 10 1670 40 {lab=VOUT}
N 1520 10 1520 150 {lab=VOUT}
N 1200 190 1200 230 {
lab=VSS}
N 1510 150 1520 150 {lab=VOUT}
N 1340 10 1520 10 {lab=VOUT}
N 1310 150 1450 150 {lab=#net4}
N 1160 190 1200 190 {lab=VSS}
N 1310 240 1310 280 {
lab=VSS}
N 1310 150 1310 180 {lab=#net4}
N 1160 150 1310 150 {lab=#net4}
N 1270 -80 1270 -40 {
lab=VDD}
C {devices/code_shown.sym} 130 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
"}
C {devices/lab_pin.sym} 650 50 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 650 120 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} 650 170 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 780 120 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} 780 170 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 780 50 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/code_shown.sym} 140 50 0 0 {name=NGSPICE only_toplevel=true 
name=COMMANDS
simulator=ngspice
place=end
value="
.param VDD = 6
.param VSS = 0
.param VCM = 3
.param CL  = 3p
 
.param mm_ok=0
.param mc_ok=0

.param temp=27
.control
save all 
ac dec 1000 1 10G
plot db(v(VOUT)) (180+(180*ph(v(VOUT))/pi))

op
print (-6*i(V1))
print (3-v(VOUT))
pz VIN 0 0 VOUT vol pz
print all

.endc
"}
C {devices/lab_pin.sym} 1270 100 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 1010 350 0 0 {name=V3 value= "VCM"}
C {devices/gnd.sym} 1010 400 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1010 240 0 0 {name=V4 value= "ac 0.5"}
C {devices/lab_pin.sym} 1120 410 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 1120 340 0 0 {name=V6 value= "ac -0.5"}
C {devices/lab_pin.sym} 1520 10 2 0 {name=p10 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} 1670 140 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1200 230 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1310 280 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1010 40 2 0 {name=p14 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 1270 -80 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {Gf180mcuD/single_ended_amplifiers/Va001_gf180mcuD_6.sym} 1270 10 0 0 {name=x1}
C {devices/capa.sym} 1670 70 0 0 {name=C1
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {devices/res_ac.sym} 1480 150 1 0 {name=R1
value=1k
ac=10000000000000000000G
m=1}
C {devices/capa.sym} 1310 210 0 0 {name=C2
m=1
value=2
footprint=1206
device="ceramic capacitor"}
C {devices/vcvs.sym} 1120 170 0 1 {name=E1 value=1}
