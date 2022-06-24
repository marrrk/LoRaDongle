#ifndef __SPI_H
#define __SPI_H

#ifdef __cplusplus
extern "C" {
#endif


//function definitions and variables
/**
 * @brief Test functionality of the SPI core
 * 
 * @param test_value 
 */
void test_loopback(uint32_t test_value);


/**
 * @brief Wait for SPI Transfer to complete
 * 
 * @return uint32_t Status of completion
 */
uint32_t wait_tx_rx_done(void);

uint32_t tx_message(const uint8_t buffer_length, const uint8_t* buf);



#ifdef __cplusplus
}
#endif


#endif //__SPI_H