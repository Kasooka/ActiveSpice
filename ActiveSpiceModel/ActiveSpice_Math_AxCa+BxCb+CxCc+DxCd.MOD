*  ActiveSpice_Math_AxCa+BxCb
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
*****************************************************************************
** This model is solving the equation A . Ca + B . Cb + C . Cc + D . Cd
** Where Ca and Cb are parameter you could set from your symbole
** By défault Ca = Cb = Cc = Cd = 1. So the result are the sum of the signal A + B + C + D
** You could alter Cb with -1 to have a substraction A - B
** You could link the same
** For simulation of other IC the result from this one shouldn't be considered
**
*****************************************************************************
* Wd parameter is the threshold windows, as + and - % of the VCC arround Trsld
* Trsld is the central level of threshold, as a % of VCC
*        For example @ VCC =3V
*                    Trsld @ 0.5 will give 3*0.5 = 1.5V central threshold
*                    Wd @ 0.1 will give 3*0.1 = 0.3V  arround the 1.5
*                       So the low level threshold will be 1.2v
*                       So the high level threshold will be 1.8v
*****************************************************************************
*                    VCC is the supply  test with 3v
*                        G is the 0 GND
*                          In is the input
*                             Out the non inv-ouput
*                                 Qout is the inverted output
*
.SUBCKT  SchmittTrig VCC G In Out QOut Params: Wd = 0.1 Trsld = 0.5
***
B0 StateIn G V = (V(QOut) - {Trsld} * V(VCC)) * {Wd} * V(VCC) + {Trsld} * V(VCC)  ; Like a V-divider on OpAmp feed-back minus entry
B1 QOut G V = V(In) > V(StateIn) ?  0 : V(VCC)
B3 Out G V = V(In) < V(StateIn) ?  0 : V(VCC)

.ENDS SchmittTrig
