*  ActiveSpice_fct_Rectifier_Full_Ideal.MOD
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
*****************************************************************************
* This model is an Ideal full wave rectifier for simulation of other IC only
*****************************************************************************

*  MOD_AmpOp_Ideal_Activetronics_001_TFN
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
.SUBCKT  Rectifier I S
*                             I is the  input
*                              S in the output

***
B1 S 0 V = V(I) > 0 ?  V(I) : -V(I)

.ENDS Rectifier
