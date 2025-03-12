% Script: exct_6_3.m
f0 = 3;
k = [-25:25];          % Vector of index values
ck = 0.3*sinc(0.3*k);  % EFS coefficients for input signal
H = @(f) 1000./((j*f+10).*(-f.*f+j*10*f+100));
dk = ck.*H(k*f0);      % EFS coefficients for Butterworth
                       % filter output
t = [-0.5:0.001:0.5];
y_bw = ConstructFromTFS(k,dk,3,t);
ck(k<-3|k>3) = 0;      % Zero out coefficients for k<-3 or k>3
y_ideal = ConstructFromTFS(k,ck,3,t);
plot(t,y_ideal,'b-',t,y_bw,'g-'); grid;
xlabel('t (sec)');
ylabel('Amplitude');
legend('y_{ideal}(t)','y_{bw}(t)');

function y = ConstructFromTFS(k,ck,f0,t)
  y = zeros(size(t));
  for n=1:length(k)
    y = y+ck(n)*exp(j*2*pi*k(n)*f0*t);
  end
  y = real(y);
end