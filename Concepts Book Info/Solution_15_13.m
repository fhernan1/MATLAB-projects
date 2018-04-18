% 15.13	The function f(x) is defined by f(x) = 4 e^-x. Plot this function
% over the interval [0, 1] with a suitable number of points. Use numerical
% integration techniques to estimate the integral of f(x) over [0, 0.5] and
% [0, 1]. Compare these results to the theoretical answer.
clear
clc
close all

x = linspace(0, 1);
dx = x(2) - x(1);
y = 4*exp(-x);
plot(x, y)
hold on
iy1 = cumsum(y(1:floor(end/2))) * dx;
iy2 = cumsum(y) * dx;
plot(x, iy2, 'k')
plot(x(1:floor(end/2)), iy1, 'g')

% theoretical values
