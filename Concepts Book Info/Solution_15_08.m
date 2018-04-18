% 15.8 	The guidance system for a spacecraft often uses a sensor called an
% accelerometer, which is an electromechanical device that produces an
% output voltage proportional to the applied acceleration. Assume that an
% experiment has yielded the following set of data:
clear
clc
close all
% Acceleration		          Voltage
v = [4				0.593
	2				0.436
	0				0.061
	2				0.425
	4				0.980
	6				1.213
	8				1.646
	10				2.158]
% a.	Determine the linear equation that best fits this set of data. Plot
% the data points and the linear equation.
acc = v(:,1)';
volts = v(:,2)';
plot(acc, volts,'r^')
hold on
coeff = polyfit(acc, volts, 1)
fitv = polyval(coeff, acc);
plot(acc, fitv )
% b.	Determine the sum of the squares of the distances of these points
% from the line of best fit determined in part (a).
sumsq1 = sum( (volts - fitv).^2 )
% c.	Compare the error sum from part (b) with the same error sum
% computed from the best quadratic fit. What do these sums tell you about
% the two models for the data?
coeff = polyfit(acc, volts, 2)
fitv = polyval(coeff, acc);
plot(acc, fitv, 'g')
% b.	Determine the sum of the squares of the distances of these points
% from the line of best fit determined in part (a).
sumsq2 = sum( (volts - fitv).^2 )
disp('the quadratic fit is slightly better')
