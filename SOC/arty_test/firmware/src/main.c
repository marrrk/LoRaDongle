#include <generated/csr.h>
#include <libbase/console.h>
#include <libbase/uart.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <spi.h>
#include <led_test.h>
#include <sx126x.h>
#include "sx126x_hal.h"

// Sx126x user function Declarations
void RadioInit(void);
sx126x_status_t BufferReadWrite(void);
void ToggleAntSW(void);
void ToggleDio1(void);

//SX126x Context  Need a configuration function obviously
struct RadioConfig {
	//randoms taken from nucleo
	uint32_t rfFrequency;
    uint16_t irqTx;
    uint16_t irqRx;
    uint32_t txTimeout;
    uint32_t rxTimeout;
};
struct RadionConfig *context; 
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
	puts("test_message		- Sends more than one byte");
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
	else if (strcmp(token, "test_message") == 0) {
		uint16_t length = 4;
		//uint8_t message[4] = {0x50, 0x49, 0x4e, 0x47}; //P I N G in hex 
		uint8_t message[4] = {'P', 'I', 'N', 'G'}; 
		if (!tx_message(length, message))
			printf("Successful\n");
		else
			printf("Error Received\n");
		
	}
		
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
	RadioInit();
	help();
	prompt();
	

	while (1){
		console_service();
		//uint32_t btn = buttons_in_read();
		leds_out_write(buttons_in_read());
		
		if (buttons_in_read() == 0x1) {
			uint16_t length = 4;
			//uint8_t message[4] = {0x50, 0x49, 0x4e, 0x47}; //P I N G in hex 
			uint8_t message[4] = {'P', 'I', 'N', 'G'}; 
			if (!tx_message(length, message))
				printf("Successful\n");
			else
				printf("Error Received\n");
			
			prompt();
			msleep(500);
			
		}


		if (buttons_in_read() == 0x2) {		
			//BufferReadWrite();
			prompt();
			msleep(500);
		}

		if (buttons_in_read() == 0x4) {
			/** Testing the BUSY line, works if using GPIOIn class and not GPIOInOut, yet to figure out why
			printf("\nlora config in: 0x%lx\n",lora_busy_in_read());
			lora_config_out_write( lora_config_out_read() & ~(1 << 2) );  // set reset pin to 0
			msleep(50);
			if (lora_busy_in_read() == 0x1 )
				printf("Radio Busy!\n");
			printf("lora config in: 0x%lx\n",lora_busy_in_read());
			lora_config_out_write(lora_config_out_read() | (1 << 2) );     // set reset pin to 1
			**/

			prompt();
			msleep(500);
		}

		if (buttons_in_read() == 0x8) {
			test_loopback(0xA5);
			prompt();
			msleep(500);
		}
	}

	return 0;

}

// Sx126x Test Functions
void RadioInit(void){
	/*
		From Nucleo Code:
		calibration parameters #what is that? #TODO, only used with OPT apparently
		
		reset()
		
		irq init #TODO - initialises spi, sets busy as open drain pullnone (inverse logic), assigns dio1 callback
		looks like irq_init just initiliasises the pins. Busy for busy stuff, dio1 for dio stuff, and also spi obvi

		wakeup		//to implement in HAL functions
		
		setstandby(stdby rc)			# available in sx126x.c, standby rc is choice between xtal and rc13m (whatever that is)

		check if tcxo or xtal #N/A

		setPollingMode() //aookucaktion calls process irqs as opposed to driver automatically doing it.
		
		turn on antenna switch (set pin to high basically), always high except in sleep mode
		
		Set Dio2AsRfSwitchCtrl = true  # available in sx126x.c, tell radio to control rf switch

		operating mode = Mode_stby_rc # what is that?? #TODO basically a way for the mcu to know track what operating mode the radio is in
		setPacketType to lora # available in sx126x.c

		configure for public network/private network
	*/

	sx126x_reset(context);
	
	//sx126x_wakeup(context);
	//sx126x_set_standby(context, 0x00); # hard coded but can be used as a variable

	//sx126x_set_dio2_as_rf_sw_ctrl(context, true);  

	//sx126x_set_pkt_type(context, SX126X_PKT_TYPE_LORA);
}

sx126x_status_t BufferReadWrite(void){
	uint8_t offset = 0x2;
	uint8_t size = 4;
	uint8_t WriteMessage[4] = {'P', 'I', 'N', 'G'};
	uint8_t ReadMessage[4];

	uint8_t *pWrite = WriteMessage;
	uint8_t *pRead = ReadMessage;

	sx126x_read_buffer(context, offset, pRead, size);
	printf("The read data is: \n");
	
	for (uint8_t i = 0; i < size; i++) {
        printf("%x\n" ,*pRead++);      // Might bring an error because i'm point to a pointer
    }    

	printf("Writing New Buffer\n");

	sx126x_write_buffer(context, offset, pWrite, size);
	printf("Reading back data written\n");

	sx126x_read_buffer(context, offset, pRead, size);
	printf("The read data is: \n");
	
	for (uint8_t i = 0; i < size; i++) {
        printf("%x\n" , *pRead++);      
    }    

	return 0;
}



// these functions are temporarily here in case i need them, to turn on/off the pins
void ToggleAntSW(void){
	const uint8_t ANT_SW = 1;
	//lora_config_out_write(lora_config_out_read() | (1 << ANT_SW ) );  // setting to 1
	lora_config_out_write(lora_config_out_read() ^ (1 << ANT_SW ) );
}



void ToggleDio1(void){
	const uint8_t DIO1 = 0;
    //lora_config_out_write(lora_config_out_read() | (1 << DIO1) );  // setting to 1
	lora_config_out_write(lora_config_out_read() ^ (1 << DIO1 ) );

}