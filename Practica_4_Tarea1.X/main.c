/*
 * OSCAR IVAN MORENO GUTIERREZ
 * PRACTICA_4_TAREA1
*/
#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/system/pins.h"
#define FCY (4000000) //FCY = FOSC/2 (no PLL))
#include <libpic30.h>
/*
    Main application
*/

int main(void)
{
    SYSTEM_Initialize();

    while(1)
    {
        __delay_ms(500);
        LED1_Toggle();
        
        
        if(SW2_GetValue() == 0)
            LED2_Toggle();
    }    
}