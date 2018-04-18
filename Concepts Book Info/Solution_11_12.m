% 11.12 Georgia Tech wants to tear down the Campanile and build a new one
% that is ridiculously tall. However, before construction begins they need
% you to model it in MATLAB. Using the equation z = 1/(x^2 + y^2) as the
% model, write a script that will plot the Campanile. • Plot the function
% with both x and y between –0.75 and 0.75 in steps of 0.05 • Set your axes
% such that all of the x,y domain is seen and z runs from 0 to 300 • You
% must account for dividing by 0 (Hint: look up eps in the MATLAB help
% documentation) • Make sure you use surf to plot your surface • Title the
% plot Campanile and label the axes.;
clear
clc
close all

x = -.75:.05:.75;
y = x;
[xx yy] = meshgrid(x,y);
zz = 1./((xx.^2 + yy.^2)+(eps*10^13));
surf(xx,yy,zz)
title('Campnile')
xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')
axis([-.75 .75 -.75 .75 0 400])


