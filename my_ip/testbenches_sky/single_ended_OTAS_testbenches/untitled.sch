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
N 180 -390 180 -350 {
lab=VDD}
N 250 -190 300 -190 {
lab=VOUT}
N -10 180 -10 250 {
lab=#net2}
N -390 -60 -390 -20 {
lab=VSS}
N 180 -290 180 -230 {
lab=#net3}
N -10 350 -10 420 {
lab=#net1}
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
.param V_OFF = 0

.control
save all

dc V4 0 1.8 0.001
wrdata VIN_sweep_DC.csv v(VOUT) i(Vmeas)
plot v(VOUT) v(VIN+)
plot i(Vmeas)

.endc
"}
C {devices/lab_pin.sym} 80 -210 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -10 150 0 0 {name=V4 value= "ac 0.5"}
C {devices/lab_pin.sym} -10 70 0 0 {name=p3 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 180 -390 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 300 -190 1 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {devices/vsource.sym} -10 280 0 0 {name=V6 value= "V_OFF"}
C {devices/lab_pin.sym} -390 -60 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {ammeter.sym} 180 -320 0 0 {name=Vmeas savecurrent=true}
C {devices/vsource.sym} -10 450 0 0 {name=V3 value= "VCM"}
