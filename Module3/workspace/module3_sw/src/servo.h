#pragma once

#include <stdio.h>
#include "xtmrctr.h"
#include "xparameters.h"  	/* constants used by the hardware */
#include "xil_types.h"		/* types used by xilinx */

/*
 * initializes servo motor control, setting dutycycle at 7.5%
 */
void servo_init(void);

/*
 * sets desired dutycycle (e.g. 5.0 -> 5% dutycycle)
 */
void servo_set(double dutycycle);
