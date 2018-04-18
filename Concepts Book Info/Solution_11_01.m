% 11.1.	Write the MATLAB commands to plot the equation z = cos(x^2 - x^2) with the following
% restrictions:
% •	Vary x and y between –2 and 2 with an increment of .1
% •	The faces should be colored with no lines visible
% Make sure the plot is suitably labeled and titled. 
clear
clc
close all

x = -2:.1:2;
y = -2:.1:2;
[xx yy] = meshgrid(x, y);
zz = cos(xx.^2 - yy.^2);
surf(xx, yy, zz)
shading interp
title('cos(xx.^2 - yy.^2)')
xlabel('x')
ylabel('y')
zlabel('z')
