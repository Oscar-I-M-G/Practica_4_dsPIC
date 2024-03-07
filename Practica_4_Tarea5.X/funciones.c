#include "mcc_generated_files/system/pins.h"

void iniciaLEDS(void){
    LED1_SetHigh();
    LED2_SetLow();
}
void apagaLEDS(void){
    LED1_SetLow();
    LED2_SetLow();
}
void efecto1(void){
    LED1_Toggle();
    LED2_Toggle();
}

void efecto2(void){
    static uint8_t contador;
    switch (contador){
        case 0:
            iniciaLEDS();
            contador ++;
            break;
        case 1:
            LED2_SetHigh();
            contador ++;
            break;
        case 2:
            LED2_SetLow();
            contador ++;
            break;
        default:
            apagaLEDS();
            contador = 0;
            break;
    }
    return contador;
}