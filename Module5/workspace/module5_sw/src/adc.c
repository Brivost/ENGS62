#include "adc.h"

XAdcPs adc;

/*
 * initialize the adc module
 */
void adc_init(void) {
	// Set up XADC
	XAdcPs_Config *config = XAdcPs_LookupConfig(XPAR_XADCPS_0_DEVICE_ID);
	XAdcPs_CfgInitialize(&adc, config, config->BaseAddress);
	XAdcPs_SetSequencerMode(&adc, XADCPS_SEQ_MODE_SAFE);
	XAdcPs_SetAlarmEnables(&adc, 0);
	XAdcPs_SetSeqChEnables(&adc, XADCPS_SEQ_CH_VCCINT | XADCPS_SEQ_CH_TEMP | XADCPS_SEQ_CH_AUX14);
	XAdcPs_SetSequencerMode(&adc, XADCPS_SEQ_MODE_CONTINPASS);
}

/*
 * get the internal temperature in degree's centigrade
 */
float adc_get_temp(void){
	 float temp = XAdcPs_RawToTemperature(XAdcPs_GetAdcData(&adc, XADCPS_CH_TEMP));
	 return temp;
	 printf("[Temp=%.2fc]\n>", temp);
}

/*
 * get the internal vcc voltage (should be ~1.0v)
 */
float adc_get_vccint(void){
	 float voltage = XAdcPs_RawToVoltage(XAdcPs_GetAdcData(&adc, XADCPS_CH_VCCINT));
	 return voltage;
}

/*
 * get the **corrected** potentiometer voltage (should be between 0 and 1v)
 */
float adc_get_pot(void){
	float pot = (XAdcPs_RawToVoltage(XAdcPs_GetAdcData(&adc, XADCPS_CH_AUX_MAX-1)))/2.94;
	return pot;
}
