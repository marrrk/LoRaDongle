#include <stdio.h>
#include <generated/csr.h>

void isr(void){
	asm("nop");
}


int main(void){

//	rgbled_r_enable_write(1);



	while (1){
		//uint32_t btn = buttons_in_read();
		leds_out_write(buttons_in_read());

		//rgbled_r_width_write(0xff);
		//rgbled_r_period_write(0.5);
		
		if (buttons_in_read() == 0x1) {
			uart_rxtx_write('a');
		}


		if (buttons_in_read() == 0x2) {
			SPI_cs_write(0x0);
		}

		//leds_out_write(0x2);
		

		//printf("Hello World\n");
	}

	return 0;

}