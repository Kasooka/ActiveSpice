*  ActiveSpice_LogicGate_NAND.MOD
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
*****************************************************************************
** This model is designed as a NAND gate trigger at half VCC without logic level
** For simulation of other IC the result from this one shouldn't be considered
**
*****************************************************************************
*
*****************************************************************************
*               VCC is the supply
*                   G is the 0 GND
*                     A is the input A trigger at 1/2 VCC both way
*                       B is the input B trigger at 1/2 VCC both way
*                         S in the output
*
.SUBCKT NAND VCC G A B S
***
B0 S G V = V(A)> V(VCC)/2 && V(B)> V(VCC)/2 ? 0 : V(VCC)

.ENDS NAND
