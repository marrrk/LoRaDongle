#include <generated/csr.h>
#include <time.h>

int main(void) {
    // time_init configures timer0 so we can use elapsed()
    time_init();
    
    while (1) {
        // Write new LED output
        leds_out_write(!leds_out_read());
        msleep(80);

        uart_rxtx_write('a');
    }
}