#ifndef __TIME_H
#define __TIME_H

#ifdef __cplusplus
extern "C" {
#endif
//Includes
#include <stdio.h>
#include <irq.h>



// variables
uint8_t timer1_loops;

//functions
void time_init(void);
void timer1_init(void);
void timer1_reset(void);
void timer1_isr(void);
void get_time_elapsed(void);
int elapsed(int *last_event, int period);
void msleep(int ms);

#ifdef __cplusplus
}
#endif

#endif /* __TIME_H */
