% 15.11	Although MATLAB makes it easy to find the roots of a function,
% sometimes all that is needed is a quick estimate. This can be done by
% plotting a function and zooming in very close to see where the function
% equals zero. Since MATLAB draws straight lines between data points on a
% plot, it is good to draw circles or stars at each data point, in addition
% to straight lines connecting the points. Plot the following function and
% zoom in to find the roots:
clear
clc
close all

n = 5;
x = linspace(0, 2*pi, n);
y = x .* sin(x) + cos(1/2*x).^2 - 1./(x - 7);
plot(x, y, '-o')
hold on
grid on
plot([x(1) x(end)], [0 0], 'k')
disp('x = 3.2427')

