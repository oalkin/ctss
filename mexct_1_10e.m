% Script: mexct_1_10e.m
t = linspace(0,0.5,5000);          % Vector of time instants
% Set corner points for q(t)
tq = [0,0.05,0.15,0.4,0.45,0.5];  
xq = [0,1.5,0.9,0.9,0,0];
% Obtain the signal q(t) through linear interpolation
q = interp1(tq,xq,t,'linear'); 
% Anonymous function for single tone shaped by q(t)
tone = @(f) 0.6*sin(2*pi*f*t).*q;  % Eqn. (1.85)
% Compute signals for each note
xC4 = tone(261.63);
xD4 = tone(293.66);
xE4 = tone(329.63);
xF4 = tone(349.23);
xG4 = tone(392.00);
xA4 = tone(440.00);
xB4 = tone(493.88);
xC5 = tone(523.25);
% Play the sound
sound([xC4,xD4,xE4,xF4,xG4,xA4,xB4,xC5],10000);