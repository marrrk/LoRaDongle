#include <generated/csr.h>
#include <libbase/console.h>
#include <libbase/uart.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <spi.h>
#include <led_test.h>

/*
	Uart functions for interacting with Console
*/
static char *readstr(void)
{
	char c[2];
	static char s[64];
	static int ptr = 0;

	if(readchar_nonblock()) {
		c[0] = getchar();
		c[1] = 0;
		switch(c[0]) {
			case 0x7f:
			case 0x08:
				if(ptr > 0) {
					ptr--;
					fputs("\x08 \x08", stdout);
				}
				break;
			case 0x07:
				break;
			case '\r':
			case '\n':
				s[ptr] = 0x00;
				fputs("\n", stdout);
				ptr = 0;
				return s;
			default:
				if(ptr >= (sizeof(s) - 1))
					break;
				fputs(c, stdout);
				s[ptr] = c[0];
				ptr++;
				break;
		}
	}

	return NULL;
}

static char *get_token(char **str)
{
	char *c, *d;

	c = (char *)strchr(*str, ' ');
	if(c == NULL) {
		d = *str;
		*str = *str+strlen(*str);
		return d;
	}
	*c = 0;
	d = *str;
	*str = c+1;
	return d;
}

/* 
terminal like thing
*/
static void prompt(void) {
	printf("\e[92;1mArty-SoC-Test\e[0m> ");
}


/* 
	Console Commands
*/

static void reboot_cmd(void){
	ctrl_reset_soc_rst_write(0x1);
}


static void help(void) {
	puts("\nLoRaDongle Arty Test");
	puts("Available Commands:");
	puts("help			- Show this command");
	puts("reboot			- Reboots CPU");
	puts("spi_test		- SPI Loopback Test");
	puts("led_demo		- Flickers LEDs");
}

static void console_service(void) {
	char *str;
	char *token;

	str = readstr();
	if(str == NULL) return;
	token = get_token(&str);
	if(strcmp(token, "help") == 0)
		help();
	else if(strcmp(token, "reboot") == 0)
		reboot_cmd();
	else if (strcmp(token, "spi_test") == 0)
		test_loopback(0xe1);
	else if (strcmp(token, "led_demo") == 0)
		flicker();
#ifdef CSR_LEDS_BASE

#endif

	prompt();
}


/*
	Main Function
*/
int main(void){
	time_init();
	uart_init();
	help();
	prompt();

	while (1){
		console_service();
		//uint32_t btn = buttons_in_read();
		leds_out_write(buttons_in_read());
		
		if (buttons_in_read() == 0x1) {

		}


		if (buttons_in_read() == 0x2) {		

		}

		if (buttons_in_read() == 0x4) {

		}

		if (buttons_in_read() == 0x8) {
			test_loopback(0xA5);
			prompt();
			msleep(500);
		}
	}

	return 0;

}