% Script: mexct_1_10g.m
t = linspace(0,0.5,5000);     % Vector of time instants
% Set corner points for q(t)
tq = [0,0.05,0.15,0.4,0.45,0.5];  
xq = [0,1.5,0.9,0.9,0,0];
% Obtain the signal q(t) through linear interpolation
q = interp1(tq,xq,t,'linear'); 
% Anonymous function for chirp signal shaped by q(t)
tone = @(f) 0.6*chirp(t,f,0.5,f+15).*q;
% Compute signals for each note
C4 = tone(261.63);
D4 = tone(293.66);
E4 = tone(329.63);
F4 = tone(349.23);
G4 = tone(392.00);
A4 = tone(440.00);
B4 = tone(493.88);
C5 = tone(523.25);
% Play the sound
sound([C4,D4,E4,F4,G4,A4,B4,C5],10000);