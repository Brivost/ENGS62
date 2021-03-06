#include <stdio.h>
#include <stdlib.h>
#include "ttc.h"
#include "gic.h"
#include "platform.h"

static XTtcPs ttc;
static XInterval interval;
static u8 prescaler;
static void (*saved_ttc_callback)(void);

void ttc_handler(void){
	saved_ttc_callback();
	u32 interrupt_status = XTtcPs_GetInterruptStatus(&ttc);
	XTtcPs_ClearInterruptStatus(&ttc, interrupt_status);
}

/*
 * ttc_init -- initialize the ttc freqency and callback
 */
void ttc_init(u32 freq, void (*ttc_callback)(void)) {

	saved_ttc_callback = ttc_callback;

	XTtcPs_Config *config = XTtcPs_LookupConfig(XPAR_XTTCPS_0_DEVICE_ID);
	XTtcPs_CfgInitialize(&ttc, config, config->BaseAddress);

	XTtcPs_DisableInterrupts(&ttc, XTTCPS_IXR_INTERVAL_MASK);

	gic_connect(XPAR_XTTCPS_0_INTR, ttc_handler, &ttc);

	XTtcPs_CalcIntervalFromFreq(&ttc, freq, &interval, &prescaler);
	XTtcPs_SetPrescaler(&ttc, prescaler);
	XTtcPs_SetInterval(&ttc, interval);
	XTtcPs_SetOptions(&ttc, XTTCPS_OPTION_INTERVAL_MODE);

}

/*
 * ttc_start -- start the ttc
 */
void ttc_start(void) {
	XTtcPs_EnableInterrupts(&ttc, XTTCPS_IXR_INTERVAL_MASK);
	XTtcPs_Start(&ttc);

}

/*
 * ttc_stop -- stop the ttc
 */
void ttc_stop(void) {
	XTtcPs_DisableInterrupts(&ttc, XTTCPS_IXR_INTERVAL_MASK);
	XTtcPs_Stop(&ttc);
}

/*
 * ttc_close -- close down the ttc
 */
void ttc_close(void) {
	gic_disconnect(XPAR_XTTCPS_0_INTR);
}
