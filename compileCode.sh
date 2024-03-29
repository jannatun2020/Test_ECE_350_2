#!/bin/bash
echo "Starting"
if mraa-gpio version | grep -q "v2.0.0"
then
	echo "Found the proper mraa version"
	echo " "
	echo " ***** Compiling LCD Animation"
	gcc M3_L1_LCDAnimation.c -l mraa -o LCDAnimation
	echo " ***** Compiling Button Test"
	gcc M3_L1_ButtonTest.c -l mraa -o ButtonTest
	echo " ***** Compiling RelayTest"
	gcc M3_L1_RelayTest.c -l mraa -o RelayTest
    echo " ***** Compiling TMP36"
	gcc M3_L1_TMP36.c -l mraa -o tmp36
	echo " ***** Compiling Analog Temp Display"
	gcc M3_L1_ATempDisplay.c -l mraa -o AtempDisplay
	echo " ***** Compiling Analog Digital Temp display"
	gcc M3_L1_ADTempDisplay.c -l mraa -o ADTempDisplay
	echo " ***** Compiling Pressure Display"
	gcc M3_L1_PressureDisplay.c -l mraa -o PressureDisplay
	echo " ***** Compiling Accel Display"
	gcc M3_L1_AccelDisplay.c -l mraa -o AccelDisplay
	echo " ***** Compiling RGB_LED_PWM"
	gcc M3_L1_RGB_LED_PWM.c -l mraa -o RGB_LED_PWM
	echo " ***** Compiling GyroscopeDisplay"
	gcc M3_L1_GyroscopeDisplay.c -l mraa -o GyroscopeDisplay
	echo " "
	echo "Compile complete"
else
	echo "Did not find the proper version"
fi
