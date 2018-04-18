% 15.9	Compute tan(x) for x = [-1:0.05:1]. 
clear
clc
close all

x = -1:0.05:1;
y = tan(x);
plot(x, y)
hold on
% a.	Compute the best-fit polynomial of order four that approximates
% tan(x). Plot tan(x) and the generated polynomial on the same graph. What
% is the sum of square error of the polynomial approximation for the data
% points in x?
coeff = polyfit(x, y, 4);
fitv = polyval(coeff, x);
plot(x, fitv, 'g')
% b.	Compute tan(x) for x = [-2:0.05:2]. Using the polynomial generated
% in part (a), compute values of y from -2 to 2, corresponding to the x
% vector just defined. Plot tan(x), and the values generated from the
% polynomial on the same graph. Why aren’t they the same shape?
x = -2:0.05:2
y = tan(x)
figure
plot(x, y)
hold on
plot(x, polyval(coeff,x), 'g')