*  ActiveSpice_Math_AxCa+BxCb
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
*****************************************************************************
** This model is solving the equation Q = A . Ca + B . Cb
** Where Ca and Cb are parameters you could set from the symbol
** By défault Ca = Cb = 1. So the result are the sum of the signals A + B
** You could alter Cb with -1 to have a substraction A - B
**
** This block is made to get Math result in simulation or build IC model testbench
** beware than it maybe hard to transpose that behaviorial model in IC for making calulus
** on a PCB if you need too.
**
** If you need caluluc and math on your PCB you should consider to use AmpOp block
** for addition, substraction and dedicate IC for other fonction. Or a µC or a DSP
**
** That model is for simulation and testbened other IC the result from this one
** shouldn't be considered to be implement on a PCB
*****************************************************************************
*****************************************************************************
*                       A is the 1er input
*                         B the 2sd input
*                           Q is the output result 
*                               G is the 0 GND
*                                         Ca is the coeficient factor for the A input
*                                                Cb is the coeficient factor for the B input
.SUBCKT Math_SUM_Aca_Bcb A B Q G Params: ca = 1 cb = 1
***
B0 Q G V = V(A) * {ca} + V(B) * {cb}

.ENDS Math_SUM_Aca_Bcb
