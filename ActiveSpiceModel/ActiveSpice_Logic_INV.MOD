*  ActiveSpice_Logic_INV.MOD
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
*****************************************************************************
* This model is a inverter gate designed without 'logic level' it changes at VCC/2
* For simulation of other IC only, the real result from this one shouldn't be considered
*
*****************************************************************************
*                 VCC is the supply
*                     G is the 0 GND
*                       A is the input A trigger at 1/2 VCC up and Down
*                           S in the output

.SUBCKT  INV_GATE VCC G A S
***

B0 S G V = V(A) < V(VCC)/2 ?  V(VCC) : 0

.ENDS INV_GATE
