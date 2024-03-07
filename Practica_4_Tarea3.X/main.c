/*
 * OSCAR IVAN MORENO GUTIERREZ
 * PRACTICA_4_TAREA3
*/
#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/system/pins.h"
#include "mcc_generated_files/timer/tmr1.h"
#define FCY (4000000)       // FCY = FOSC/2 (no PLL)
#include <libpic30.h>
/*
    Main application
*/

int main(void)
{
    SYSTEM_Initialize();
    TMR1_Start();
    uint8_t counter = 0;
    uint8_t solidCounter = 0;
    while(1)
    {
        
        
        //while(IFS0bits.T1IF == 1){
        //    if(solidCounter >= 1 && IFS0bits.T1IF == 1){
        //        if (solidCounter > 0){
        //            IFS0bits.T1IF = 0;
        //        }
        //        if (solidCounter > 0){
        //            solidCounter --;
        //        }
        //    }
        //checamos el flag
            while(IFS0bits.T1IF == 1){
                //checamos si el solidCounter llega a cero
                if (solidCounter == 0) {
                    LED1_Toggle();
                    solidCounter = counter;
                    
                }
                // si counter esta arriba de 0 decrementamos el SolidCounter
                else if (counter > 0){
                    solidCounter --;
                }
                //limpiamos flag
                IFS0bits.T1IF = 0;
                
            }

        //checamos presion del boton
        if(SW1_GetValue() == 0){
            // un debounce 
            __delay_ms(100);
            
            if(SW1_GetValue() == 1){
            if(counter == 5){
                counter = 0;
                
            }else{
                counter ++;
            }
            // cada pulsasion del buton reasiganamos solidCounter
            solidCounter = counter;
            
            
            }   
        }
        
        if(SW2_GetValue() == 0){
            //un debounce
            __delay_ms(100);
            if(SW2_GetValue() == 1)
                LED2_Toggle();
        }
            
    }    
}