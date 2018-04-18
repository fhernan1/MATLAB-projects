% 11.9  Write a script to plot the toroid shape that is the body of
% rotation produced by rotating the curve (x-R)^2 + y^2 = r^2 about the y
% axis. Use suitable values for r and R where r should be less than R.
% Hint: It is probably a good idea to use the polar form of
% the circle: x-R = r cos(theta) y = r sin(theta) <End Hint>
clear
clc
close all

r = 2; R = 4;
th = linspace(0,2*pi);
[tth pphi] = meshgrid(th, th);
zz = r * sin(pphi);
rr = R + r * cos(pphi);
xx = rr .* cos(tth);
yy = rr .* sin(tth);
surf(xx,yy,zz)
shading interp
axis equal
colormap copper
lightangle(60, 45)
xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')
title('Toroid Plot')