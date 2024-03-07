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
    static uint8_t contador = 0;
    switch (contador){
        case 0:
            //iniciaLEDS();
            // asigna 1 al regristro e0 sin afectar los demas bits
            LATE |= (1 << 0);
            // asigna 0 al registro e1 sin afectar los demas bits
            //LATE &=~(1 << 1);
            contador ++;
            break;
        case 1:
            //LED2_SetHigh();
            LATE |= (1 << 1);
            contador ++;
            break;
        case 2:
            //LED2_SetLow();
            LATE &=~ (1 << 1);
            contador ++;
            break;
        default:
            //apagaLEDS();
            LATE &=~(1 << 0);
            contador = 0;
            break;
    }
}