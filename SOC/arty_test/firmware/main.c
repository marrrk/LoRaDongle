#include <stdio.h>
#include <generated/csr.h>
#include <time.h>

void isr(void){
	asm("nop");
}


int main(void){

//	rgbled_r_enable_write(1);
	time_init();


	while (1){
		//uint32_t btn = buttons_in_read();
		leds_out_write(buttons_in_read());

		//rgbled_r_width_write(0xff);
		//rgbled_r_period_write(0.5);
		
		if (buttons_in_read() == 0x1) {
			msleep(1000);
			uart_rxtx_write('a');
		}


		if (buttons_in_read() == 0x2) {
			printf(SPI_mosi_read());
			msleep(500);
			SPI_mosi_write("0x11");
		}

		if (buttons_in_read() == 0x3) {
			printf(SPI_status_done_read());
			printf("%lx \n", SPI_status_done_read());
			msleep(1000);
		}
		//leds_out_write(0x2);
		

		//printf("Hello World\n");
	}

	return 0;

}