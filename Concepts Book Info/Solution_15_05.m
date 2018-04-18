% 15.5	Generate f(x) = x^2 for x = [-3 -1 0 2 5 6]
clear
clc
close all
% a.		Compute and plot the linear and cubic-spline interpolation of
% the data points over the range [-3:0.05:6]
x = [-3 -1 0 2 5 6]
px = -3:0.05:6;
y = x.^2;
plot(x,y, 'r+')
hold on
plot(px, interp1(x, y, px))
plot(px, spline(x, y, px),'g')
% b.	Compute the value of f(4) using linear interpolation and
% cubic-spline interpolation. What are the respective errors when the
% answer is compared with the actual value of f(4)?
lf4 = interp1(x, y, 4)
sf4 = spline(x, y, 4)
rf4 = 16;
diffl = lf4-rf4
diffs = sf4-rf4
