#include <generated/csr.h>
#include <time.h>

int main(void) {
    // time_init configures timer0 so we can use elapsed()
    time_init();
    uint32_t x = 0;
    uint32_t buf = 0;
    
    while (1) {
        // Write new LED output
        if (x == 2) x = 1;
        else x = 2;
        msleep(80);

        leds_out_write(x | buf << 2);
        uart_rxtx_write('a');
    }

    return 0;
}