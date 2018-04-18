 % 11.3  Write and test a function called sineGraph that graphs a sine
% function four times between the interval [start,stop] on the same graph.
% The values start and stop will be parameters of the function. The number
% of points per interval will vary across the plots. 
 
clear
clc

sineGraph(0,pi/2)
figure
sineGraph(0,2*pi)
figure
sineGraph(0,4*pi)
figure
sineGraph(0,16*pi)

