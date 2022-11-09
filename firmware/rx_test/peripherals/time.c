#include <time.h>
#include <generated/csr.h>


#ifdef TIMER1_INTERRUPT
void timer1_init(void){
	int t;
	t = CONFIG_CLOCK_FREQUENCY; 		//period should be 1 seconds
	//printf("Timer reload value: %d\n", t);
	/** Initialising timer1, for timing functions
	 *  It is initialised in periodic mode in order to 
	 * 	time longer than the wrap-around value
	 *  **/
	timer1_en_write(0);
	timer1_load_write(0);
	timer1_reload_write(t);
	//timer1_load_write(t);
	timer1_en_write(1);
	
	// Enabling the interrupt
	timer1_ev_pending_write(timer1_ev_pending_read());
	timer1_ev_enable_write(1);
	irq_setmask(irq_getmask() | (1 << TIMER1_INTERRUPT));
	
	//Setting number of loops
	timer1_loops = 0;
}


void tic(void){
	// Disable Interrupt
	timer1_ev_pending_write(0);
	timer1_ev_enable_write(0);
	
	// Resetting timer and loop
	timer1_loops = 0;
	timer1_en_write(0);
	timer1_en_write(1);

	// Re-enable Interrupt
	timer1_ev_pending_write(timer1_ev_pending_read());
	timer1_ev_enable_write(1);
}


void timer1_isr(void){
	timer1_ev_pending_write(1);
	++timer1_loops;
	timer1_ev_enable_write(1);
}


void toc(void){
	if (timer1_loops > 0 ){
		timer1_update_value_write(1);
		uint32_t count_value = ((timer1_loops/2) * (CONFIG_CLOCK_FREQUENCY)) + (CONFIG_CLOCK_FREQUENCY - timer1_value_read()); //divide timer1_loops by two because ISR is called twice apparently
		printf("%ld\n", count_value);

	} else {
		timer1_update_value_write(1);
		uint32_t count_value = CONFIG_CLOCK_FREQUENCY - timer1_value_read();
		printf("%ld\n", count_value);

	}

}
#endif

void time_init(void)
{
	int t;
	t = 2 * CONFIG_CLOCK_FREQUENCY;

	/** Initialising timer0, for system functions **/
	timer0_en_write(0);
	timer0_reload_write(t);
	timer0_load_write(t);
	timer0_en_write(1);

	
}

int elapsed(int *last_event, int period)
{
	int t, dt;

	timer0_update_value_write(1);
	t = timer0_reload_read() - timer0_value_read();
	if(period < 0) {
		*last_event = t;
		return 1;
	}
	dt = t - *last_event;
	if(dt < 0)
		dt += timer0_reload_read();
	if((dt > period) || (dt < 0)) {
		*last_event = t;
		return 1;
	} else
		return 0;
}

void msleep(int ms)
{
	timer0_en_write(0);
	timer0_reload_write(0);
	timer0_load_write(CONFIG_CLOCK_FREQUENCY/1000*ms);
	timer0_en_write(1);
	timer0_update_value_write(1);
	while(timer0_value_read()) timer0_update_value_write(1);
}
