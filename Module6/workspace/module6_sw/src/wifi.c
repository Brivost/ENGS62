#include <stdbool.h>
#include "wifi.h"
#include "gic.h"

#define CONFIGURE 0
#define PING 1
#define UPDATE 2

XUartPs uart1;
XUartPs uart0;
static bool done = FALSE;
static u8 buffer;
static int mode;
static int binary = 0;
static int divider = 8;
static int count = 0;
static int requingle_value;
static u8 bigbuffer[100];
static int buffer_count = 0;
static char str[100];

static int train_value;

typedef struct {
	int type;
	int id;
} ping_t;

typedef struct {
	int type;
	int id;
	int value;
} update_request_t;

typedef struct {
	int type;
	int id;
	int average;
	int values[30];
} update_response_t;

static ping_t pringle;
static ping_t *pringle_p = &pringle;

static update_request_t requingle;
static update_request_t *requingle_p = &requingle;

static update_response_t respingle;
static update_response_t *respingle_p = &respingle;

// Send UART0 stuff to UART 1
void handler_func0(void *CallBackRef, u32 Event, unsigned int EventData){

	u8 byte[sizeof(ping_t)];
	u8 update_byte[sizeof(update_response_t)];

	if (mode == CONFIGURE){
		if (Event == XUARTPS_EVENT_RECV_DATA){
			XUartPs_Recv(&uart0, &buffer, 1);
			XUartPs_Send(&uart1, &buffer, 1);
		}
	}
	else if (mode == PING){
		if (Event == XUARTPS_EVENT_RECV_DATA){
			XUartPs_Recv(&uart0, &buffer, 1);
			byte[count] = buffer;
			if (count == 7){
				int num = byte[4] + byte[5] + byte[6] + byte[7];
				printf("%d\n", num);
				count = 0;
			}
			else{
				count += 1;
			}
		}
	}
	else if (mode == UPDATE){
		if (Event == XUARTPS_EVENT_RECV_DATA){
			XUartPs_Recv(&uart0, &buffer, 1);
			update_byte[count] = buffer;
			// Grabs id number
			if (count == 7){
				int id_num = update_byte[4] + update_byte[5] + update_byte[6] + update_byte[7];
				respingle.id = id_num;
				count += 1;
			}
			// Grabs average value
			else if (count == 11){
				int average_num = update_byte[8] + update_byte[9] + update_byte[10] + update_byte[11];
				respingle.average = average_num;
				count += 1;
			}
			// Grabs value
			else if (count == 52){
				printf("Value: %d\n", update_byte[count]);
				train_value = update_byte[count];
				count += 1;
			}
			else if (count == sizeof(update_response_t)-1){
				count = 0;
				printf("Update: %d %d\n", respingle.id, respingle.average);
			}
			else{
				count += 1;
			}
		}
	}
}

// Deals with sending to and receiving from output
void handler_func1(void *CallBackRef, u32 Event, unsigned int EventData){

	u8 newLine = (u8)'\n';
	char number[100];

	if (mode == CONFIGURE){
		if (Event == XUARTPS_EVENT_RECV_DATA){
			XUartPs_Recv(&uart1, &buffer, 1);
			XUartPs_Send(&uart0, &buffer, 1);
			if (buffer == 13){
				XUartPs_Send(&uart1, &newLine, 1);
			}
		}
	}
	else if (mode == UPDATE){
		if (Event == XUARTPS_EVENT_RECV_DATA){
			XUartPs_Recv(&uart1, &buffer, 1);
//			char buffer_character = buffer;
//			if (buffer != 13){
//				str[buffer_count] = buffer_character;
//				buffer_count += 1;
//			}
//			else {
//				memcpy(number, str, buffer_count);
//				number[buffer_count] = '\0';

//				int request_value = atoi(number);
//			float pot = adc_get_pot()*100;
//			requingle.value = (int)pot;
//			XUartPs_Send(&uart0, (u8 *)requingle_p, sizeof(update_request_t));
//			buffer_count = 0;
//			if (request_value >= 0 && request_value <= 100){
//				dutycycle = (HIGH-LOW)*(pot/100) + LOW;
//				servo_set(dutycycle);
//			}

		}
	}
}

void wifi_init(){

    /* configuring UART 0 */
    XUartPs_Config *config0 = XUartPs_LookupConfig(XPAR_PS7_UART_0_DEVICE_ID);
    XUartPs_CfgInitialize(&uart0, config0, config0->BaseAddress);
    XUartPs_SetBaudRate(&uart0, 9600);
    XUartPs_SetFifoThreshold(&uart0, 1);
    XUartPs_SetInterruptMask(&uart0, XUARTPS_IXR_RXOVR);
    XUartPs_SetHandler(&uart0, (XUartPs_Handler)handler_func0, (void*)&uart0);

	/* configuring UART 1 */
    XUartPs_Config *config1 = XUartPs_LookupConfig(XPAR_PS7_UART_1_DEVICE_ID);
    XUartPs_CfgInitialize(&uart1, config1, config1->BaseAddress);
    XUartPs_SetFifoThreshold(&uart1, 1);
    XUartPs_SetInterruptMask(&uart1, XUARTPS_IXR_RXOVR);
    XUartPs_SetHandler(&uart1, (XUartPs_Handler)handler_func1, (void*)&uart1);

    gic_connect(XPAR_XUARTPS_0_INTR, (Xil_InterruptHandler)XUartPs_InterruptHandler, (void*)&uart0);
    gic_connect(XPAR_XUARTPS_1_INTR, (Xil_InterruptHandler)XUartPs_InterruptHandler, (void*)&uart1);

    // PING message
    pringle.type = PING;
    pringle.id = 10;

    // UPDATE send message
    requingle.type = UPDATE;
    requingle.id = 0;
    requingle.value = 420;

    // UPDATE receive message
    respingle.type = UPDATE;
    respingle.id = 10;

}

void send_ping(int mode_from_main){
	mode = mode_from_main;
	XUartPs_Send(&uart0, (u8 *)pringle_p, sizeof(ping_t));
}

int send_update(int mode_from_main){
	mode = mode_from_main;
	XUartPs_Send(&uart0, (u8 *)requingle_p, sizeof(update_request_t));
	return train_value;
}

void wifi_close(){

    XUartPs_DisableUart(&uart1);
    gic_disconnect(XPAR_XUARTPS_1_INTR);

}

