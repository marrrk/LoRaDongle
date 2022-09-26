#include <generated/csr.h>
#include <stdio.h> // for printf functions
#include <irq.h>
#include <dio1.h>
#include <time.h>   // for timing functions


void dio1_init(void){
	irq_setmask(irq_getmask() | (1 << DIO1_INTERRUPT));
	dio1_ev_enable_write(1);}

void dio1_isr(void) {
    dio1_ev_pending_write(1);
    printf("DIO1 Interrupt!\n");

    dio1_ev_enable_write(1);
}