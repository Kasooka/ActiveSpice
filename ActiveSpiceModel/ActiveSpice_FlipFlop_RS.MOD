*  ActiveSpice_FlipFlop_RS.MOD
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
*****************************************************************************
** This model is designed as a RS FlipFlop
** For simulation of other IC the result from this one shouldn't be considered
**
*****************************************************************************
*
*****************************************************************************
*                    VCC is the supply  test with 3v
*                        G is the 0 GND
*                          In is the input
*                             Out the non inv-ouput
*                                 Qout is the inverted output
*
.SUBCKT RSFlipFlop VCC G Set Res Q nQ
***
B0 Outi G V = V(Out)
B1 Out G V = (V(Set) > V(VCC)/2 || V(Outi) > V(VCC)/2 )  && (V(Res) < V(VCC)/2)  ?  V(VCC) : 0

B3 Q G V = V(Out) > V(VCC)/2 ?  0 : V(VCC)

.ENDS RSFlipFlop
