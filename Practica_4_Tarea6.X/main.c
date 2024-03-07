/*
 * OSCAR IVAN MORENO GUTIERREZ
 * PRACTICA_4_TAREA5_2
*/
#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/system/pins.h"
#include "mcc_generated_files/timer/tmr1.h"
#include "funciones.h" // header de mis funciones
/*
    Main application
*/

int main(void)
{
    SYSTEM_Initialize();
    TMR1_Start();
    iniciaLEDS();
    bool queEfecto= true; //true efecto 1 false efecto 2
    while(1)
    {
        //checamos el flag  del timer
        while(IFS0bits.T1IF == 1){
            if (queEfecto){
                efecto1();
            }
            else{
                efecto2();
            }
            //limpiamos flag
            IFS0bits.T1IF = 0;
                
        }
        
        if(SW1_GetValue() == 0){
            //un debounce
            __delay_ms(100);
            if(SW1_GetValue() == 1)
                //intercalamos valor de queEfecto
                queEfecto = !queEfecto;
                //iniciamos LEDS otra vez
                iniciaLEDS();
        }
           
    }    
}
