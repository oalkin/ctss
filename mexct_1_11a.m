% Script: mexct_1_11a.m
C4 = 261.63;
D4 = 293.66;
E4 = 329.63;
t = linspace(0,0.7,7000);  % Time vector for each note
tt = linspace(0,0.3,3000); % Time vector for transitions
x1 = sin(2*pi*C4*t);       % Segment 1
x2 = chirpsig(tt,C4,D4,0); % Segment 2
x3 = sin(2*pi*D4*t);       % Segment 3
x4 = chirpsig(tt,D4,E4,0); % Segment 4
x5 = sin(2*pi*E4*t);       % Segment 5
x = 0.6*[x1,x2,x3,x4,x5];
sound(x,10000);

function x = chirpsig(t,f1,f2,alpha)
  tau = t(end)-t(1);                 % Duration
  B = (f2-f1)/tau;                   % Eqn. (1.91)
  A = f1-B*t(1);
  Theta = 2*pi*A*t+pi*B*t.^2+alpha;  % Eqn. (1.92)
  x = sin(Theta);                    % Eqn. (1.93)
end