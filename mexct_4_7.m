% Script: mexct_4_7.m
num = [1,0.5];
den = [1,1,39.7284];
zrs = roots(num);     % Compute zeros
pls = roots(den);     % Compute poles
omg = [-15:0.05:15];  % Vector of frequencies
[mag,phs] = ss_freqs(zrs,pls,1,omg);
tiledlayout(2,1);
nexttile;
plot(omg,mag); grid;
xlabel('\omega (rad/s)');
ylabel('Magnitude');
nexttile;
plot(omg,phs); grid;
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');