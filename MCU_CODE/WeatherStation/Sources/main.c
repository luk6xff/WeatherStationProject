/* ###################################################################
 **     Filename    : main.c
 **     Project     : WeatherStation
 **     Processor   : MKL46Z256VMC4
 **     Version     : Driver 01.01
 **     Compiler    : GNU C Compiler
 **     Date/Time   : 2014-08-13, 22:56, # CodeGen: 0
 **     Abstract    :
 **         Main module.
 **         This module contains user's application code.
 **     Settings    :
 **     Contents    :
 **         No public methods
 **
 ** ###################################################################*/
/*!
 ** @file main.c
 ** @version 01.01
 ** @brief
 **         Main module.
 **         This module contains user's application code.
 */
/*!
 **  @addtogroup main_module main module documentation
 **  @{
 */
/* MODULE main */

/* Including needed modules to compile this module/procedure */
#include "Cpu.h"
#include "Events.h"
#include "mqx_tasks.h"
#include "SegLCD1.h"
#include "USART0_DEBUG.h"
#include "I2C1.h"
#include "MQX1.h"
#include "SystemTimer1.h"
#include "WDog1.h"
#include "TU1.h"
#include "lcd/LCD.h"
/* Including shared modules, which are used for whole project */
#include "PE_Types.h"
#include "PE_Error.h"
#include "PE_Const.h"
#include "IO_Map.h"
#include <stdio.h>
/* User includes (#include below this line is not maintained by Processor Expert) */
#include "usb/usb_cdc.h"
#include "usb/usb_reg.h"


/*
 typedef struct {
 LDD_TDeviceData *handle;
 volatile uint8_t isSent;
 uint8_t rxChar;
 uint8_t (*rxPutFct)(uint8_t);
 } UART_Debug_Desc;

 static UART_Debug_Desc debugData;
 static const char* string ="TEST_EXAMPLE_FRDM46_KLZ_DEVELOPmentBoard\n";
 */

/*lint -save  -e970 Disable MISRA rule (6.3) checking. */
int main(void)
/*lint -restore Enable MISRA rule (6.3) checking. */
{
	/* Write your local variable definition here */

	/*** Processor Expert internal initialization. DON'T REMOVE THIS CODE!!! ***/
	PE_low_level_init();
	/*** End of Processor Expert internal initialization.                    ***/

	/* Write your code here */
//	debugData.handle= USART0_DEBUG_Init(&debugData);
//	USART0_DEBUG_SendBlock(debugData.handle, string, strlen(string));
	/*
	 int i = 0xFFFFF;
	 SIM_SCGC4;
	 for (;;) {
	 //	USART0_DEBUG_SendBlock(debugData.handle, string, strlen(string));
	 vfnLCD_Write_Char('H');
	 while (--i)
	 ;
	 i = 0xFFFFF;
	 vfnLCD_Write_Char('E');
	 while (--i)
	 ;
	 i = 0xFFFFF;
	 vfnLCD_Write_Char('L');
	 while (--i)
	 ;
	 i = 0xFFFFF;
	 vfnLCD_Write_Msg("  ");  // TURN ON all characters
	 vfnLCD_Home();

	 while (--i)
	 ;
	 vfnLCD_Write_Char('0');
	 i = 0xFFFFF;
	 while (--i)
	 ;
	 i = 0xFFFFF;
	 vfnLCD_Home();
	 }
	 */
	/*** Don't write any code pass this line, or it will be deleted during code generation. ***/
  /*** RTOS startup code. Macro PEX_RTOS_START is defined by the RTOS component. DON'T MODIFY THIS CODE!!! ***/
  #ifdef PEX_RTOS_START
    PEX_RTOS_START();                  /* Startup of the selected RTOS. Macro is defined by the RTOS component. */
  #endif
  /*** End of RTOS startup code.  ***/
  /*** Processor Expert end of main routine. DON'T MODIFY THIS CODE!!! ***/
  for(;;){}
  /*** Processor Expert end of main routine. DON'T WRITE CODE BELOW!!! ***/

}