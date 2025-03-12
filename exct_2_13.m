% Script: exct_2_13.m
R = 1;             % Set R=1 Ohm, C1=Farad
C = 1;
tau = R*C;         % Time constant
t = [-2:0.01:4];   % Vector of time instants
V0 = 5;            % Initial value of the output signal
% Compute the natural response as given by Eqn. (2.82)
y = V0*exp(-t/tau).*(t>=0);
% Graph the natural response
% Also show the tangent at t=0 and the value at t=tau
plot(t,y,'b-',...                 % Signal
     [0,tau],[V0,0],'r--',...     % Tangent line
     [0,tau,tau],V0/exp(1)*[1,1,0],'r--'); grid;
text(tau,-0.3,'\tau');
axis([-2,4,-1,6]);
title('Output signal y(t) for Example 2.13.');
xlabel('t (sec)'); 
ylabel('Amplitude');