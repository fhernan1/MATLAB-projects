% 11.5  Plot the shape generated when you rotate around the x axis the
% curve y = x^2-2x+1 with x values from 0 to 2 in steps of 0.1.
clear
clc
close all


x = 0:.1:2;
th = linspace(0,2*pi,length(x));
[theta xx] = meshgrid(th, x);
rr = (xx.^2-2*xx+1);
yy = rr .* cos(theta);
zz = rr .* sin(theta);
surf(xx,yy,zz);
shading interp
xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')
title('Rotation around x axis')
