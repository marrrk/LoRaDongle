#include <generated/csr.h>
#include <stdint.h>
#include <stdbool.h>
#include <sx126x_hal.h>
#include <spi.h>
#include <time.h>


/**
 *      Goal is to have spi_driver functions that will write bytes at a time. 
 *      These functions I think should break up the message byte by byte and use spi 
 *      class to send the message. SPI class takes in message and 
 */

sx126x_hal_status_t sx126x_hal_write( const void* context, const uint8_t* command, const uint16_t command_length, const uint8_t* data, const uint16_t data_length ) {
    sx126x_hal_status_t status = 1; //update to remove the 1
    
    // Setting Command and Message Information
    //uint32_t ctrl = ((command_length + data_length) << 8) | (1 << 0);

    //SPI_control_write(ctrl); // set message length and start transmission

    SPI_control_length_write(8);
    SPI_cs_mode_write(1);    
    SPI_cs_sel_write(1);
    msleep(0.5);
    
    for (uint16_t i; i<command_length; i++) {
        SPI_mosi_write((uint32_t)*command++);
        SPI_control_start_write(0x1);;
        msleep(0.5);
    }

    for (uint16_t i; i<data_length; i++){
        SPI_mosi_write((uint32_t)*data++);
        SPI_control_start_write(0x1);;
        msleep(0.5);
    }

    SPI_cs_sel_write(0);

    status = (sx126x_hal_status_t) wait_tx_rx_done();

    return status;
}