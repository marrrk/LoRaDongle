
#include "Radio.h"

// Radio Settings
#define RX_TIMEOUT_US 200000

/* Set this flag to '1' to use the LoRa modulation or to '0' to use FSK modulation */
#define USE_MODEM_LORA  1
#define USE_MODEM_FSK   !USE_MODEM_LORA
 
#define RF_FREQUENCY                                    869524963 // hz // 868000000 // Hz
#define TX_OUTPUT_POWER                                 14        // 14 dBm
 
#if USE_MODEM_LORA == 1
 
    #define LORA_BANDWIDTH                              SX126X_LORA_BW_125         // [0: 125 kHz,
                                                                  					//  1: 250 kHz,
                                                                 				 //  2: 500 kHz,
                                                                				  //  3: Reserved]
    #define LORA_SPREADING_FACTOR                       SX126X_LORA_SF7         // [SF7..SF12]
    #define LORA_LOWDATARATEOPTIMIZE                    0
    #define LORA_CODINGRATE                             SX126X_LORA_CR_4_6         // [1: 4/5,
																					//  2: 4/6,
																					//  3: 4/7,
																					//  4: 4/8]
    #define LORA_PREAMBLE_LENGTH                        8         // Same for Tx and Rx
    #define LORA_SYMBOL_TIMEOUT                         5         // Symbols
    #define LORA_HEADER_TYPE                            SX126X_LORA_PKT_EXPLICIT
    #define LORA_FHSS_ENABLED                           false  
    #define LORA_NB_SYMB_HOP                            4     
    #define LORA_IQ                                     false  //LORA_IQ_NORMAL
    #define LORA_CRC_MODE                               false  //LORA_CRC_OFF

#endif

#define RX_TIMEOUT_VALUE                                3500      // in ms
#define BUFFER_SIZE                                     64        // Define the payload size here




// Sx126x Test Functions
void RadioInit(RadioConfig_t *config){
	/*
		From Nucleo Code:
		calibration parameters #what is that? #TODO, only used with OPT apparently
		
		reset()
		
		irq init #TODO - initialises spi, sets busy as open drain pullnone (inverse logic), assigns dio1 callback
		looks like irq_init just initiliasises the pins. Busy for busy stuff, dio1 for dio stuff, and also spi obvi
RX_TIMEOUT_US

		setPollingMode() //aookucaktion calls process irqs as opposed to driver automatically doing it.
		
		turn on antenna switch (set pin to high basically), always high except in sleep mode
		this is the use in the other switch though not mine. mine i'd need to set it 1 or 0 in order to choose the rf path to follow :)
		
		Set Dio2AsRfSwitchCtrl = true  # available in sx126x.c, tell radio to control rf switch

		operating mode = Mode_stby_rc # what is that?? #TODO basically a way for the mcu to know track what operating mode the radio is in
		setPacketType to lora # available in sx126x.c

		configure for public network/private network
	*/

	sx126x_reset(config);
	
	sx126x_wakeup(config);
	sx126x_set_standby(config, 0x00); // hard coded but can be used as a variable

	SetAntSW();
	sx126x_set_dio2_as_rf_sw_ctrl(config, true);  

	sx126x_set_pkt_type(config, SX126X_PKT_TYPE_LORA);
}

void SetConfiguration(RadioConfig_t *config){
	config->irqRx = SX126X_IRQ_RX_DONE | SX126X_IRQ_TIMEOUT;
    config->irqTx = SX126X_IRQ_TX_DONE | SX126X_IRQ_TIMEOUT;
    config->rfFrequency = RF_FREQUENCY;
    config->txTimeout = 0;
    config->rxTimeout = (uint32_t)(RX_TIMEOUT_US / 15.625);
    config->txPower = TX_OUTPUT_POWER;
    config->txRampTime = SX126X_RAMP_200_US;
	#if USE_MODEM_LORA == 1
        config->packetType = SX126X_PKT_TYPE_LORA;
        config->modParams.bw = LORA_BANDWIDTH;
        config->modParams.cr = LORA_CODINGRATE;
        config->modParams.ldro = LORA_LOWDATARATEOPTIMIZE;
        config->modParams.sf = LORA_SPREADING_FACTOR;
        config->packetParams.crc_is_on = LORA_CRC_MODE; //might be cause for error
        config->packetParams.header_type = LORA_HEADER_TYPE;
        config->packetParams.invert_iq_is_on = LORA_IQ; // might be cause for error
        config->packetParams.pld_len_in_bytes = BUFFER_SIZE;
        config->packetParams.preamble_len_in_symb = LORA_PREAMBLE_LENGTH;
	#endif
}


void ConfigureGeneralRadio(RadioConfig_t *config){
	sx126x_set_pkt_type(config, config->packetType);
	sx126x_set_lora_pkt_params(config, &config->packetParams);
	sx126x_set_lora_mod_params(config, &config->modParams);
	sx126x_set_rf_freq(config, config->rfFrequency);
	sx126x_set_tx_params(config, config->txPower, config->txRampTime);
	// set interrupt mode
}

void ConfigureTx(RadioConfig_t *config){
	sx126x_set_dio_irq_params(config, config->irqTx, config->irqTx, SX126X_IRQ_NONE, SX126X_IRQ_NONE);
}

void ConfigureRx(RadioConfig_t *config){
	sx126x_set_dio_irq_params(config, config->irqRx, config->irqRx, SX126X_IRQ_NONE, SX126X_IRQ_NONE);
}

void PrepareBuffer(RadioConfig_t *context){
	uint8_t offset = 0x0;
	uint8_t size = 4;
	uint8_t WriteMessage[4] = {'P', 'I', 'N', 'G'};
	uint8_t *pWrite = WriteMessage;

	sx126x_write_buffer(&context, offset, pWrite, size);

}

void transmit(RadioConfig_t *config){
	//set fs first?
	sx126x_set_tx(config, config->txTimeout);
}

void receive(RadioConfig_t *config){
	sx126x_set_rx(config, config->rxTimeout);
}

void get_payload(RadioConfig_t *config){
	uint8_t ReadMessage[4];
	uint8_t *pRead = ReadMessage;

	sx126x_rx_buffer_status_t buf_status;
	sx126x_get_rx_buffer_status(config, &buf_status);
	sx126x_read_buffer(config, buf_status.buffer_start_pointer, pRead, buf_status.pld_len_in_bytes);

	printf("The read data is: \n");
	
	for (uint8_t i = 0; i < 4; i++) {
        printf("%c\n" ,*pRead++);      // Might bring an error because i'm point to a pointer
    }   

	// clearing buffer because received message stays in buffer
	uint8_t clear_message[1] = {""};
	uint8_t *pWrite = clear_message;

	sx126x_write_buffer(config, buf_status.buffer_start_pointer, pWrite, buf_status.pld_len_in_bytes);

}

/*
sx126x_status_t BufferReadWrite(void){
	uint8_t offset = 0x2;
	uint8_t size = 4;
	uint8_t WriteMessage[4] = {'P', 'I', 'N', 'G'};
	uint8_t ReadMessage[4];

	uint8_t *pWrite = WriteMessage;
	uint8_t *pRead = ReadMessage;

	sx126x_read_buffer(&context, offset, pRead, size);
	printf("The read data is: \n");
	
	for (uint8_t i = 0; i < size; i++) {
        printf("%x\n" ,*pRead++);      // Might bring an error because i'm point to a pointer
    }    

	printf("Writing New Buffer\n");

	sx126x_write_buffer(&context, offset, pWrite, size);
	printf("Reading back data written\n");

	sx126x_read_buffer(&context, offset, pRead, size);
	printf("The read data is: \n");
	
	for (uint8_t i = 0; i < size; i++) {
        printf("%x\n" , *pRead++);      
    }    

	return 0;
}
*/


// these functions are temporarily here in case i need them, to turn on/off the pins
void ToggleAntSW(void){
	const uint8_t ANT_SW = 1;
	//lora_config_out_write(lora_config_out_read() | (1 << ANT_SW ) );  // setting to 1
	lora_config_out_write(lora_config_out_read() ^ (1 << ANT_SW ) );
}

void SetAntSW(void){
	const uint8_t ANT_SW = 1;
	lora_config_out_write(lora_config_out_read() | (1 << ANT_SW ) );  // setting to 1
}


void ToggleDio1(void){
	const uint8_t DIO1 = 0;
    //lora_config_out_write(lora_config_out_read() | (1 << DIO1) );  // setting to 1
	lora_config_out_write(lora_config_out_read() ^ (1 << DIO1 ) );

}