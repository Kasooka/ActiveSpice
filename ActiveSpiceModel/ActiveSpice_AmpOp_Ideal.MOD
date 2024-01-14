*  ActiveSpice_AmpOp_Ideal.MOD
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
*****************************************************************************
* This model is an Ideal AmpOp designed with behavior math equation.
* It was design to easily start a simulation but only as a big approximation
* for circuit simulation. For advance simulation the use real model,
* emulate at transistor level must be considered.
* For yout final simulation design you should use the factory spice model of
* the AmpOp you are going to use on your board.
* You should respect the license and proprietorship of those manufactured models
* and most of them do not allow to share them yourself.
* So that ideal model could be also a base to replace them or build your own
* closer to real models.
* That ideal AmpOp will simulate above 10R=THz BW
* It include a tiny inductance + Resistor and capacitor to stabilize the ouptup
* So for Hight DV/DT as the bandwidth is almost unlimited overshoot and oscillation
* may appear. It's up to you to add external element to limit the bandwidth
* and simultate or more real model. Or better to pick a manufactured more
* realistic model of the final Amp-op you would have to use on your board
*****************************************************************************

*  ActiveSpice_AmpOp_Ideal.MOD
*****************************************************************************
* (C) Thierry FLAVEN Activetronics.com
.SUBCKT  AmpOp_Ideal VCC G P M S
*                    VCC is the supply
*                        G is the 0 local IC GND
*                          P is the positive input
*                            M is the negative input
*                              S in the output

***
B1 Snolimit 0 V = V(P) * 10000 - V(M) * 10000
B2 SLowLimit 0 V = V(Snolimit) < V(G) ? V(G) : V(Snolimit)
B3 StopLimit 0 V = V(SLowLimit) > V(VCC) ? V(VCC) : V(SLowLimit)
R1 StopLimit OutR 0.1
L1 OutR S 100n
C1 S 0 1p

*B0 S 0 V = V(StopLimit)
.ENDS AmpOp_Ideal
