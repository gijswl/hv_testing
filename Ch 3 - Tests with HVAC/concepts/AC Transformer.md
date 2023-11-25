The AC transformer is usually a single-phase transformer with a high turns ratio $n_2 / n_1$, which allows it to increase the voltage level from approx. $500\,\mathrm{V}$ to $500-1000\,\mathrm{kV}$. The AC transformer is characterized by its rated voltages and current.
## Voltage transfer ratio
The exact relation between the primary and secondary voltage depends on the parasitic elements of the transformer, meaning that one must measure the secondary voltage to determine the voltage across the DUT.

The transformer can be modeled as a resistance $R_T$ and inductance $L_T$, representing the losses and leakage inductance. The primary voltage is
$$ V_1^\prime = V_2 - Z_T I = V_2 - j\omega C_{DUT} (R_T + j\omega L_T) $$
If the losses are low, the circuit exhibits resonance at the natural frequency. 
$$ f_0 = \frac{\omega_0}{2\pi} = \frac{1}{2\pi \sqrt{L_T C_{DUT}}} $$
This situation should be avoided in practice since the resonant gain can cause extremely high voltages. Over-voltage protection at the output is always required.
Provided that it is designed and controlled properly, a [[resonant circuit]] can be a cost-effective method of generating medium-high voltages..
## Short-circuit behaviour
When the secondary winding is short-circuited (e.g., by breakdown of the DUT), a short-circuit current will flow which is determined by the impedance of the transformer (see [[Impedance Voltage]]).

The mechanical construction of the transformer must be capable of withstanding the large forces on the high-voltage winding, which is typically made of many turns of thin wire.
## Types of AC transformer
[[Tank-type Transformer]], [[Cylinder-type Transformer]], [[Test Transformer Cascades]]
