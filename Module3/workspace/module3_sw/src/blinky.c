/*
 * blinky.c -- working with Serial I/O and GPIO
 *
 * Assumes the LED's are connected to AXI_GPIO_0, on channel 1
 *
 * Terminal Settings:
 *  -Baud: 115200
 *  -Data bits: 8
 *  -Parity: no
 *  -Stop bits: 1
 */
#include <stdio.h>						/* printf(), getchar() */
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include <string.h>						/* strcmp() */

#include "xil_types.h"					/* u32, u16 etc */
#include "platform.h"					/* ZYBOboard interface */
#include "xparameters.h"				/* constants used by the hardware */

#include "xttcps.h"
#include "xgpio.h"
#include "xtmrctr.h"
#include "led.h"
#include "gic.h"
#include "io.h"
#include "ttc.h"
#include "servo.h"

static bool OFF = TRUE; // says whether LED 4 is on or off
//static XTmrCtr tmrctr;

void led_callback(u32 btn){
	led_toggle(btn);
}

void ttc_callback(){
	if (OFF){
		led_set(4, LED_ON); // turn on LED4
		OFF = FALSE;
	}
	else {
		led_set(4, LED_OFF); //turn off LED4
		OFF = TRUE;
	}
}

/* Prompts for a single character from
 * stdout and then prints that character.
 * returns 1 after newline
 * returns 0 after q
 */
int get_input(){
	printf(">");

	int c = getchar();
	int initial_char = c;
	int charcount = 0; //records number of characters entered

	while (c != 13){ //check for return (ascii code 13)
		printf("%c", c);
		c = getchar();
		if (c != 127){ //discard delete key entries
			charcount++; //increment character count
		}
	}

	if(initial_char == 'q' && charcount == 1){
		return -1;
	}
	if (initial_char == '0' && charcount == 1){ // toggle LED 0 if input is 0
		printf("\n[%c ",initial_char);
		return 0; // 0001 points to LED 0
	}
	if (initial_char == '1' && charcount == 1){ // toggle LED 1 if input is 1
		printf("\n[%c ",initial_char);
		return 1; //0010 points to LED 1
	}
	if (initial_char == '2' && charcount == 1){ // toggle LED 2 if input is 2
		printf("\n[%c ",initial_char);
		return 2; //0100 points to LED 2
	}
	if (initial_char == '3' && charcount == 1){ // toggle LED 3 if input is 3
		printf("\n[%c ",initial_char);
		return 3; //1000 points to LED 3
	}
	if (initial_char == 'a' && charcount == 1){ // increase dutycycle 0.25%
		return 4;
	}
	if (initial_char == 's' && charcount == 1){ // decrease dutycycle 0.25%
		return 5;
	}
	return 6;
}


int main() {
	/*
	 * set stdin unbuffered, forcing getchar to return immediately when
	 * a character is typed.
     */
	setvbuf(stdin,NULL,_IONBF,0);

	init_platform();

	/* initialize the gic (c.f. gic.h) */
	gic_init();

	/* initialize led's 0-3 */
	led_init();

	/* set up interrupts & callbacks */
	io_btn_init(led_callback);
	io_sw_init(led_callback);
	ttc_init(1, ttc_callback);

	/* start triple timer counter to blink led once per second*/
	ttc_start();

//	/* outputing square waveform */
//	XTmrCtr_Initialize(&tmrctr, XPAR_AXI_TIMER_0_DEVICE_ID);
//
//	XTmrCtr_Stop(&tmrctr, 0);
//	XTmrCtr_Stop(&tmrctr, 1);
//
//	XTmrCtr_SetOptions(&tmrctr, 0, XTC_DOWN_COUNT_OPTION | XTC_EXT_COMPARE_OPTION | XTC_PWM_ENABLE_OPTION );
//	XTmrCtr_SetOptions(&tmrctr, 1, XTC_DOWN_COUNT_OPTION | XTC_EXT_COMPARE_OPTION | XTC_PWM_ENABLE_OPTION);
//
//	XTmrCtr_SetResetValue(&tmrctr, 0, 1000000); // period
//	XTmrCtr_SetResetValue(&tmrctr, 1, 75000); // high time
//
//	XTmrCtr_Start(&tmrctr, 0);
//	XTmrCtr_Start(&tmrctr, 1);

	servo_init();

	printf("[Hello]\n");

	 u32 input = 1;
	 while(input != -1) {
		 input = get_input();
		 if (input <= 3 && input != -1){ // change LED's
			 if(led_get(input)==LED_ON){
				 printf("off]");
			 }
			 else if (led_get(input)==LED_OFF){
				 printf("on]");
			 }
			 led_toggle(input);
		 }
//		 else if (input == 4 || input == 6){
//			 pass;
//		 }
		 printf("\n");
	 }

	 led_set(ALL, LED_OFF); // turns LED's 0,1,2,3,4 off

	 ttc_stop();

	 io_btn_close();
	 io_sw_close();
	 ttc_close();

	 /* close the gic (c.f. gic.h) */
	 gic_close();

	 cleanup_platform();					/* cleanup the hardware platform */

	 return 0;
}
