% 15.6	Assume that the following set of temperature measurements is taken
% from the cylinder head in a new engine that is being tested for possible
% use in a race car:
clear
clc
close all
%            Time, sec		    Temperature, °F
values = [   0				  0
            1.0				 20
            2.0				 60
            3.0				 68
            4.0				 77
            5.0				110 ]
t = values(:, 1)'
tmp = values(:, 2)'
plot(t, tmp, 'r+')
hold on
% a.	Compare plots of these data, assuming linear interpolation and
% assuming cubic-spline interpolation for values between the data points,
% using time values from 0 to 5 in increments of 0.1 s.
tv = 0:0.1:5;
lv = interp1(t, tmp, tv);
plot(tv, lv)
sv = spline(t, tmp, tv);
plot(tv, sv, 'g')
% b.	Using the data from part (a), find the time value for which there
% is the largest difference between its linear interpolated temperature and
% its cubic interpolated temperature.
[val where] = max(abs(lv - sv))
timeAtMax = tv(where)