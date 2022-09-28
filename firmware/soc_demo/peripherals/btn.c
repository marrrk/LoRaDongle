#include <generated/csr.h>
#include <stdio.h> // for printf functions
#include <irq.h>
#include <btn.h>
#include <time.h>   // for timing functions


void btn_init(void){
    unsigned int mask; //can be done in one line, look at UART stuff
    mask = irq_getmask();
    mask |= 1 << BTN_INTERRUPT;

    irq_setmask(mask);

    btn_ev_enable_write(1);
}

void btn_isr(void) {
    btn_ev_pending_write(1);
    printf("Button Pressed!\n");

    btn_ev_enable_write(1);
}