EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "Pomodoro Timer"
Date ""
Rev "2"
Comp "De Tiege Electronics"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pomodoro_r2-rescue:LED-Device D1
U 1 1 6020BBCE
P 6150 4850
F 0 "D1" H 6150 4750 50  0000 C CNN
F 1 "BIN_16" H 5950 4900 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6150 4850 50  0001 C CNN
F 3 "~" H 6150 4850 50  0001 C CNN
	1    6150 4850
	-1   0    0    1   
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R2
U 1 1 6035D36E
P 5800 3850
F 0 "R2" V 5700 3850 50  0000 C CNN
F 1 "220R" V 5800 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 3850 50  0001 C CNN
F 3 "~" H 5800 3850 50  0001 C CNN
	1    5800 3850
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:SW_SPDT-Switch SW3
U 1 1 6052895C
P 5750 6650
F 0 "SW3" H 5750 6935 50  0000 C CNN
F 1 "MUT" H 5750 6844 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5750 6650 50  0001 C CNN
F 3 "~" H 5750 6650 50  0001 C CNN
	1    5750 6650
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:GND-power #PWR06
U 1 1 6022B411
P 3650 4900
F 0 "#PWR06" H 3650 4650 50  0001 C CNN
F 1 "GND" H 3655 4727 50  0000 C CNN
F 2 "" H 3650 4900 50  0001 C CNN
F 3 "" H 3650 4900 50  0001 C CNN
	1    3650 4900
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:GND-power #PWR02
U 1 1 60223B82
P 2400 4850
F 0 "#PWR02" H 2400 4600 50  0001 C CNN
F 1 "GND" H 2405 4677 50  0000 C CNN
F 2 "" H 2400 4850 50  0001 C CNN
F 3 "" H 2400 4850 50  0001 C CNN
	1    2400 4850
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:GND-power #PWR09
U 1 1 604B8354
P 5000 7700
F 0 "#PWR09" H 5000 7450 50  0001 C CNN
F 1 "GND" H 5005 7527 50  0000 C CNN
F 2 "" H 5000 7700 50  0001 C CNN
F 3 "" H 5000 7700 50  0001 C CNN
	1    5000 7700
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R7
U 1 1 6036F8F6
P 4300 7650
F 0 "R7" V 4200 7650 50  0000 C CNN
F 1 "220R" V 4300 7650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4230 7650 50  0001 C CNN
F 3 "~" H 4300 7650 50  0001 C CNN
	1    4300 7650
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R3
U 1 1 6035D099
P 5800 4100
F 0 "R3" V 5700 4100 50  0000 C CNN
F 1 "220R" V 5800 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 4100 50  0001 C CNN
F 3 "~" H 5800 4100 50  0001 C CNN
	1    5800 4100
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R4
U 1 1 6035C176
P 5800 4350
F 0 "R4" V 5700 4350 50  0000 C CNN
F 1 "220R" V 5800 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 4350 50  0001 C CNN
F 3 "~" H 5800 4350 50  0001 C CNN
	1    5800 4350
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R5
U 1 1 6035BE22
P 5800 4600
F 0 "R5" V 5700 4600 50  0000 C CNN
F 1 "220R" V 5800 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 4600 50  0001 C CNN
F 3 "~" H 5800 4600 50  0001 C CNN
	1    5800 4600
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R6
U 1 1 6035B9D2
P 5800 4850
F 0 "R6" V 5700 4850 50  0000 C CNN
F 1 "220R" V 5800 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 4850 50  0001 C CNN
F 3 "~" H 5800 4850 50  0001 C CNN
	1    5800 4850
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:+3.3V-power #PWR07
U 1 1 6034933C
P 6150 8300
F 0 "#PWR07" H 6150 8150 50  0001 C CNN
F 1 "+3.3V" H 6165 8473 50  0000 C CNN
F 2 "" H 6150 8300 50  0001 C CNN
F 3 "" H 6150 8300 50  0001 C CNN
	1    6150 8300
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:+3.3V-power #PWR03
U 1 1 6022E67E
P 3050 6400
F 0 "#PWR03" H 3050 6250 50  0001 C CNN
F 1 "+3.3V" H 3065 6573 50  0000 C CNN
F 2 "" H 3050 6400 50  0001 C CNN
F 3 "" H 3050 6400 50  0001 C CNN
	1    3050 6400
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:GND-power #PWR04
U 1 1 6022C35E
P 3050 8500
F 0 "#PWR04" H 3050 8250 50  0001 C CNN
F 1 "GND" H 3055 8327 50  0000 C CNN
F 2 "" H 3050 8500 50  0001 C CNN
F 3 "" H 3050 8500 50  0001 C CNN
	1    3050 8500
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:+3.3V-power #PWR05
U 1 1 602285C5
P 3650 3900
F 0 "#PWR05" H 3650 3750 50  0001 C CNN
F 1 "+3.3V" H 3665 4073 50  0000 C CNN
F 2 "" H 3650 3900 50  0001 C CNN
F 3 "" H 3650 3900 50  0001 C CNN
	1    3650 3900
	1    0    0    -1  
$EndComp
NoConn ~ 2500 4000
$Comp
L pomodoro_r2-rescue:+3.3V-power #PWR01
U 1 1 60222C69
P 2300 3950
F 0 "#PWR01" H 2300 3800 50  0001 C CNN
F 1 "+3.3V" H 2315 4123 50  0000 C CNN
F 2 "" H 2300 3950 50  0001 C CNN
F 3 "" H 2300 3950 50  0001 C CNN
	1    2300 3950
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:SW_SPDT-Switch SW1
U 1 1 60218D3C
P 2400 4200
F 0 "SW1" H 2400 4485 50  0000 C CNN
F 1 "PWR" H 2400 4394 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2400 4200 50  0001 C CNN
F 3 "~" H 2400 4200 50  0001 C CNN
	1    2400 4200
	0    -1   -1   0   
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R1
U 1 1 60212FBA
P 5950 8350
F 0 "R1" V 5850 8300 50  0000 L CNN
F 1 "10K " V 5950 8300 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5880 8350 50  0001 C CNN
F 3 "~" H 5950 8350 50  0001 C CNN
	1    5950 8350
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R10
U 1 1 60212D66
P 5800 5750
F 0 "R10" V 5700 5750 50  0000 C CNN
F 1 "220R" V 5800 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 5750 50  0001 C CNN
F 3 "~" H 5800 5750 50  0001 C CNN
	1    5800 5750
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R9
U 1 1 602123C2
P 5800 5500
F 0 "R9" V 5700 5500 50  0000 C CNN
F 1 "220R" V 5800 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 5500 50  0001 C CNN
F 3 "~" H 5800 5500 50  0001 C CNN
	1    5800 5500
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:R-Device R8
U 1 1 60212179
P 5800 5250
F 0 "R8" V 5700 5250 50  0000 C CNN
F 1 "220R" V 5800 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 5250 50  0001 C CNN
F 3 "~" H 5800 5250 50  0001 C CNN
	1    5800 5250
	0    1    1    0   
$EndComp
$Comp
L pomodoro_r2-rescue:LED-Device D5
U 1 1 6020E050
P 6150 3850
F 0 "D5" H 6150 3750 50  0000 C CNN
F 1 "BIN_1" H 5950 3900 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6150 3850 50  0001 C CNN
F 3 "~" H 6150 3850 50  0001 C CNN
	1    6150 3850
	-1   0    0    1   
$EndComp
$Comp
L pomodoro_r2-rescue:LED-Device D4
U 1 1 6020DD47
P 6150 4100
F 0 "D4" H 6150 4000 50  0000 C CNN
F 1 "BIN_2" H 5950 4150 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6150 4100 50  0001 C CNN
F 3 "~" H 6150 4100 50  0001 C CNN
	1    6150 4100
	-1   0    0    1   
$EndComp
$Comp
L pomodoro_r2-rescue:LED-Device D3
U 1 1 6020DA35
P 6150 4350
F 0 "D3" H 6150 4250 50  0000 C CNN
F 1 "BIN_4" H 5950 4400 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6150 4350 50  0001 C CNN
F 3 "~" H 6150 4350 50  0001 C CNN
	1    6150 4350
	-1   0    0    1   
$EndComp
$Comp
L pomodoro_r2-rescue:LED-Device D2
U 1 1 6020D71B
P 6150 4600
F 0 "D2" H 6150 4500 50  0000 C CNN
F 1 "BIN_8" H 5950 4650 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6150 4600 50  0001 C CNN
F 3 "~" H 6150 4600 50  0001 C CNN
	1    6150 4600
	-1   0    0    1   
$EndComp
$Comp
L pomodoro_r2-rescue:LED-Device D6
U 1 1 6020B345
P 4650 7650
F 0 "D6" H 4650 7550 50  0000 C CNN
F 1 "PAUSE" H 4450 7700 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4650 7650 50  0001 C CNN
F 3 "~" H 4650 7650 50  0001 C CNN
	1    4650 7650
	-1   0    0    1   
$EndComp
$Comp
L pomodoro_r2-rescue:LED-Device D8
U 1 1 6020AA6B
P 6150 5500
F 0 "D8" H 6150 5400 50  0000 C CNN
F 1 "POM_2" H 5950 5550 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6150 5500 50  0001 C CNN
F 3 "~" H 6150 5500 50  0001 C CNN
	1    6150 5500
	-1   0    0    1   
$EndComp
$Comp
L pomodoro_r2-rescue:LED-Device D9
U 1 1 6020A77E
P 6150 5750
F 0 "D9" H 6150 5650 50  0000 C CNN
F 1 "POM_4" H 5950 5800 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6150 5750 50  0001 C CNN
F 3 "~" H 6150 5750 50  0001 C CNN
	1    6150 5750
	-1   0    0    1   
$EndComp
$Comp
L pomodoro_r2-rescue:LED-Device D7
U 1 1 602093D0
P 6150 5250
F 0 "D7" H 6150 5150 50  0000 C CNN
F 1 "POM_1" H 5950 5300 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6150 5250 50  0001 C CNN
F 3 "~" H 6150 5250 50  0001 C CNN
	1    6150 5250
	-1   0    0    1   
$EndComp
$Comp
L pomodoro_r2-rescue:ATtiny84-20PU-MCU_Microchip_ATtiny U1
U 1 1 60204F9B
P 3050 7550
F 0 "U1" H 2521 7596 50  0000 R CNN
F 1 "ATtiny84-20PU" H 2521 7505 50  0000 R CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3050 7550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8006.pdf" H 3050 7550 50  0001 C CNN
	1    3050 7550
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:C-Device C1
U 1 1 602F635E
P 2850 6450
F 0 "C1" V 3000 6400 50  0000 L CNN
F 1 "100nf" V 2700 6350 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 2888 6300 50  0001 C CNN
F 3 "~" H 2850 6450 50  0001 C CNN
	1    2850 6450
	0    -1   -1   0   
$EndComp
$Comp
L pomodoro_r2-rescue:GND-power #PWR0101
U 1 1 602F7473
P 2650 6500
F 0 "#PWR0101" H 2650 6250 50  0001 C CNN
F 1 "GND" H 2655 6327 50  0000 C CNN
F 2 "" H 2650 6500 50  0001 C CNN
F 3 "" H 2650 6500 50  0001 C CNN
	1    2650 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4500 2400 4400
Text GLabel 4150 4350 2    50   Input ~ 0
MOSI
Text GLabel 4150 4250 2    50   Input ~ 0
MISO
Text GLabel 4150 4450 2    50   Input ~ 0
SCK
Text GLabel 4150 4550 2    50   Input ~ 0
RST
$Comp
L pomodoro_r2-rescue:AVR-ISP-6-Connector J1
U 1 1 60206764
P 3750 4450
F 0 "J1" H 3421 4546 50  0000 R CNN
F 1 "AVR-ISP-6" H 3421 4455 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 3500 4500 50  0001 C CNN
F 3 " ~" H 2475 3900 50  0001 C CNN
	1    3750 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3950 3650 3900
Wire Wire Line
	3650 4850 3650 4900
Wire Wire Line
	2300 3950 2300 4000
Wire Wire Line
	2400 4800 2400 4850
Wire Notes Line
	2050 3650 2050 5150
Wire Notes Line
	2050 5150 2800 5150
Wire Notes Line
	2800 5150 2800 3650
Wire Notes Line
	2800 3650 2050 3650
Text Notes 2050 3650 0    50   ~ 0
Power Supply
Wire Wire Line
	2650 6500 2650 6450
Wire Wire Line
	3050 8450 3050 8500
Wire Notes Line
	2950 3650 2950 5150
Wire Notes Line
	2950 5150 4450 5150
Wire Notes Line
	4450 5150 4450 3650
Wire Notes Line
	2950 3650 4450 3650
Text Notes 2950 3650 0    50   ~ 0
ISP Interface
Text GLabel 3650 7550 2    50   Input ~ 0
MOSI
Text GLabel 3650 7450 2    50   Input ~ 0
MISO
Text GLabel 3650 8150 2    50   Input ~ 0
RST
$Comp
L pomodoro_r2-rescue:GND-power #PWR0102
U 1 1 60B39B05
P 6500 4900
F 0 "#PWR0102" H 6500 4650 50  0001 C CNN
F 1 "GND" H 6505 4727 50  0000 C CNN
F 2 "" H 6500 4900 50  0001 C CNN
F 3 "" H 6500 4900 50  0001 C CNN
	1    6500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3850 6500 3850
Wire Wire Line
	6500 3850 6500 4100
Wire Wire Line
	6300 4100 6500 4100
Connection ~ 6500 4100
Wire Wire Line
	6500 4100 6500 4350
Wire Wire Line
	6300 4350 6500 4350
Connection ~ 6500 4350
Wire Wire Line
	6500 4350 6500 4600
Wire Wire Line
	6300 4600 6500 4600
Connection ~ 6500 4600
Wire Wire Line
	6500 4600 6500 4850
Wire Wire Line
	6300 4850 6500 4850
Text GLabel 5250 3750 0    50   Input ~ 0
TimerLeds
Entry Wire Line
	5300 4750 5400 4850
Entry Wire Line
	5300 4500 5400 4600
Entry Wire Line
	5300 4250 5400 4350
Entry Wire Line
	5300 4000 5400 4100
Entry Wire Line
	5300 3750 5400 3850
Wire Bus Line
	5250 3750 5300 3750
Text GLabel 4050 6850 2    50   Input ~ 0
TimerLeds
Entry Wire Line
	3900 7350 4000 7250
Entry Wire Line
	3900 7250 4000 7150
Entry Wire Line
	3900 7150 4000 7050
Entry Wire Line
	3900 7050 4000 6950
Entry Wire Line
	3900 6950 4000 6850
Text Label 3650 6950 0    50   ~ 0
Bin_1
Wire Wire Line
	3650 6950 3900 6950
Text Label 3650 7050 0    50   ~ 0
Bin_2
Text Label 3650 7150 0    50   ~ 0
Bin_4
Text Label 3650 7250 0    50   ~ 0
Bin_8
Text Label 3650 7350 0    50   ~ 0
Bin_16
Wire Wire Line
	3650 7050 3900 7050
Wire Wire Line
	3650 7150 3900 7150
Wire Wire Line
	3650 7250 3900 7250
Wire Wire Line
	5950 3850 6000 3850
Wire Wire Line
	5950 4100 6000 4100
Wire Wire Line
	5950 4350 6000 4350
Wire Wire Line
	5950 4600 6000 4600
Wire Wire Line
	5950 4850 6000 4850
Text Label 5400 3850 0    50   ~ 0
Bin_1
Text Label 5400 4100 0    50   ~ 0
Bin_2
Text Label 5400 4350 0    50   ~ 0
Bin_4
Text Label 5400 4600 0    50   ~ 0
Bin_8
Text Label 5400 4850 0    50   ~ 0
Bin_16
Wire Wire Line
	5950 5250 6000 5250
Wire Wire Line
	5950 5500 6000 5500
Wire Wire Line
	5950 5750 6000 5750
Wire Wire Line
	6500 4900 6500 4850
Connection ~ 6500 4850
$Comp
L pomodoro_r2-rescue:GND-power #PWR0103
U 1 1 60CABF19
P 6500 5800
F 0 "#PWR0103" H 6500 5550 50  0001 C CNN
F 1 "GND" H 6505 5627 50  0000 C CNN
F 2 "" H 6500 5800 50  0001 C CNN
F 3 "" H 6500 5800 50  0001 C CNN
	1    6500 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5250 6500 5250
Wire Wire Line
	6500 5250 6500 5500
Wire Wire Line
	6300 5500 6500 5500
Connection ~ 6500 5500
Wire Wire Line
	6500 5500 6500 5750
Wire Wire Line
	6300 5750 6500 5750
Connection ~ 6500 5750
Wire Wire Line
	6500 5750 6500 5800
Entry Wire Line
	5300 5150 5400 5250
Entry Wire Line
	5300 5400 5400 5500
Entry Wire Line
	5300 5650 5400 5750
Wire Wire Line
	5650 3850 5400 3850
Wire Wire Line
	5400 4100 5650 4100
Wire Wire Line
	5650 4350 5400 4350
Wire Wire Line
	5400 4600 5650 4600
Wire Wire Line
	5650 4850 5400 4850
Text GLabel 5250 5100 0    50   Input ~ 0
PomodoroLeds
Text GLabel 4050 8150 2    50   Input ~ 0
PomodoroLeds
Wire Bus Line
	5250 5100 5300 5100
Text Label 5400 5250 0    50   ~ 0
Pom_1
Text Label 5400 5500 0    50   ~ 0
Pom_2
Text Label 5400 5750 0    50   ~ 0
Pom_3
Wire Wire Line
	5400 5250 5650 5250
Wire Wire Line
	5400 5500 5650 5500
Wire Wire Line
	5400 5750 5650 5750
Entry Wire Line
	3900 7850 4000 7950
Entry Wire Line
	3900 7950 4000 8050
Entry Wire Line
	3900 8050 4000 8150
Text Label 3650 7850 0    50   ~ 0
Pom_1
Text Label 3650 7950 0    50   ~ 0
Pom_2
Text Label 3650 8050 0    50   ~ 0
Pom_3
Wire Wire Line
	3650 7850 3900 7850
Wire Wire Line
	3900 7950 3650 7950
Wire Wire Line
	3650 8050 3900 8050
Wire Notes Line
	6600 6050 6600 3650
Wire Notes Line
	6600 3650 4600 3650
Wire Notes Line
	4600 3650 4600 6050
Wire Notes Line
	4600 6050 6600 6050
Text Notes 4600 3650 0    50   ~ 0
Timer LED Outputs
$Comp
L pomodoro_r2-rescue:SW_Push-Switch SW2
U 1 1 602150F8
P 5950 7600
F 0 "SW2" H 6000 7800 50  0000 L BNN
F 1 "PSE/RST" H 6000 7750 50  0000 L TNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5950 7800 50  0001 C CNN
F 3 "~" H 5950 7800 50  0001 C CNN
	1    5950 7600
	1    0    0    -1  
$EndComp
$Comp
L pomodoro_r2-rescue:GND-power #PWR08
U 1 1 60424097
P 6200 7650
F 0 "#PWR08" H 6200 7400 50  0001 C CNN
F 1 "GND" H 6205 7477 50  0000 C CNN
F 2 "" H 6200 7650 50  0001 C CNN
F 3 "" H 6200 7650 50  0001 C CNN
	1    6200 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 7600 6200 7600
Wire Wire Line
	6200 7600 6200 7650
Wire Wire Line
	4450 7650 4500 7650
Wire Wire Line
	6050 6750 6000 6750
Wire Wire Line
	6000 6750 6000 6900
NoConn ~ 5950 6750
$Comp
L pomodoro_r2-rescue:GND-power #PWR0104
U 1 1 60DACBB1
P 6000 6900
F 0 "#PWR0104" H 6000 6650 50  0001 C CNN
F 1 "GND" H 6005 6727 50  0000 C CNN
F 2 "" H 6000 6900 50  0001 C CNN
F 3 "" H 6000 6900 50  0001 C CNN
	1    6000 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 7650 5000 7650
Wire Wire Line
	5000 7650 5000 7700
Text GLabel 4050 7350 2    50   Input ~ 0
SCK
Wire Wire Line
	3650 7650 4150 7650
Wire Wire Line
	6100 8350 6150 8350
Wire Wire Line
	6150 8350 6150 8300
Wire Bus Line
	4050 8150 4000 8150
Wire Bus Line
	4050 6850 4000 6850
Wire Wire Line
	2700 6450 2650 6450
Wire Wire Line
	3050 6650 3050 6450
Wire Wire Line
	3000 6450 3050 6450
Wire Wire Line
	3050 6450 3050 6400
Wire Wire Line
	5950 6550 6050 6550
Wire Wire Line
	5800 8350 5750 8350
Connection ~ 3050 6450
Text GLabel 5750 8350 0    50   Input ~ 0
RST
Text GLabel 5700 7600 0    50   Input ~ 0
MOSI
Text GLabel 5500 6650 0    50   Input ~ 0
MISO
Wire Wire Line
	5750 7600 5700 7600
Wire Wire Line
	5550 6650 5500 6650
$Comp
L Device:Buzzer BZ?
U 1 1 60AC183F
P 6150 6650
F 0 "BZ?" H 6302 6679 50  0000 L CNN
F 1 "Buzzer" H 6302 6588 50  0000 L CNN
F 2 "" V 6125 6750 50  0001 C CNN
F 3 "~" V 6125 6750 50  0001 C CNN
	1    6150 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 60AD2F00
P 2400 4700
F 0 "BT?" H 2518 4796 50  0000 L CNN
F 1 "Battery" H 2518 4705 50  0000 L CNN
F 2 "" V 2400 4760 50  0001 C CNN
F 3 "~" V 2400 4760 50  0001 C CNN
	1    2400 4700
	1    0    0    -1  
$EndComp
Wire Notes Line
	1850 8750 1850 6150
Wire Notes Line
	1850 6150 6600 6150
Wire Notes Line
	6600 6150 6600 8750
Wire Notes Line
	1850 8750 6600 8750
Text Notes 1850 6150 0    50   ~ 0
Microcontroller
Wire Bus Line
	4000 7950 4000 8150
Wire Wire Line
	3650 7350 4050 7350
Wire Bus Line
	5300 5100 5300 5650
Wire Bus Line
	4000 6850 4000 7250
Wire Bus Line
	5300 3750 5300 4750
$EndSCHEMATC
