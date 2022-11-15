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


typedef enum {
	SLAVE,
	MASTER,
} dongle_mode_t;
dongle_mode_t mode = MASTER;

typedef enum {
	SEND,
	WAIT_SEND_DONE,
	LISTEN,
	READ_MESSAGE,
	ANALYSE_DATA,
} receive_states_t;
volatile receive_states_t state = LISTEN;

#define MESSAGE_SIZE  5
uint8_t send_message[MESSAGE_SIZE] = {"PING\0"};
uint8_t receive_message[MESSAGE_SIZE] = {};
uint8_t *send_message_ptr = send_message;
uint8_t *receive_message_ptr = receive_message;

uint8_t respond_message[MESSAGE_SIZE] = {"PONG"};
uint8_t *respond_message_ptr = respond_message;


// Function declarations
void flicker(void);
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

	//int count = 0;
	//uint8_t str_count[100];
	//uint8_t *str_count_ptr = str_count;
    time_init();
	timer1_init();
    uart_init();
	RadioInit(&context);
	//btn_init();
	console_service();

	SetConfiguration(&context);
	ConfigureGeneralRadio(&context);

    flicker();

    while (1) {
		if ((RadioFlags.in_tx == true) && (mode == MASTER) ) {
			state = SEND;
			RadioFlags.in_tx = false;
		}

		switch (state) {
			case SEND: {
				//printf("Size of message to send: %d\n", strlen((char *)send_message));
				leds_out_write(0b10);
				timer1_reset();
				if (mode == MASTER){
					PrepareBuffer(&context, strlen((char *)send_message), send_message_ptr);
					printf("Sending: %s\n", send_message);
				} else {
					PrepareBuffer(&context, strlen((char *)respond_message), respond_message_ptr);
					printf("Sending : %s\n", respond_message);
				}
				ConfigureTx(&context);
				set_to_transmit(&context);
				leds_out_write(0b00);
				state = WAIT_SEND_DONE;
				break;
			}

			case WAIT_SEND_DONE: {
				//printf("In state: WAIT_SEND_DONE\n");
				if (RadioFlags.txDone == true) {
					//printf("In state Done\n");
					printf("Time to send: ");
					get_time_elapsed();
					RadioFlags.txDone = false;
					RadioFlags.in_rx = false;
					state = LISTEN;
				}
				break;			
			}

			case LISTEN: {
				//printf("In state: Listen\n");
				//timer1_reset();
				if (RadioFlags.in_rx == true) {
					// check for a radio flag!
					if (RadioFlags.rxDone == true) {
						RadioFlags.rxDone = false;
						RadioFlags.in_rx = false;
						state = READ_MESSAGE;
						break;
					}
				} else {
					//printf("Configuring Listen\n");
					RadioFlags.in_rx = true;
					ConfigureRx(&context);
					set_to_receive(&context);
				}
				break;
			}

			case READ_MESSAGE: {
				//printf("In state: Read Message\n");
				leds_out_write(0b01);
				//get_payload(&context, 4, receive_message_ptr); //cause for error
				sx126x_read_buffer(&context, 0x00, receive_message_ptr, 4);
				//printf("Time to receive: ");
				//toc();
				printf("Time to receive: ");
				get_time_elapsed();
				state = ANALYSE_DATA;
				break;
			}

			case ANALYSE_DATA: {
				//printf("Message received: %s\n", receive_message);
				if (strncmp((const char *)send_message, (const char *)receive_message, 4) == 0){ //PING Message Received
					leds_out_write(0b00);
					printf("Message received: %s\n", receive_message);
					state = SEND;
				} else if ((strncmp((const char *)respond_message, (const char *)receive_message, 4) == 0)) { //Pong Message Received
					leds_out_write(0b00);
					printf("Message received: %s\n", receive_message);
					state = LISTEN;
				}
				break;
			}
		}



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

void ping_counter(void){
	receive(&context, MESSAGE_SIZE, receive_message_ptr);
	printf("%s\n", receive_message);
}