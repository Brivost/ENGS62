#include <stdio.h>
#include <stdlib.h>
#include "servo.h"

static XTmrCtr tmrctr;

/*
 * initializes servo motor control, setting dutycycle at 7.5%
 */
void servo_init(void) {
	/* outputing square waveform */
	XTmrCtr_Initialize(&tmrctr, XPAR_AXI_TIMER_0_DEVICE_ID);

	XTmrCtr_Stop(&tmrctr, 0);
	XTmrCtr_Stop(&tmrctr, 1);

	XTmrCtr_SetOptions(&tmrctr, 0, XTC_DOWN_COUNT_OPTION | XTC_EXT_COMPARE_OPTION | XTC_PWM_ENABLE_OPTION );
	XTmrCtr_SetOptions(&tmrctr, 1, XTC_DOWN_COUNT_OPTION | XTC_EXT_COMPARE_OPTION | XTC_PWM_ENABLE_OPTION);

	XTmrCtr_SetResetValue(&tmrctr, 0, 1000000); // period
	XTmrCtr_SetResetValue(&tmrctr, 1, 75000); // high time

	XTmrCtr_Start(&tmrctr, 0);
	XTmrCtr_Start(&tmrctr, 1);
}

/*
 * sets desired dutycycle (e.g. 5.0 -> 5% dutycycle)
 */
void servo_set(double dutycycle){

	double clk_frq = 50000000;
	int high_time_periods = 0;

	// find # of periods for high time based on dutycycle
	high_time_periods = (dutycycle/100) * clk_frq;

	XTmrCtr_SetResetValue(&tmrctr, 0, 1000000);
	XTmrCtr_SetResetValue(&tmrctr, 1, high_time_periods);

	printf("\n[ %f ]", dutycycle);

}
