% Script: mexct_4_1c.m
[sr,si] = meshgrid([-6:0.15:6],[-15:0.25:15]);
s = sr+j*si;
Xs = @(s) (s+0.5)./((s+0.5).^2+4*pi*pi);  % Eqn. (4.8)
XsMag = abs(Xs(s));
XsMag = XsMag.*(XsMag<=2)+2.*(XsMag>2);
% Define the trajectory s=j*omega
omega = [-15:0.01:15];
tr = j*omega;
shading interp;                           % Interpolated shading
colormap copper;                          % Specify the color map used
% Produce a mesh plot and hold it
m1 = meshz(sr,si,XsMag);
hold on;
% Superimpose a plot of X(s) magnitude values evaluated on the
% imaginary axis of the s-plane in blue
m2 = plot3(real(tr),imag(tr),abs(Xs(tr)),'b-','LineWidth',1);
% Superimpose a plot of the imaginary axis of the s-plane in red
m3 = plot3(real(tr),imag(tr),zeros(size(tr)),'r-','LineWidth',1);
hold off;
axis([-6,6,-15,15]);
% Adjust transparency of surface lines
set(m1,'EdgeAlpha',0.4','FaceAlpha',0.4);
% Specify x,y,z axis labels.
xlabel('\sigma');
ylabel('j\omega');
zlabel('|X(s)|');
% Specify viewing angles. 
view(gca,[23.5,38]);