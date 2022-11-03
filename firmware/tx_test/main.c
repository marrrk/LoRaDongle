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
	SEND,
	WAIT_SEND_DONE,
	SLEEP
} receive_states_t;
volatile receive_states_t state = SEND;

#define MESSAGE_SIZE  BUFFER_SIZE
uint8_t send_message[MESSAGE_SIZE] = {"PING\0"};
uint8_t receive_message[MESSAGE_SIZE] = {};
uint8_t *send_message_ptr = send_message;
uint8_t *receive_message_ptr = receive_message;

uint8_t respond_message[MESSAGE_SIZE] = {"PONG"};
uint8_t *respond_message_ptr = respond_message;

const uint8_t mode = 1;  // 0 for master, 1 for slave. used in ping pong test

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
	time1_init();
    uart_init();
	RadioInit(&context);
	//btn_init();
	console_service();

	SetConfiguration(&context);
	ConfigureGeneralRadio(&context);

    flicker();

    while (1) {
		switch (state) {
			case SEND: {
				//printf("Size of message to send: %d\n", strlen((char *)send_message));
				leds_out_write(0b10);
				PrepareBuffer(&context, strlen((char *)send_message), send_message_ptr);
				ConfigureTx(&context);
				set_to_transmit(&context);
				leds_out_write(0b00);
				state = WAIT_SEND_DONE;
				break;
			}
			case WAIT_SEND_DONE: {
				if (RadioFlags.txDone == true) {
					//printf("In state Done\n");
					RadioFlags.txDone = false;
					state = SEND;
				}
				break;			
			}
			case SLEEP: {
					printf("In state sleep\n");
					msleep(1000);			//sleep is lasting as expected, seems like time it takes to respond is kinda 
					printf("Sleep stop\n");
					state = SEND;
					break;
			}	
		}


		/**** Transmitting Test ****/
		//sprintf(str_count, "%d", count++);
		//transmit(&context, sizeof(str_count) , str_count_ptr); //send sizeof message which is 255 as opposed to strlen. for some reason strlen causes issues
		//printf("%s\n", str_count);
		
		//transmit(&context, sizeof(send_message) , send_message_ptr); //send sizeof message which is 255 as opposed to strlen. for some reason strlen causes issues
		//testing out the sleep function
		

		



		/*if (elapsed(&last_event, (CONFIG_CLOCK_FREQUENCY * 0.5))){ //doesn't work for some reason
			led_value = leds_out_read();
			leds_out_write(led_value ^ 1);
		}*/

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
	//uint8_t message_length = strlen((const char*)send_message);
	//printf("%d\n",message_length);

	if (mode == 0){
		transmit(&context, sizeof(send_message) , send_message_ptr);
		//printf("Transmitting: %s\n", send_message);
		//ConfigureRx(&context);		

		//receive(&context, sizeof(send_message), receive_message_ptr);
		//clear_buffer(&context);
		if (strcmp((const char*)receive_message, "PONG") == 0) {
			printf("Received!: %s\n", receive_message);
		}
		//if (strlen((const char*)receive_message) == 0){ //infinite loop, source of error
		//	receive(&context, message_length, receive_message_ptr);
		//	if (strcmp((const char*)receive_message, "PONG") == 0) {
		//		printf("Received:   %s\n", receive_message);
			//} //else printf("Message received error\n");
		
	} 
	else if (mode == 1) {
		receive(&context, sizeof(send_message), receive_message_ptr);
		printf("%s\n", receive_message);
		if (strcmp((char*)receive_message, "PING") == 0){
			transmit(&context, sizeof(respond_message) , respond_message_ptr);
			clear_buffer(&context);
		}

	}

	msleep(1000);
}

void ping_counter(void){
	receive(&context, MESSAGE_SIZE, receive_message_ptr);
	printf("%s\n", receive_message);
}