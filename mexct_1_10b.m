% Script: mexct_1_10b.m
t = linspace(0,0.5,5000);
tone = @(f) 0.6*sin(2*pi*f*t);
xC4 = tone(261.63);
xD4 = tone(293.66);
xE4 = tone(329.63);
xF4 = tone(349.23);
xG4 = tone(392.00);
xA4 = tone(440.00);
xB4 = tone(493.88);
xC5 = tone(523.25);
sound([xC4,xD4,xE4,xF4,xG4,xA4,xB4,xC5],10000);