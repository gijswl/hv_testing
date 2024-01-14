A reactor is a low-frequency (typically 50 Hz) inductor, which is used in high-voltage testing for compensation and resonant circuits. The construction of the reactor depends highly on the intended usage.
Similar to transformers, reactors can be constructed as [[Tank-type Transformer|tank-type]] or [[Cylinder-type Transformer|cylinder-type]], depending on the test requirements and the environment in which they will be performed.
## Reactors for inductance-tuned resonance
To test at a fixed frequency $f_T$, mostly 50 or 60 Hz, the inductance of the reactor must be tuned to adjust for the capacitive load of the equipment under test and other, secondary factors in the test circuit. 
A part of the core can be made movable, so as to change the airgap length and modify the inductance of the reactor. The inductance may be approximated by
$$L = \frac{\mu_0 \mu_r A N^2}{l_g}$$
where $A$ is the core area, $N$ is the number of turns, and $l_g$ is the length of the airgap.
![[variable_reactor.png]]
The physical limits on the airgap length (fringing and its associated losses) limit the inductance to $[L_{min}, L_{max}]$, which in turn limit the load capacitance for which resonance can be obtained at the fixed frequency $f_T$.
## Reactors for frequency-tuned resonance
