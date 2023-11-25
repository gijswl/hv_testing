If the desired test voltage exceeds that which can be generated with a single transformer (typically around $500\,\mathrm{kV}$), multiple transformers can be _cascaded_. In addition to the primary and secondary winding, a tertiary winding (also known as transfer winding) is required with $N_1 : N_3 = 1:1$. 
The tertiary winding is also at high potential and is made of thicker wire to feed the primary of the next transformer in the cascade.

![[transformer_cascade.png]]

One downside of this approach is that the test power must be transferred through all the lower cascade stages, meaning that the power is limited by the limit of a single stage.

Because all the impedances are in the circuit, the short-circuit impedance of this arrangement increases with the number of stages. Assuming that the LV, HV, and T windings have impedances $X_{LV}$, $X_{HV}$, and $X_T$, the total impedance $X_{res}$ is approximately
$$X_{res} = \sum_{i = 1}^n \left[ X_{HV,i} + (n - i)^2 X_{LV,i} + (n + 1 - i)^2 X_T \right]$$
This accounts for non-linearities and voltage drops in the stages. The number of stages which is practically feasible is usually 3. The voltage distribution can be improved by placing variable compensation reactors on the stages.