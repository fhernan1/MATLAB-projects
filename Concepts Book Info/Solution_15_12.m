% 15.12	Consider the data points in the following vectors:
clear
clc
close all

x = [0.1 0.3 5 6 23 24];
y = [2.8 2.6 18.1 26.8 486.1 530];
% a.	Determine the best-fit polynomial of order 2 to the data. Calculate
% the sum of squares for your results. Plot the best-fit polynomial for the
% six data points.
coeff = polyfit(x, y, 2);
vy = polyval(coeff, x);
plot(x, y, 'r^')
hold on
% b.	Generate a new x vector containing 250 points evenly spaced between
% 0.1 and 25. Using the coefficients from part (a), generate and plot the
% corresponding y values.
xp = linspace(0.1, 25, 250);
yp = polyval(coeff, xp);
plot(xp, yp, 'g')
% c.	Compute and an estimate of dy/dx using the new values in part (b). 
slope = diff(yp) ./ diff(xp);
figure
plot(xp(2:end), slope)
hold on
% d.	Compute second and third order polynomial fit to the derivative
% data in part (c). Plot each polynomial. Why is the use of polynomial fits
% to derivative data important? 
disp('it reduces the noise usually, but here there isn''t any')