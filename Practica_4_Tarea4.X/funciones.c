#include "mcc_generated_files/system/pins.h"

void iniciaEfecto1(void){
    LED1_SetHigh();
    LED2_SetLow();
}
void efecto1(void){
    LED1_Toggle();
    LED2_Toggle();
}