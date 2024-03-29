*  ActiveSpice_LogicGate_OR.MOD
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
*****************************************************************************
** This model is a OR gate designed without 'logic level' it changes at VCC/2
* For simulation of other IC only, the real result from this one shouldn't be considered
**
*****************************************************************************
*                VCC is the supply
*                    G is the 0 GND
*                      A is the input A trigger at 1/2 VCC both way
*                        B is the input B trigger at 1/2 VCC both way
*                          S in the output

.SUBCKT  OR VCC G A B S
***

B0 S G V = V(A) > V(VCC)/2 || V(B) > V(VCC)/2 ?  V(VCC) : 0

.ENDS OR
