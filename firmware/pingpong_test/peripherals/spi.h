#ifndef __SPI_H
#define __SPI_H

#ifdef __cplusplus
extern "C" {
#endif

//function definitions and variables
void test_loopback(uint32_t test_value);
uint32_t wait_tx_rx_done(void);

#ifdef __cplusplus
}
#endif


#endif //__SPI_H