#include <generated/csr.h>
#include <time.h>
#include <libbase/console.h>
#include <irq.h>
#include <libbase/uart.h>
#include <stdio.h>
#include <string.h>
#include <spi.h>
#include "Radio.h"
#include <btn.h>


#define MESSAGE_SIZE  BUFFER_SIZE
uint8_t send_message[MESSAGE_SIZE] = {"PING"};
uint8_t receive_message[MESSAGE_SIZE] = {};
uint8_t *send_message_ptr = send_message;
uint8_t *receive_message_ptr = receive_message;

uint8_t respond_message[MESSAGE_SIZE] = {"PONG"};
uint8_t *respond_message_ptr = respond_message;

// Function declarations
void flicker(void);
void PingPongTest(void);
void ping_counter(void);

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
	printf("\e[92;1mLoRaDongle-SoC\e[0m> ");
}


/* 
	Console Commands
*/

static void reboot_cmd(void){
	ctrl_reset_soc_rst_write(0x1);
}


static void help(void) {
	puts("\nLoRaDongle SOC Test");
	puts("Available Commands:");
	puts("help			- Show this command");
	puts("reboot			- Reboots CPU");
	puts("spi_test		- SPI Loopback Test");
	puts("led_demo		- Flickers LEDs");
	puts("getmask			- prints irq mask");
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
    else if (strcmp(token, "led_demo") == 0)
		flicker();
	else if (strcmp(token, "spi_test") == 0)
		test_loopback(0xa5);
	else if (strcmp(token,"getmask") == 0) {
		printf("IRQ Mask Value: %d\n", irq_getmask());
		printf("The value of btn_ev_enable is: %lx\n", btn_ev_enable_read());
		printf("The value of btn_mode is :    %lx\n", btn_mode_read());
		printf("The value of btn_edge is:     %lx\n", btn_edge_read());
		printf("The value of btn_ev_status is:   %lx\n", btn_ev_status_read());
		printf("The value of btn_ev_pending is:   %lx\n", btn_ev_pending_read());
	}

#ifdef CSR_LEDS_BASE

#endif

	prompt();
}


int main(void) {
	#ifdef CONFIG_CPU_HAS_INTERRUPT
		irq_setmask(0);
		irq_setie(1);
	#endif

    time_init();
	//time1_init();
    uart_init();
	btn_init();
    help();
    prompt();
	console_service();


    flicker();
    while (1) {
        console_service();
		//msleep(500);
    }

    return 0;
}


// Flickers the two tx and Rx LEDs
void flicker(void) {
        uint32_t x = 0;
        uint32_t buf = 0;
        // Write new LED output
        for(int i = 0; i<10; i++) {
            if (x == 2) x = 1;
            else x = 2;
            msleep(80);

            leds_out_write(x | buf << 2);
        }
        leds_out_write(0);
}
