% Script: mexct_1_10c.m
xC4 = tone(261.63);
xD4 = tone(293.66);
xE4 = tone(329.63);
xF4 = tone(349.23);
xG4 = tone(392.00);
xA4 = tone(440.00);
xB4 = tone(493.88);
xC5 = tone(523.25);
x = [xF4,xG4];
sound(x,10000);
plot(x(4950:5050)); grid;