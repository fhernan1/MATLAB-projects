% 11.7  The equation  r = sin((11*theta)/10) creates a plot that looks similar to a “Slinky.”
% Write a MATLAB script to plot the Slinky for  0<theta<10*pi. Make sure the plot is
% fully labeled and titled. The x and y axes are defined as follows: 
% x = r cos (theta)
% y = r sin (theta)  
clear
clc
close all

theta = linspace(0,10*pi,500);
r = sin((11*theta)/10);
z = linspace(-5,5,500);
y = r .* sin(theta);
x = r .* cos(theta);
plot3(x,y,z)
xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')