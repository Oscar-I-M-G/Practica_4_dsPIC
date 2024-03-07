/*
 * OSCAR IVAN MORENO GUTIERREZ
 * PRACTICA_4_TAREA4
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
    iniciaEfecto1();
    while(1)
    {
        //checamos el flag  del timer
        while(IFS0bits.T1IF == 1){
            efecto1();
                //limpiamos flag
            IFS0bits.T1IF = 0;
                
        }
           
    }    
}
