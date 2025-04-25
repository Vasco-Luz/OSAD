v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 40 -130 60 {
lab=#net1}
N -130 120 -130 140 {lab=GND}
N -130 -280 -130 -50 {lab=VIN+}
N -130 -280 70 -280 {lab=VIN+}
N -130 40 -20 40 {lab=#net1}
N -20 -220 -20 -20 {lab=#net2}
N -20 -220 70 -220 {lab=#net2}
N 370 -160 370 -120 {
lab=VSS}
N 370 -250 370 -220 {lab=VOUT_noise}
N 220 -250 370 -250 {lab=VOUT_noise}
N 180 -260 220 -250 {lab=VOUT_noise}
N 70 -240 70 -220 {lab=#net2}
N -130 10 -130 40 {
lab=#net1}
N 110 -360 110 -310 {lab=VDD}
N 110 -210 110 -150 {lab=VSS}
N -890 -130 -890 -110 {
lab=GND}
N -890 -230 -890 -190 {
lab=VDD}
N -760 -130 -760 -110 {
lab=GND}
N -760 -230 -760 -190 {
lab=VSS}
C {devices/lab_pin.sym} -130 -210 0 0 {name=p27 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -130 90 0 0 {name=V5 value= "VCM"}
C {devices/gnd.sym} -130 140 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -130 -20 0 0 {name=V7 value= "ac 0.5"}
C {devices/vsource.sym} -20 10 0 0 {name=V8 value= "V_OFF"}
C {devices/lab_pin.sym} 110 -150 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 110 -360 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {capa.sym} 370 -190 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 370 -120 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 330 -250 1 0 {name=p9 sig_type=std_logic lab=VOUT_noise

}
C {devices/lab_pin.sym} -890 -230 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -890 -160 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -890 -110 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -760 -160 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -760 -110 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -760 -230 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/code_shown.sym} -1440 -560 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/code_shown.sym} -1440 -470 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -1430 -380 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/code_shown.sym} -1400 -230 0 0 {name=NGSPICE only_toplevel=true 
name=COMMANDS
simulator=ngspice
place=end
value="
.param VDD = 3.3
.param VSS = 0
.param VCM = 1.65
.param V_OFF =-400u

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
C {ihp-sg13g2/Amplifiers/Va001_ihp-sg13g2_1_2.sym} 110 -260 0 0 {name=x1}
