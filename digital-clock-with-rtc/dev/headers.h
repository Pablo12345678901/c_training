/* headers.h */
#ifndef HEADERS_H_
#define HEADERS_H_

/* From AVR Libc :
   - Library reference : https://www.nongnu.org/avr-libc/user-manual/modules.html
   - Project : https://github.com/avrdudes/avr-libc
   - The AVR Libc package provides a subset of the standard C library for Atmel AVR 8-bit RISC microcontrollers
 */

#include <avr/io.h>  /* AVR device-specific IO definitions */
#include <util/delay.h> /* Convenience functions for busy-wait delay loops */
#include <avr/interrupt.h> /* Interrupts */

/* Where is this type defined ? */
typedef void(*fn_ptr)(void) ; 

#endif /* HEADERS_H_ */
