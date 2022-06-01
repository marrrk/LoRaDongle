#include <generated/csr.h>
#include <stdio.h> // for printf functions
#include <spi.h>
#include <time.h>   // for timing functions

void test_loopback(uint32_t test_value) {
    //printf("Before Transmission: \n");
    //printf("Contents of Control Register: %lx\n", SPI_control_read());
    //printf("Contents of Status Register: 0x%lx\n", SPI_status_done_read());
    
    unsigned int ctrl = (8 << 8) | (1 << 0);  // Value to write in the Control Register, 
    //printf("THE VALUE OF CTRL IS: 0x%x\n" ,ctrl);
    
    //printf("Starting transmission \n");

    SPI_loopback_write(1); // Enable Loopback test
    msleep(10);
    
    SPI_mosi_write(test_value);     // Write value to MOSI Register
    msleep(10);
    //printf("Contents of MOSI:  0x%lx\n", SPI_mosi_read());

    SPI_control_write(ctrl); // set message length and start transmission

    //SPI_control_start_write(0x1);
    //printf("Contents of Status Register: 0x%lx\n", SPI_status_done_read());
    //printf("after writing to mosi, contents of Status Register: 0x%lx\n", SPI_status_done_read());

    while (!SPI_status_read()); //wait for transmission to finish

    printf("MISO: 0x%lx\n",SPI_miso_read()); // check if transmission has been successful

}
