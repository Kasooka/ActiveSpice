*  ActiveSpice_fct_Math.MOD
*****************************************************************************
* (C) Thierry FLAVEN FESYS.FR
*****************************************************************************
** This model is designed as a substitute with simple behavioral dependent source ASRC fontion
** For simulation of other IC and the result from this one shouldn't be considered
*****************
*****************************************************************************
*
*.SUBCKT Math 1 2 3 4
.SUBCKT  Spice_BeaviorFct  A B X G Params: Yr = 1  Wr = 1
***
B1 X G V = v(A) * {Yr} + V(B) * {Wr} ; math simple
*B1 X G V = V(A) > V(B) ? 0 : 3; if A>B then 0 else 3

.ENDS Math
