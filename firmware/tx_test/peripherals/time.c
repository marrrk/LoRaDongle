#include <generated/csr.h>
#include <stdio.h>
#include <time.h>
#include <irq.h>

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

void time1_init(void){
	int t;
	t = CONFIG_CLOCK_FREQUENCY;

	/** Initialising timer1, for timing functions
	 *  It is initialised in periodic mode in order to 
	 * 	time longer than usual things
	 *  **/
	timer1_en_write(0);
	timer1_load_write(0);
	timer1_reload_write(t);
	timer1_en_write(1);
	
	// Enabling the interrupt
	timer1_ev_pending_write(timer1_ev_pending_read());
	timer1_ev_enable_write(1);
	irq_setmask(irq_getmask() | (1 << TIMER1_INTERRUPT));
}


void timer1_isr(void){
	timer1_ev_pending_write(1);
	//printf("Timer has elapsed!\n");
	timer1_ev_enable_write(1);
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
