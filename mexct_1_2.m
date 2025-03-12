% Script: mexct_1_2.m
tp = [-1,0,1,3,4,5,6];   % Time coordinates of points
xp = [0,0,1,-1,-1,0,0];  % Amplitude values of points
t = [-1:0.01:6];         % Set of time instants for interpolation
x = interp1(tp,xp,t,'linear');
plot(t,x,'b-',tp,xp,'ro');