function x = sigx(t)
  x = 2*((t>=-1)&(t<2))+1*((t>=2)&(t<3))-0.5*((t>=3)&(t<=6));
end