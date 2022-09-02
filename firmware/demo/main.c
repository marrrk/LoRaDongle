#include <generated/csr.h>
#include <time.h>
#include <libbase/console.h>
#include <irq.h>
#include <libbase/uart.h>
#include <stdio.h>
#include <string.h>
#include <spi.h>
#include "Radio.h"

#define UART_EV_TX 0x1
#define UART_EV_RX 0x2



RadioConfig_t context; 

#define MESSAGE_SIZE  BUFFER_SIZE
//uint8_t test_message[MESSAGE_SIZE] = {"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"};
uint8_t send_message[MESSAGE_SIZE] = {"PING"};
uint8_t receive_message[MESSAGE_SIZE] = {};
uint8_t *send_message_ptr = send_message;
uint8_t *receive_message_ptr = receive_message;

uint8_t respond_message[MESSAGE_SIZE] = {"PONG"};
uint8_t *respond_message_ptr = respond_message;

const uint8_t mode = 0;  // 0 for master, 1 for slave. used in ping pong test

// Function declarations
void flicker(void);
void PingPongTest(void);

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
    uart_init();
	RadioInit(&context);

    //help();
    //prompt();
    flicker();

	SetConfiguration(&context);
	ConfigureGeneralRadio(&context);
    while (1) {
        console_service();
		PingPongTest();
		printf("pingpong test\n");
		/**** Transmitting Test ****/
		//leds_out_write(0b10);
		//transmit(&context, sizeof(send_message) , send_message_ptr);
		//msleep(100);
		//leds_out_write(0b0);
		
		/***Receiving Test*****/
		//uint8_t message_length = strlen((const char*)send_message);
		//receive(&context, message_length, receive_message_ptr);
		//printf("Message received: %s\n",receive_message);


		msleep(1000);
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



void PingPongTest(void) {
	uint8_t message_length = strlen((const char*)send_message);

	if (mode == 0){
		leds_out_write(0b10);
		transmit(&context, sizeof(send_message) , send_message_ptr);
		msleep(100);
		leds_out_write(0b0);
		//if radio receives message, should be the dio irq what what
		while(strlen((const char*)receive_message) == 0){ //infinite loop, source of error
			receive(&context, message_length, receive_message_ptr);
			if (strcmp((const char*)receive_message, "PONG") == 0) {
				printf("Receive messaged succesfully\n");
			} else printf("Message received error\n");

		}
		msleep(500);
	} 
	else if (mode == 1) {
		receive(&context, message_length, receive_message_ptr);
		if (strcmp((const char*)receive_message, "PING") == 0){
			transmit(&context, sizeof(respond_message) , respond_message_ptr);
		}

	}
}