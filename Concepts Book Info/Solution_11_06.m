
% 11.6  Repeat Programming Project 11.5 plotting the same curve rotated
% around the y axis.
clear
clc
close all

x = 0:.1:2;
th = linspace(0,2*pi,length(x));
[theta xx] = meshgrid(th, x);
rr = xx;
yy = (xx.^2-2*xx+1);
xx = rr .* cos(theta);
zz = rr .* sin(theta);
surf(xx,yy,zz);
xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')
title('Rotation around Y axis')