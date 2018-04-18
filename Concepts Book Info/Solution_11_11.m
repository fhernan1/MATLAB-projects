% 11.11 In this problem you will be creating two 3-D plots for comparison
% using subplot(…) in one row and two columns. Label all axes accordingly
% (X-axis, Y-axis, and so forth.). Give a title to your plot corresponding
% to the problem statement. Create the following plots in a script: In the
% first subplot, plot the function f(x,y)=x^2*cos(y) in the range x =  -5:5
% and y = -5:5 using mesh. Title this plot Using Mesh. In the second
% subplot, plot the same function as above, in the same range, but using
% surf. Title this plot Using Surf.
clear
clc
close all


subplot(1,2,1)
x = -5:5
y = -5:5
[xx yy] = meshgrid(x,y)
zz = (xx.^2).*(cos(yy))
mesh(xx,yy,zz)
xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')
title('Mesh')
subplot(1,2,2)
surf(xx,yy,zz)
title('Surf')
xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')
