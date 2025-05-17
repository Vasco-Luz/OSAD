v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -420 -60 -0 -60 {lab=#net1}
N -760 -60 -580 -60 {lab=VIN+}
N -760 150 -580 150 {lab=VIN+}
N -760 -60 -760 150 {lab=VIN+}
N -900 50 -760 50 {lab=VIN+}
N -420 370 -340 370 {lab=#net1}
N -340 -60 -340 370 {lab=#net1}
N -420 150 -100 150 {lab=#net2}
N -100 -30 -100 150 {lab=#net2}
N -100 -30 -0 -30 {lab=#net2}
N -100 150 -100 580 {lab=#net2}
N -420 580 -100 580 {lab=#net2}
N -760 370 -580 370 {lab=VIN-}
N -760 580 -580 580 {lab=VIN-}
N -760 370 -760 580 {lab=VIN-}
N -900 480 -760 480 {lab=VIN-}
N 200 -30 320 -30 {lab=#net3}
N 320 -30 320 150 {lab=#net3}
N -60 150 320 150 {lab=#net3}
N -60 30 -60 150 {lab=#net3}
N -60 30 -0 30 {lab=#net3}
N 200 30 260 30 {lab=#net4}
N 260 30 260 130 {lab=#net4}
N -10 130 260 130 {lab=#net4}
N -10 60 -10 130 {lab=#net4}
N -10 60 -0 60 {lab=#net4}
N 80 -160 80 -100 {lab=VDD}
N -580 -160 -580 -100 {lab=VDD}
N -580 50 -580 110 {lab=VDD}
N -580 270 -580 330 {lab=VDD}
N -580 480 -580 540 {lab=VDD}
N -420 -160 -420 -100 {lab=VSS}
N -420 50 -420 110 {lab=VSS}
N -420 270 -420 330 {lab=VSS}
N -420 480 -420 540 {lab=VSS}
N 320 -30 450 -30 {lab=#net3}
N 260 30 370 30 {lab=#net4}
N 430 30 580 30 {lab=VON}
N 510 -30 580 -30 {lab=VOP}
N 80 100 80 120 {lab=VSS}
N -500 -160 -500 -130 {lab=CLKP}
N -500 -10 -500 80 {lab=CLKN}
N -500 200 -500 300 {lab=CLKP}
N -500 420 -500 510 {lab=CLKN}
N -500 630 -500 660 {lab=CLKP}
N -1250 230 -1230 230 {lab=VDD}
N -1250 260 -1230 260 {lab=VSS}
N -1250 290 -1230 290 {lab=VREF}
N -1250 320 -1230 320 {lab=VIN+}
N -1250 350 -1230 350 {lab=VIN-}
N -1250 380 -1230 380 {lab=VCM}
N -1250 410 -1230 410 {lab=VOP}
N -1250 440 -1230 440 {lab=VON}
N -1250 470 -1230 470 {lab=CLKP}
N -1250 500 -1230 500 {lab=CLKN}
N -30 -0 -0 0 {lab=VCM}
N 120 70 120 100 {lab=VREF}
C {Sky130A/DDA/DDA002_NMOS_sky130_5V.sym} 80 0 0 0 {name=x2}
C {Sky130A/switches/passgate.sym} -500 -60 0 0 {name=x1}
C {Sky130A/switches/passgate.sym} -500 150 0 0 {name=x3}
C {Sky130A/switches/passgate.sym} -500 370 0 0 {name=x4}
C {Sky130A/switches/passgate.sym} -500 580 0 0 {name=x5}
C {devices/lab_pin.sym} 80 -160 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -580 -160 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -580 50 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -580 270 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -580 480 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -420 -160 1 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -420 50 1 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -420 270 1 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -420 480 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -900 50 0 0 {name=p10 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} -900 480 0 0 {name=p11 sig_type=std_logic lab=VIN-}
C {sky130_fd_pr/cap_mim_m3_2.sym} 400 30 1 0 {name=C2 model=cap_mim_m3_2 W=11 L=11 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 480 -30 1 0 {name=C1 model=cap_mim_m3_2 W=11 L=11 MF=4 spiceprefix=X}
C {devices/lab_pin.sym} 580 -30 2 0 {name=p12 sig_type=std_logic lab=VOP}
C {devices/lab_pin.sym} 580 30 2 0 {name=p13 sig_type=std_logic lab=VON}
C {devices/lab_pin.sym} 80 120 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -30 0 0 0 {name=p15 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} -500 -160 1 0 {name=p16 sig_type=std_logic lab=CLKP}
C {devices/lab_pin.sym} -500 40 2 0 {name=p17 sig_type=std_logic lab=CLKN}
C {devices/lab_pin.sym} -500 250 2 0 {name=p18 sig_type=std_logic lab=CLKP}
C {devices/lab_pin.sym} -500 470 2 0 {name=p19 sig_type=std_logic lab=CLKN}
C {devices/lab_pin.sym} -500 660 2 0 {name=p20 sig_type=std_logic lab=CLKP}
C {iopin.sym} -1250 230 0 1 {name=p23 lab=VDD}
C {devices/lab_pin.sym} -1230 230 2 0 {name=p24 sig_type=std_logic lab=VDD}
C {iopin.sym} -1250 260 0 1 {name=p25 lab=VSS}
C {devices/lab_pin.sym} -1230 260 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {iopin.sym} -1250 290 0 1 {name=p27 lab=VREF}
C {devices/lab_pin.sym} -1230 290 2 0 {name=p28 sig_type=std_logic lab=VREF}
C {iopin.sym} -1250 320 0 1 {name=p29 lab=VIN+}
C {devices/lab_pin.sym} -1230 320 2 0 {name=p30 sig_type=std_logic lab=VIN+}
C {iopin.sym} -1250 350 0 1 {name=p31 lab=VIN-}
C {devices/lab_pin.sym} -1230 350 2 0 {name=p32 sig_type=std_logic lab=VIN-}
C {iopin.sym} -1250 380 0 1 {name=p37 lab=VCM}
C {devices/lab_pin.sym} -1230 380 2 0 {name=p38 sig_type=std_logic lab=VCM}
C {iopin.sym} -1250 410 0 1 {name=p39 lab=VOP}
C {devices/lab_pin.sym} -1230 410 2 0 {name=p40 sig_type=std_logic lab=VOP}
C {iopin.sym} -1250 440 0 1 {name=p41 lab=VON}
C {devices/lab_pin.sym} -1230 440 2 0 {name=p42 sig_type=std_logic lab=VON}
C {iopin.sym} -1250 470 0 1 {name=p21 lab=CLKP}
C {devices/lab_pin.sym} -1230 470 2 0 {name=p22 sig_type=std_logic lab=CLKP}
C {iopin.sym} -1250 500 0 1 {name=p33 lab=CLKN}
C {devices/lab_pin.sym} -1230 500 2 0 {name=p34 sig_type=std_logic lab=CLKN}
C {devices/lab_pin.sym} 120 100 2 0 {name=p35 sig_type=std_logic lab=VREF}
