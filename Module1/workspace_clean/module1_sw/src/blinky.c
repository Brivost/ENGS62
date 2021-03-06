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
#include <stdio.h>							/* printf(), getchar() */
#include <strings.h>					/* strcmp() */
#include "xil_types.h"					/* u32, u16 etc */
#include "platform.h"						/* ZYBOboard interface */
#include <xgpio.h>							/* Xilinx GPIO functions */
#include "xparameters.h"				/* constants used by the hardware */
#include "led.h"

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
		return 1; // 0001 points to LED 0
	}
	if (initial_char == '1' && charcount == 1){ // toggle LED 1 if input is 1
		printf("\n[%c ",initial_char);
		return 2; //0010 points to LED 1
	}
	if (initial_char == '2' && charcount == 1){ // toggle LED 2 if input is 2
		printf("\n[%c ",initial_char);
		return 4; //0100 points to LED 2
	}
	if (initial_char == '3' && charcount == 1){ // toggle LED 3 if input is 3
		printf("\n[%c ",initial_char);
		return 8; //1000 points to LED 3
	}
	if (initial_char == 'r' && charcount == 1){
		printf("\n[red]");
		return 9;
	}
	if (initial_char == 'g' && charcount == 1){
		printf("\n[green]");
		return 10;
	}
	if (initial_char == 'b' && charcount == 1){
		printf("\n[blue]");
		return 11;
	}
	if (initial_char == 'y' && charcount == 1){
		printf("\n[yellow]");
		return 12;
	}

	return 13;
}


int main() {
	 /* 
	  * set stdin unbuffered, forcing getchar to return immediately when
	  * a character is typed.
      */
	 setvbuf(stdin,NULL,_IONBF,0);
	 
	 printf("[Hello]\n");

   led_init();
   led_set(1, LED_ON); //1 = 0001 -> points to LED 0. Sets LED 0 high
   led_set(7, LED_ON);
   RGB_set();

   u32 input = 1;
   while(input != -1) {
	  input = get_input();
	  if (input != 13){ // change LED's
		  if (input < 9){ //toggle LED if input is 0,1,2,3
			  if(led_get(input)==LED_ON && input != -1){
				  printf("off]");
			  }
			  else if (led_get(input)==LED_OFF && input != -1){
				  printf("on]");
			  }
			  led_toggle(input);
		  }
		  else { //toggle RGB LEd if input is r,g,b,y
			  if (input == 9){
				  RGB_set(RED);
			  }
			  if (input == 10){
				  RGB_set(GREEN);
			  }
			  if (input == 11){
				  RGB_set(BLUE);
			  }
			  if (input == 12){
				  RGB_set(YELLOW);
			  }
		  }
	  }
	  printf("\n");
   }

   led_set(ALL, LED_OFF); // turns LED's 0,1,2,3 off
   led_set(7, LED_OFF);
   RGB_set(0);

   cleanup_platform();					/* cleanup the hardware platform */
   return 0;
}
