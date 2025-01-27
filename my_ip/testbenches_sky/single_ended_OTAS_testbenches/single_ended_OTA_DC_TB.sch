v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -280 -290 -280 -130 {}
L 4 -280 -130 40 -130 {}
L 4 40 -310 40 -130 {}
L 4 -280 -310 40 -310 {}
L 4 -280 -310 -280 -290 {}
T {simulation scripts} -370 -390 0 0 1 1 {}
N -40 60 -40 80 {
lab=GND}
N -40 -40 -40 0 {
lab=VDD}
N -110 60 -110 80 {
lab=GND}
N 460 -130 460 -90 {
lab=VSS}
N 170 410 170 450 {
lab=VSS}
N 80 350 270 350 {
lab=#net1}
N 80 110 80 140 {
lab=VIN-}
N 360 -190 410 -190 {
lab=VIN+}
N 360 -150 410 -150 {
lab=VIN-}
N 270 90 270 140 {
lab=VIN+}
N 460 -250 460 -210 {
lab=VDD}
N 530 -170 580 -170 {
lab=VOUT}
N 270 330 270 350 {
lab=#net1}
N 270 200 270 270 {
lab=#net2}
N 80 200 80 350 {
lab=#net1}
N -110 -40 -110 0 {
lab=VSS}
C {/home/vasco/Desktop/OSAD/my_ip/testbenches_sky/single_ended_OTAS_testbenches/UUT.sym} 460 -180 0 0 {name=x1}
C {devices/lab_pin.sym} -40 -40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -40 30 0 0 {name=V1 value="VDD"

}
C {devices/gnd.sym} -40 80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 460 -90 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -110 30 0 0 {name=V2 value="VSS"


}
C {devices/gnd.sym} -110 80 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} -250 -260 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -110 -260 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	

.Temp 27
.param VDD = 1.8
.param VSS = 0
.param VCM=\{(VDD-VSS)/2\}
.param VCM_NEG=\{-VCM\}
.param V_OFF = 0.001

.control
save all

dc V4 -0.01 0.01 0.0000001 
wrdata VIN_sweep_DC.csv v(VOUT) 
plot v(VOUT)

.endc
"}
C {devices/vsource.sym} 170 380 0 0 {name=V3 value="VCM"}
C {devices/lab_pin.sym} 170 450 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -190 0 0 {name=p12 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} 270 170 0 0 {name=V4 value= "ac 0.5"}
C {devices/vsource.sym} 80 170 0 0 {name=V5 value="ac -0.5"}
C {devices/lab_pin.sym} 80 110 0 0 {name=p13 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} 360 -150 0 0 {name=p2 sig_type=std_logic lab=VIN-
}
C {devices/lab_pin.sym} 270 90 0 0 {name=p3 sig_type=std_logic lab=VIN+
}
C {devices/lab_pin.sym} 460 -250 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 580 -170 2 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {devices/vsource.sym} 270 300 0 0 {name=V6 value= "V_OFF"}
C {devices/lab_pin.sym} -110 -40 0 0 {name=p8 sig_type=std_logic lab=VSS
}
