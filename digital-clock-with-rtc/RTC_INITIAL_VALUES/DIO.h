/*
 * DIO.h
 *
 *  Created on: ??þ/??þ/????
 *      Author: SALEH
 */

#ifndef DIO_H_

/* THEORICAL REMINDER

       Bitwise operators :
           - ‘~a’ = Unary operator for bitwise negation; this changes each bit of ‘a’ from 1 to 0 or from 0 to 1.
           - ‘a & b’ = Binary operator for bitwise “and” or “conjunction.” Each bit in the result is 1 if that bit is 1 in both ‘a’ and ‘b’.
           - ‘a | b’ = Binary operator for bitwise “or” (“inclusive or” or “disjunction”). Each bit in the result is 1 if that bit is 1 in either ‘a’ or ‘b’.

       Operator :
       - '!' means the reverse of.

       Shift operations :
       - 'a << b' : The left operand is the value to be shifted, and the right operand says how many bits to shift it (the “shift count”). The left operand is promoted. Shifting left one bit must generate a new least significant bit. It always brings in zero there.  It is equivalent to multiplying by the appropriate power of 2.  For example,  '5 << 3' is equivalent to '5 * 2*2*2' (= 5 * 2^3).

 */

#define DIO_H_
#define SETBIT(REG,NO) (REG|=(1<<NO)) /* REG = REG | (1<<NO)
					 -> 1 is equivalent to '0...01' in binary so this will always set the 'NO'th bit of 'REG' to '1' and . */ 
#define CLEARBIT(REG,NO) (REG&=~(1<<NO)) /* REG = REG & ~ (1<<NO)
					    -> Will set to '0' (the reverse of '1') the 'NO'th bit of 'REG'. */
#define CHECKBIT(REG,NO) ((REG&(1<<NO))) /* REG & (1<<NO)
					    -> Check if the bit is activated. Will return true (a non-zero value) only if the 'NO'th bit of 'REG' is '1'. */
#define CHECKBITZ(REG,NO) ((!(REG&(1<<NO)))) /* NOT (REG & (1<<NO))
						-> Check if the bit is NOT activated. Same logic as above. */

#endif /* DIO_H_ */
