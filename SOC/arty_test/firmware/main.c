#include <stdio.h>
#include <generated/csr.h>
#include <time.h>

unsigned int ctrl;

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
			//uart_rxtx_write('a');
			//ctrl_reset_cpu_rst_write(0x1);
			ctrl_reset_soc_rst_write(0x1);
			msleep(1000);

		}


		//if (buttons_in_read() == 0x2) {
			//printf("MOSI Register: 0x%lx\n", SPI_mosi_read());
			//printf("MISO Register: 0x%lx\n", SPI_miso_read());
			//msleep(500);
			//SPI_mosi_write(0x11);
		//}

		if (buttons_in_read() == 0x4) {
			//printf("Contents of Status Register: %ld\n", SPI_status_done_read());
			//printf("Contents of Status Register: 0x%lx \n", SPI_status_done_read());
			printf("Raw reading of CS Register: %lx\n", SPI_cs_read());
			printf("CS Bit Reading            : %lx\n", SPI_cs_sel_read());
			printf("SPI Loopback Register Reading:  0x%lx\n", SPI_loopback_mode_read());
			msleep(1000);
		}

		if (buttons_in_read() == 0x8) {
			printf("Before Transmission: \n");
			
			printf("Contents of Control Register: %lx\n", SPI_control_read());
			//printf("Contents of Status Register: 0x%lx\n", SPI_status_done_read());
			
			ctrl = (8 << 8) | (1 << 0);
			//printf("THE VALUE OF CTRL IS: 0x%x\n" ,ctrl);
			
			
			printf("Starting transmission \n");
			//SPI_clk_divider_write(2);
			//SPI_control_length_write(8);
			SPI_loopback_write(1);
			//msleep(1000);
			SPI_mosi_write(0x3E);
			printf("Contents of MOSI:  0x%lx\n", SPI_mosi_read());
			//msleep(1000);
			SPI_cs_write(1);
			msleep(1000);
			SPI_control_write(ctrl);
			//msleep(1000);
			//SPI_control_start_write(0x1);
			//printf("Contents of Status Register: 0x%lx\n", SPI_status_done_read());
			//printf("after writing to mosi, contents of Status Register: 0x%lx\n", SPI_status_done_read());
			while (!SPI_status_read()); //wait for transmission to finish

			SPI_cs_write(0);

			printf("Contents of MISO Register: 0x%lx\n",SPI_miso_read());



			msleep(1000);
		}

		//printf("Hello World\n");
	}

	return 0;

}