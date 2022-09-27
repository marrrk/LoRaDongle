#include <generated/csr.h>
#include <stdio.h> // for printf functions
#include <irq.h>
#include <dio1.h>
#include <time.h>   // for timing functions
#include <sx126x.h>
#include <Radio.h>


void dio1_init(void){
	irq_setmask(irq_getmask() | (1 << DIO1_INTERRUPT));
	dio1_ev_enable_write(1);}

void dio1_isr(void) {
    dio1_ev_pending_write(1);
    printf("DIO1 Interrupt!\n");
    /** Want to clear interrupt in the LoRa radio
     *  Read the IRQ status register of the lora radio and call required function.
     *  Required function should clear the IRQ thing.
    **/
    //for now just read and clear.
    get_radio_irq_status();

    dio1_ev_enable_write(1);
}