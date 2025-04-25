v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 390 760 390 780 {
lab=#net1}
N 390 840 390 860 {lab=GND}
N 390 440 390 670 {lab=VIN+}
N 390 440 590 440 {lab=VIN+}
N 390 760 500 760 {lab=#net1}
N 500 500 500 700 {lab=#net2}
N 500 500 590 500 {lab=#net2}
N 890 560 890 600 {
lab=VSS}
N 890 470 890 500 {lab=VOUT_noise}
N 740 470 890 470 {lab=VOUT_noise}
N 700 460 740 470 {lab=VOUT_noise}
N 590 480 590 500 {lab=#net2}
N 390 730 390 760 {
lab=#net1}
N 630 360 630 410 {lab=VDD}
N 630 510 630 570 {lab=VSS}
N -370 590 -370 610 {
lab=GND}
N -370 490 -370 530 {
lab=VDD}
N -240 590 -240 610 {
lab=GND}
N -240 490 -240 530 {
lab=VSS}
C {devices/code_shown.sym} -900 230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice moscap_typical
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical
"}
C {devices/lab_pin.sym} 390 510 0 0 {name=p27 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} 390 810 0 0 {name=V5 value= "VCM"}
C {devices/gnd.sym} 390 860 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 390 700 0 0 {name=V7 value= "ac 0.5"}
C {devices/vsource.sym} 500 730 0 0 {name=V8 value= "V_OFF"}
C {devices/lab_pin.sym} 630 570 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 630 360 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 890 600 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 850 470 1 0 {name=p9 sig_type=std_logic lab=VOUT_noise

}
C {devices/lab_pin.sym} -370 490 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -370 560 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -370 610 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -240 560 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -240 610 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -240 490 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/code_shown.sym} -880 490 0 0 {name=NGSPICE only_toplevel=true 
name=COMMANDS
simulator=ngspice
place=end
value="
.param VDD = 6
.param VSS = 0
.param VCM = 3
.param V_OFF =-400u
.param CL =3p

.param mm_ok=0
.param mc_ok=0

.param temp=27
.control
save all 

noise v(VOUT_noise,VSS) V7 dec 10 1 40000k
print inoise_total 
print onoise_total
setplot noise1
plot onoise_spectrum
plot inoise_spectrum


.endc
"}
C {devices/capa.sym} 890 530 0 0 {name=C7
m=1
value="CL"
footprint=1206
device="ceramic capacitor"}
C {Gf180mcuD/single_ended_amplifiers/Va001_gf180mcuD_6.sym} 630 460 0 0 {name=x4}
