EESchema Schematic File Version 2
LIBS:Mega_2560 core mini_full_2.0-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:OPEN_EVO
LIBS:Mega_2560 core mini_full_2.0-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title "Shield Mega2560 core Full"
Date "2017-11-05"
Rev "2.00"
Comp ""
Comment1 "Reproduction et commercialisation interdite"
Comment2 "By Antho.breizh / pierrotm777"
Comment3 ""
Comment4 "Shield pour RC OpenAVRc"
$EndDescr
$Comp
L C-RESCUE-Mega_2560_core_mini_full_2.0 C31
U 1 1 59C53131
P 7100 3200
F 0 "C31" H 7125 3300 50  0000 L CNN
F 1 "100nF" V 7200 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7138 3050 50  0001 C CNN
F 3 "" H 7100 3200 50  0000 C CNN
	1    7100 3200
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-Mega_2560_core_mini_full_2.0 R16
U 1 1 59C53138
P 4750 4150
F 0 "R16" V 4830 4150 50  0000 C CNN
F 1 "2.7K" V 4750 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4680 4150 50  0001 C CNN
F 3 "" H 4750 4150 50  0000 C CNN
	1    4750 4150
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0113
U 1 1 59C5313F
P 8200 4550
F 0 "#PWR0113" H 8200 4300 50  0001 C CNN
F 1 "GND" H 8200 4350 50  0000 C CNN
F 2 "" H 8200 4550 50  0000 C CNN
F 3 "" H 8200 4550 50  0000 C CNN
	1    8200 4550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P26
U 1 1 59C53145
P 7900 3350
F 0 "P26" H 7900 3550 50  0000 C CNN
F 1 "LCD_Alim" H 7900 3150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7900 3350 50  0001 C CNN
F 3 "" H 7900 3350 50  0000 C CNN
	1    7900 3350
	-1   0    0    -1  
$EndComp
Text Notes 8750 3800 0    60   ~ 0
+3.3V\n
Text Notes 8100 2900 0    60   ~ 0
+5V
$Comp
L VCC #PWR0114
U 1 1 59C5314F
P 8450 3000
F 0 "#PWR0114" H 8450 2850 50  0001 C CNN
F 1 "VCC" V 8450 3200 50  0000 C CNN
F 2 "" H 8450 3000 50  0000 C CNN
F 3 "" H 8450 3000 50  0000 C CNN
	1    8450 3000
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-Mega_2560_core_mini_full_2.0 C38
U 1 1 59C53155
P 8700 4300
F 0 "C38" H 8550 4400 50  0000 L CNN
F 1 "100nF" H 8450 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8738 4150 50  0001 C CNN
F 3 "" H 8700 4300 50  0000 C CNN
	1    8700 4300
	1    0    0    -1  
$EndComp
Text Notes 3150 2350 0    60   ~ 0
Power Management
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0115
U 1 1 59C5315D
P 6300 3850
F 0 "#PWR0115" H 6300 3600 50  0001 C CNN
F 1 "GND" H 6300 3700 50  0000 C CNN
F 2 "" H 6300 3850 50  0000 C CNN
F 3 "" H 6300 3850 50  0000 C CNN
	1    6300 3850
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0116
U 1 1 59C53163
P 4750 4350
F 0 "#PWR0116" H 4750 4100 50  0001 C CNN
F 1 "GND" H 4750 4200 50  0000 C CNN
F 2 "" H 4750 4350 50  0000 C CNN
F 3 "" H 4750 4350 50  0000 C CNN
	1    4750 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P21
U 1 1 59C53169
P 4300 2800
F 0 "P21" H 4300 2950 50  0000 C CNN
F 1 "Sw_power" V 4000 2800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4300 2800 50  0001 C CNN
F 3 "" H 4300 2800 50  0000 C CNN
	1    4300 2800
	0    -1   -1   0   
$EndComp
NoConn ~ 7900 3350
NoConn ~ 7900 3250
NoConn ~ 7900 3450
$Comp
L LD1117S33TR U5
U 1 1 59C53173
P 8200 4050
F 0 "U5" H 8000 3800 50  0000 C CNN
F 1 "LD1117S33TR" H 8200 4250 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 8200 4150 50  0001 C CNN
F 3 "" H 8200 4050 50  0000 C CNN
	1    8200 4050
	1    0    0    -1  
$EndComp
Text Notes 7450 4950 0    60   Italic 0
Option si utilisation du 3.3V dans le montage
$Comp
L R-RESCUE-Mega_2560_core_mini_full_2.0 R17
U 1 1 59C53182
P 4750 3600
F 0 "R17" V 4830 3600 50  0000 C CNN
F 1 "5.1K" V 4750 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4680 3600 50  0001 C CNN
F 3 "" H 4750 3600 50  0000 C CNN
	1    4750 3600
	1    0    0    1   
$EndComp
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0117
U 1 1 59C53189
P 7100 3400
F 0 "#PWR0117" H 7100 3150 50  0001 C CNN
F 1 "GND" H 7100 3250 50  0000 C CNN
F 2 "" H 7100 3400 50  0000 C CNN
F 3 "" H 7100 3400 50  0000 C CNN
	1    7100 3400
	-1   0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-Mega_2560_core_mini_full_2.0 C28
U 1 1 59C5318F
P 5400 3200
F 0 "C28" H 5425 3300 50  0000 L CNN
F 1 "100µF" V 5500 2900 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.3" H 5400 3200 50  0001 C CNN
F 3 "" H 5400 3200 50  0000 C CNN
	1    5400 3200
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0118
U 1 1 59C53196
P 5400 3400
F 0 "#PWR0118" H 5400 3150 50  0001 C CNN
F 1 "GND" H 5400 3250 50  0000 C CNN
F 2 "" H 5400 3400 50  0000 C CNN
F 3 "" H 5400 3400 50  0000 C CNN
	1    5400 3400
	-1   0    0    -1  
$EndComp
$Comp
L MBR0520 D6
U 1 1 59C5319C
P 5100 3000
F 0 "D6" H 5100 3100 50  0000 C CNN
F 1 "MBR0520" H 5100 2900 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 5100 2825 50  0001 C CNN
F 3 "" H 5100 3000 50  0001 C CNN
	1    5100 3000
	-1   0    0    1   
$EndComp
NoConn ~ 4350 3000
NoConn ~ 4250 3000
$Comp
L CP1-RESCUE-Mega_2560_core_mini_full_2.0 C7
U 1 1 59C531A5
P 7450 3200
F 0 "C7" H 7475 3300 50  0000 L CNN
F 1 "100µF" V 7350 2900 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.3" H 7450 3200 50  0001 C CNN
F 3 "" H 7450 3200 50  0000 C CNN
	1    7450 3200
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0119
U 1 1 59C531AC
P 7450 3450
F 0 "#PWR0119" H 7450 3200 50  0001 C CNN
F 1 "GND" H 7450 3300 50  0000 C CNN
F 2 "" H 7450 3450 50  0000 C CNN
F 3 "" H 7450 3450 50  0000 C CNN
	1    7450 3450
	-1   0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-Mega_2560_core_mini_full_2.0 C8
U 1 1 59C531B2
P 8950 4300
F 0 "C8" H 8975 4400 50  0000 L CNN
F 1 "47µF" H 8975 4200 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.3" H 8950 4300 50  0001 C CNN
F 3 "" H 8950 4300 50  0000 C CNN
	1    8950 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0120
U 1 1 59C531B9
P 8950 4550
F 0 "#PWR0120" H 8950 4300 50  0001 C CNN
F 1 "GND" H 8950 4350 50  0000 C CNN
F 2 "" H 8950 4550 50  0000 C CNN
F 3 "" H 8950 4550 50  0000 C CNN
	1    8950 4550
	1    0    0    -1  
$EndComp
Text Notes 3950 2700 0    60   ~ 0
Power Switch
$Comp
L CONN_01X08 P30
U 1 1 59C531C1
P 3300 4150
F 0 "P30" H 3300 4600 50  0000 C CNN
F 1 "MiniDCDC3A" V 3400 4150 50  0000 C CNN
F 2 "MiniDCDC3A" H 3300 4150 50  0001 C CNN
F 3 "" H 3300 4150 50  0000 C CNN
	1    3300 4150
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0121
U 1 1 59C531C8
P 3550 4550
F 0 "#PWR0121" H 3550 4300 50  0001 C CNN
F 1 "GND" H 3550 4400 50  0000 C CNN
F 2 "" H 3550 4550 50  0000 C CNN
F 3 "" H 3550 4550 50  0000 C CNN
	1    3550 4550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR0122
U 1 1 59C531CE
P 3750 3900
F 0 "#PWR0122" H 3750 3750 50  0001 C CNN
F 1 "VCC" H 3750 4000 50  0000 C CNN
F 2 "" H 3750 3900 50  0000 C CNN
F 3 "" H 3750 3900 50  0000 C CNN
	1    3750 3900
	1    0    0    -1  
$EndComp
Text Label 3650 3000 0    60   ~ 0
LIPO+
Text Notes 3700 4500 0    60   ~ 0
DCDC_IN-
Text Label 4150 4300 2    60   ~ 0
DCDC_IN+
$Comp
L CONN_01X02 P17
U 1 1 59C531D8
P 3300 3050
F 0 "P17" H 3300 3200 50  0000 C CNN
F 1 "BATT" V 3400 3050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3300 3050 50  0001 C CNN
F 3 "" H 3300 3050 50  0000 C CNN
	1    3300 3050
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0123
U 1 1 59C531DF
P 3600 3200
F 0 "#PWR0123" H 3600 2950 50  0001 C CNN
F 1 "GND" H 3600 3050 50  0000 C CNN
F 2 "" H 3600 3200 50  0000 C CNN
F 3 "" H 3600 3200 50  0000 C CNN
	1    3600 3200
	1    0    0    -1  
$EndComp
Text Notes 3100 4950 0    60   Italic 0
Option module DCDC 3A
$Comp
L DIODE D3
U 1 1 59C531E6
P 5100 3650
F 0 "D3" H 5100 3750 40  0000 C CNN
F 1 "LL4148" H 5100 3550 40  0000 C CNN
F 2 "D_SCD80_HandSoldering" H 5100 3650 60  0001 C CNN
F 3 "" H 5100 3650 60  0000 C CNN
	1    5100 3650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D4
U 1 1 59C531ED
P 5100 4200
F 0 "D4" H 5100 4300 40  0000 C CNN
F 1 "LL4148" H 5100 4100 40  0000 C CNN
F 2 "D_SCD80_HandSoldering" H 5100 4200 60  0001 C CNN
F 3 "" H 5100 4200 60  0000 C CNN
	1    5100 4200
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-Mega_2560_core_mini_full_2.0 #PWR0124
U 1 1 59C531F4
P 5100 4450
F 0 "#PWR0124" H 5100 4200 50  0001 C CNN
F 1 "GND" H 5100 4300 50  0000 C CNN
F 2 "" H 5100 4450 50  0000 C CNN
F 3 "" H 5100 4450 50  0000 C CNN
	1    5100 4450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR0125
U 1 1 59C531FA
P 5100 3400
F 0 "#PWR0125" H 5100 3250 50  0001 C CNN
F 1 "VCC" H 5100 3550 50  0000 C CNN
F 2 "" H 5100 3400 50  0000 C CNN
F 3 "" H 5100 3400 50  0000 C CNN
	1    5100 3400
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR0126
U 1 1 59C53200
P 4750 2800
F 0 "#PWR0126" H 4750 2650 50  0001 C CNN
F 1 "+BATT" H 4750 2940 50  0000 C CNN
F 2 "" H 4750 2800 50  0000 C CNN
F 3 "" H 4750 2800 50  0000 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
Text Label 5400 2550 3    60   ~ 0
DCDC_IN+
Connection ~ 8200 4450
Wire Wire Line
	8200 4450 8700 4450
Wire Notes Line
	7600 3800 9400 3800
Wire Wire Line
	6800 3000 8450 3000
Wire Notes Line
	7600 4800 9400 4800
Wire Notes Line
	7600 3800 7600 4800
Connection ~ 8100 3000
Wire Wire Line
	8100 3250 8100 3000
Wire Wire Line
	8100 3350 8500 3350
Wire Wire Line
	8200 4300 8200 4550
Wire Wire Line
	6300 3600 6300 3850
Wire Wire Line
	5400 2550 5400 3050
Connection ~ 5400 3000
Wire Wire Line
	5400 3400 5400 3350
Wire Wire Line
	7100 3350 7100 3400
Wire Wire Line
	7100 3050 7100 3000
Connection ~ 7100 3000
Wire Wire Line
	7450 3450 7450 3350
Wire Wire Line
	8950 4550 8950 4450
Wire Wire Line
	3500 4300 4150 4300
Wire Wire Line
	3500 4200 3650 4200
Wire Wire Line
	3550 4400 3500 4400
Wire Wire Line
	3550 3800 3550 4550
Wire Wire Line
	3500 3900 3550 3900
Connection ~ 3550 3900
Wire Wire Line
	3550 4500 3500 4500
Connection ~ 3550 4400
Connection ~ 3550 4500
Wire Wire Line
	3750 4100 3500 4100
Wire Wire Line
	3750 3900 3750 4100
Wire Wire Line
	3750 4000 3500 4000
Connection ~ 3750 4000
Wire Wire Line
	3500 3100 3600 3100
Wire Wire Line
	3600 3100 3600 3200
Wire Wire Line
	3650 4200 3650 4300
Connection ~ 3650 4300
Wire Wire Line
	3500 3000 4250 3000
Wire Wire Line
	3500 3800 3550 3800
Wire Notes Line
	3100 3700 4250 3700
Wire Notes Line
	4250 3700 4250 4800
Wire Notes Line
	4250 4800 3100 4800
Wire Notes Line
	3100 4800 3100 3700
Wire Wire Line
	8700 3450 8700 4150
Wire Wire Line
	8100 3450 8700 3450
Wire Wire Line
	5100 3850 5100 4000
Wire Wire Line
	5100 3400 5100 3450
Wire Wire Line
	4650 3900 5100 3900
Connection ~ 5100 3900
Wire Wire Line
	5100 4450 5100 4400
Wire Notes Line
	3000 5050 3000 2200
Wire Notes Line
	3000 5050 9650 5050
Wire Notes Line
	3000 2200 9650 2200
Wire Wire Line
	4750 3750 4750 4000
Connection ~ 4750 3900
Wire Wire Line
	4750 4350 4750 4300
Wire Wire Line
	4750 2800 4750 3450
Connection ~ 4750 3000
Wire Wire Line
	5250 3000 5800 3000
Wire Wire Line
	4350 3000 4950 3000
Text GLabel 4650 3900 0    60   Output ~ 0
U_batt
Wire Notes Line
	9400 4800 9400 3800
Text GLabel 8500 3350 2    60   Output ~ 0
LCD_VCC
$Comp
L +3,3V #PWR0127
U 1 1 59CA5551
P 9000 4000
F 0 "#PWR0127" H 9000 3960 30  0001 C CNN
F 1 "+3,3V" V 9000 4200 39  0000 C CNN
F 2 "" H 9000 4000 60  0001 C CNN
F 3 "" H 9000 4000 60  0001 C CNN
	1    9000 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 4000 9000 4000
Connection ~ 8700 4000
Wire Wire Line
	8700 4100 8600 4100
Connection ~ 8700 4100
Wire Wire Line
	8950 4150 8950 4000
Connection ~ 8950 4000
$Comp
L PM5033 U4
U 1 1 59E1D515
P 6300 3150
F 0 "U4" H 6500 2850 60  0000 C CNN
F 1 "PM5033" H 6300 3450 60  0000 C CNN
F 2 "PM5033_SIL5" H 6300 3150 60  0001 C CNN
F 3 "" H 6300 3150 60  0000 C CNN
	1    6300 3150
	1    0    0    -1  
$EndComp
$Comp
L +3,3V #PWR0128
U 1 1 59FED94A
P 6850 3300
F 0 "#PWR0128" H 6850 3260 30  0001 C CNN
F 1 "+3,3V" V 6900 3400 39  0000 C CNN
F 2 "" H 6850 3300 60  0001 C CNN
F 3 "" H 6850 3300 60  0001 C CNN
	1    6850 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3000 7700 4000
Connection ~ 7700 3000
Wire Wire Line
	7450 3050 7450 3000
Connection ~ 7450 3000
Wire Wire Line
	6850 3300 6800 3300
Wire Wire Line
	7700 4000 7800 4000
Wire Notes Line
	9650 2200 9650 5050
$EndSCHEMATC
