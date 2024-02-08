The measuring impedance is intended to provide a voltage proportional to the PD pulse current. It is sometimes also called a quadrupole.
![[measuring_impedance.png|450]]
The measuring impedance starts with a certain equivalent measurement resistor (shunt resistor) $R_m$, which converts the measured PD current into a voltage pulse. Together with the coupling capacitor, this forms an RC high-pass filter with cut-off frequency
$$f_1 = \frac{1}{2\pi R_mC_k}$$
A certain capacitive current $I_c$ will flow through the coupling capacitor, causing a large voltage drop across $R_m$.
$$I_c = 2\pi f C_k U_{test} \qquad U_{Rm} = R_m I_c$$
With typical values of $R_m = 1\,\mathrm{k\Omega}$ and $I_c = 1\,\mathrm{A}$, this would lead to unacceptably high voltages at the PD signal output. To shunt away the $50\,\mathrm{Hz}$ current, an inductor $L_s$ is placed in parallel with $R_m$. Its impedance must be much lower than $R_m$ at the maximum test frequency. In addition, it must not significantly alter the lower cut-off frequency.
$$2\pi f_1 L_s \ge 5 R_m \qquad Z_L = 2\pi f_{test} L_s$$
A capacitor $C_m$ can be placed in series with $L_s$ to act as part of a capacitive divider with $C_k$. This is only possible if the impedance of $L_s$ at the test frequency is low. The value of $C_m$ should be
$$C_m = n C_k$$
where $n$ is the divider ratio.

For a test system with $R_m = 1\,\mathrm{k\Omega}$, $C_k = 3.2\,\mathrm{nF}$, $C_m = 16.8\,\mathrm{\mu F}$, and $L_s = 16\,\mathrm{mH}$. The lower cut-off frequency is roughly $50\,\mathrm{kHz}$, with a divider ratio of $n = 4000$ (maximum $200\,\mathrm{kV}$). The transfer functions are shown from PD current to measured PD voltage, and from HV voltage to divider output.
![[transfer_PD.png|350]]
![[transfer_HV.png|350]]