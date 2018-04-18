x =[-10:10];
f = 1/2.*x.^2;
g = x.^2;
h = 2.*x.^2;

plot(x,f,'--g', x,g,'b', x,h, ':r')
legend({'f', 'g', 'h'})