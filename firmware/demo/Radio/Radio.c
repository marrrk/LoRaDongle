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





// Sx126x Test Functions
void RadioInit(RadioConfig_t *config){
	/*
		calibration parameters #what is that? #TODO, only used with OPT apparently
		
		reset()
		
		irq init #TODO - initialises spi, sets busy as open drain pullnone (inverse logic), assigns dio1 callback
		looks like irq_init just initiliasises the pins. Busy for busy stuff, dio1 for dio stuff, and also spi obvi

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
	sx126x_set_standby(config, SX126X_STANDBY_CFG_RC);

	ClearAntSW();
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
        config->packetParams.crc_is_on = LORA_CRC_MODE;
        config->packetParams.header_type = LORA_HEADER_TYPE;
        config->packetParams.invert_iq_is_on = LORA_IQ;
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

void PrepareBuffer(RadioConfig_t *context, uint8_t size , uint8_t *message){
	uint8_t offset = 0x0;
	//uint8_t size = 4;
	//uint8_t WriteMessage[4] = {'P', 'I', 'N', 'G'};
	//uint8_t *pWrite = WriteMessage;

	sx126x_write_buffer(&context, offset, message, size);

}

void set_to_transmit(RadioConfig_t *config){
	//set fs first?
    ClearAntSW();
	sx126x_set_tx(config, config->txTimeout);
}


void set_to_receive(RadioConfig_t *config){
    SetAntSW();
	sx126x_set_rx(config, config->rxTimeout);
}




void get_payload(RadioConfig_t *config, uint8_t size, uint8_t *message){
	//uint8_t ReadMessage[BUFFER_SIZE];
	//uint8_t *pRead = ReadMessage;
	//int16_t rssi;
	sx126x_rx_buffer_status_t buf_status;
	sx126x_get_rx_buffer_status(config, &buf_status);
	if (buf_status.pld_len_in_bytes > 0) {
		sx126x_read_buffer(config, buf_status.buffer_start_pointer, message, buf_status.pld_len_in_bytes);

		//sx126x_get_rssi_inst(config, &rssi);
		//printf("Buffer start pointer: %d\n", buf_status.buffer_start_pointer);
		//printf("The payload length is %d and data read is : \n", buf_status.pld_len_in_bytes);
		
		//for (uint8_t i = 0; i < size; i++) {
		//	printf("%c" ,*pRead++);      // Might bring an error because i'm point to a pointer
		//}   

		//printf("\nRSSI: %d\n", rssi);

	} //else {printf("Nothing Received\n");}
	// clearing buffer because received message stays in buffer
	// don't need to clear buffer, just need to wait for rxTimeout has been reached then can do something else. probably done earlier
	uint8_t clear_message[BUFFER_SIZE] = {""};
	uint8_t *pWrite = clear_message;

	sx126x_write_buffer(config, buf_status.buffer_start_pointer, pWrite, buf_status.pld_len_in_bytes);

}


//might want to take in a message length so not to send a random amount of messages?
void transmit(RadioConfig_t *config, uint8_t size, uint8_t *message){
		PrepareBuffer(config, size, message);
		ConfigureTx(config);
		set_to_transmit(config);
}


// For future: this should act like the transmit message and take in a pointer to where to store received message. 
//then passed to get_payload for obvious reasons, that way get_payload doesn't need to initialize any nonsense of its own
void receive(RadioConfig_t *config, uint8_t size, uint8_t *message){
		ConfigureRx(config);
		set_to_receive(config);
		get_payload(config, size, message);
}


// Turn On/Off pins that interact with the RF Circuit, SX1261 Radio
void ToggleAntSW(void){
	const uint8_t ANT_SW = 1;
	//lora_config_out_write(lora_config_out_read() | (1 << ANT_SW ) );  // setting to 1
	lora_config_out_write(lora_config_out_read() ^ (1 << ANT_SW ) );
}

void SetAntSW(void){
	const uint8_t ANT_SW = 1;
	lora_config_out_write(lora_config_out_read() | (1 << ANT_SW ) );  // setting to 1
}

void ClearAntSW(void){
	const uint8_t ANT_SW = 1;
	lora_config_out_write( lora_config_out_read() & ~(1 << ANT_SW) );  // set reset pin to 0

}

void ToggleDio1(void){
	const uint8_t DIO1 = 0;
    //lora_config_out_write(lora_config_out_read() | (1 << DIO1) );  // setting to 1
	lora_config_out_write(lora_config_out_read() ^ (1 << DIO1 ) );

}

