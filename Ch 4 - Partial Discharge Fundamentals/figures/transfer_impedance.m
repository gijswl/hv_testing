Rm = 1e3;
Ck = 3.2e-9;
Cm = 12.8e-6;
Ls = 16e-3;

f = logspace(0, 8, 100);
w = 2*pi*f;

%% PD current to voltage
Z1 = Rm;
ZL = w * Ls;
ZC = 1 ./ (w * Cm);
Z2 = ZL + ZC;
Im = Z1 ./ (Z1 + Z2);

Zm = 1 ./ (1 / Z1 + 1 ./ Z2);
H1 = Zm - Im .* ZC;

figure(1); clf
hold on
semilogx(f, 20*log10(abs(H1)), 'k')
plot([50e3, 50e3], [0, 60], 'k--')
plot([1, 1e8], [60, 60], 'k--')

xlabel("Frequency [Hz]")
ylabel("Transfer impedance [dB]")
ylim([0, 65])

grid on

%%
Zk = 1 ./ (w * Ck);
H1 = Zm ./ (Zk + Zm);
H2 = 1 ./ (w * Cm) ./ (w * Ls + 1 ./ (w * Cm)) .* H1;

figure(2); clf
hold on
semilogx(f, 20*log10(abs(H2)), 'k')
plot([50, 50], [-140, -60], 'k--')
plot([1, 1e8], [1, 1] * 20 * log10(Ck / Cm), 'k--')

xlabel("Frequency [Hz]")
ylabel("Voltage gain [dB]")
ylim([-140, -60])

grid on
