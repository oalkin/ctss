% Script: mexct_1_3.m
tp = [-1,0,1,2-eps,2+eps,3,4,5,6];  % Time coordinates of points
xp = [0,0,1,0.5,-0.5,-1,-1,0,0];    % Amplitude values of points
t = [-1:0.01:6];                    % Set of time instants for interpolation
x = interp1(tp,xp,t,'linear');
plot(t,x,'b-',tp,xp,'ro'); grid;
axis([-1,6,-1.2,1.2]);