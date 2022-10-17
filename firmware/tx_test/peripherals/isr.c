// This file is Copyright (c) 2013-2014 Sebastien Bourdeauducq <sb@m-labs.hk>
// This file is Copyright (c) 2019 Gabriel L. Somlo <gsomlo@gmail.com>
// This file is Copyright (c) 2020 Raptor Engineering, LLC <sales@raptorengineering.com>
// License: BSD


#include <generated/csr.h>
#include <generated/soc.h>
#include <irq.h>
#include <libbase/uart.h>
#include <stdio.h>
#include "btn.h"
#include "isr.h"
#include "time.h"
#include "dio1.h"

void isr(void)
{
	__attribute__((unused)) unsigned int irqs;

	irqs = irq_pending() & irq_getmask();

#ifdef CSR_UART_BASE
#ifndef UART_POLLING
	if(irqs & (1 << UART_INTERRUPT)){
		uart_isr();
	}
#endif
#endif

#ifdef CSR_BTN_BASE
#ifdef BTN_INTERRUPT
    if (irqs & (1 << BTN_INTERRUPT))
        {btn_isr();}
#endif
#endif

#ifdef CSR_TIMER1_BASE
#ifdef TIMER1_INTERRUPT
	if (irqs & (1 << TIMER1_INTERRUPT)){
		//timer1_isr();
		//printf("Interrupt reached\n");
	}
#endif
#endif

#ifdef CSR_DIO1_BASE
#ifdef DIO1_INTERRUPT
	if (irqs &(1 << DIO1_INTERRUPT)) {
		dio1_isr();
		//printf("DIO Interrupt!");
	}
#endif
#endif
}