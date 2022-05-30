#include <generated/csr.h>
#include <stdio.h>
#include <time.h>
#include <spi.h>

int main(void){
	time_init();

	while (1){
		//uint32_t btn = buttons_in_read();
		leds_out_write(buttons_in_read());
		
		if (buttons_in_read() == 0x1) {
			//uart_rxtx_write('a');
			//ctrl_reset_cpu_rst_write(0x1);
			ctrl_reset_soc_rst_write(0x1);
			msleep(1000);

		}


		if (buttons_in_read() == 0x2) {		
			printf("MOSI Register: 0x%lx\n", SPI_mosi_read());
			msleep(10);
			printf("MISO Register: 0x%lx\n", SPI_miso_read());
			msleep(500);
			//SPI_mosi_write(0x11);
		}

		if (buttons_in_read() == 0x4) {
			//printf("Contents of Status Register: %ld\n", SPI_status_done_read());
			//printf("Contents of Status Register: 0x%lx \n", SPI_status_done_read());
			printf("Raw reading of CS Register: %lx\n", SPI_cs_read());
			printf("CS Bit Reading            : %lx\n", SPI_cs_sel_read());
			printf("SPI Loopback Register Reading:  0x%lx\n", SPI_loopback_mode_read());
			msleep(1000);
		}

		if (buttons_in_read() == 0x8) {
			test_loopback(0xA5);
		}
	}

	return 0;

}