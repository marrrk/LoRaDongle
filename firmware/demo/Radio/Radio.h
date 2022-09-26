#ifndef __RADIO_H
#define __RADIO_H

#ifdef __cplusplus
extern "C" {
#endif

/*
 * -----------------------------------------------------------------------------
 * --- DEPENDENCIES ------------------------------------------------------------
 */
#include <generated/csr.h>
#include <irq.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <dio1.h>
#include "sx126x.h"
#include "sx126x_hal.h"

#define BUFFER_SIZE                                     255        // Define the payload size here, change it for bandwidth testing?
#define RX_BUFFER_OFFSET								0x00		// will be used later
#define TX_BUFFER_OFFSER								0x80		// will be used later
//SX126x Context Stuff :)  Need a configuration function obviously


typedef struct{
	sx126x_pkt_type_t packetType;
	int8_t txPower;
	sx126x_ramp_time_t txRampTime;
	sx126x_mod_params_lora_t  modParams;
	sx126x_pkt_params_lora_t packetParams;
	uint32_t rfFrequency;
    uint16_t irqTx;
    uint16_t irqRx;
    uint32_t txTimeout;
    uint32_t rxTimeout;
}RadioConfig_t;


// Sx126x user function Declarations
void RadioInit(RadioConfig_t *config);
void SetConfiguration(RadioConfig_t *config);
void ConfigureGeneralRadio(RadioConfig_t *config);
void ConfigureTx(RadioConfig_t *config);
void ConfigureRx(RadioConfig_t *config);
void PrepareBuffer(RadioConfig_t *config, uint8_t size, uint8_t *message);
void set_to_transmit(RadioConfig_t *config);
void set_to_receive(RadioConfig_t *config);
void get_payload(RadioConfig_t *config, uint8_t size, uint8_t *message);

void transmit(RadioConfig_t *config, uint8_t size, uint8_t *message);
void receive(RadioConfig_t *config, uint8_t size, uint8_t *message);

void clear_buffer(RadioConfig_t *config);


void SetAntSW(void);
void ClearAntSW(void);
void ToggleAntSW(void);
void ToggleDio1(void);


#ifdef __cplusplus
}
#endif

#endif