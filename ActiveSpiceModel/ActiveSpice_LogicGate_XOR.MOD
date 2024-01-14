*  ActiveSpice_LogicGate_XOR.MOD
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
*****************************************************************************
** This model is a XOR gate designed without logic level it changes at VCC/2
** For simulation of other IC the result from this one shouldn't be considered
**
** V1 was only VA > VB or VB < VA without consideration for 1/2 MOD_INV_GATE_Activetronics_001_TFN
** V2 implement Vcc/2 as gate threshold
**
*****************************************************************************
*                 VCC is the supply
*                     G is the 0 GND
*                       A is the input A trigger at 1/2 VCC both way
*                         B is the input B trigger at 1/2 VCC both way
*                           S in the output

.SUBCKT  XOR VCC G A B S
***
B0 AA G V = V(A) > V(VCC)/2 ? V(VCC)/2 :0
B1 BB G V = V(B) > V(VCC)/2 ? V(VCC)/2 :0
B2 S G V = V(AA) < V(BB) || V(AA) > V(BB) ?  V(VCC) : 0

.ENDS XOR
