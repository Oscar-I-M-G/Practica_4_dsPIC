/*
 * OSCAR IVAN MORENO GUTIERREZ
 * PRACTICA_4_TAREA2
*/
#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/system/pins.h"
#include "mcc_generated_files/timer/tmr1.h"
/*
    Main application
*/

int main(void)
{
    SYSTEM_Initialize();
    TMR1_Start();

    while(1)
    {
        while(IFS0bits.T1IF == 1){
            LED1_Toggle();
            IFS0bits.T1IF = 0;
        }
        
        
        if(SW2_GetValue() == 0)
            LED2_Toggle();
    }    
}