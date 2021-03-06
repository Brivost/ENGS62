#include <stdio.h>
#include <stdlib.h>
#include "servo.h"

static XTmrCtr tmrctr;

#define PERIOD 1000000

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

	servo_set(7.5);

}

/*
 * sets desired dutycycle (e.g. 5.0 -> 5% dutycycle)
 */
void servo_set(double dutycycle){

	// only move motor within endpoints
	if (dutycycle >= 2.5 && dutycycle <= 10.5) {
		XTmrCtr_Stop(&tmrctr, 0);
		XTmrCtr_Stop(&tmrctr, 1);

		// find # of periods for high time based on dutycycle
		int high_time_periods = (dutycycle/100) * PERIOD;

		XTmrCtr_SetResetValue(&tmrctr, 0, PERIOD);
		XTmrCtr_SetResetValue(&tmrctr, 1, high_time_periods);

		printf("\n[ %.2f ]", dutycycle);

		XTmrCtr_Start(&tmrctr, 0);
		XTmrCtr_Start(&tmrctr, 1);
	}

}
