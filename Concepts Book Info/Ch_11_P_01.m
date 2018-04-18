% Chapter 11, Problem 1
function Ch_11_P_01 

clear
clc
close all
% 11-1	Write a script that creates six sub-plots in two columns 
% each with three rows.  Each plot should have an appropriate title  
% and labels on the x and y axes. The plot in the top left sub-plot  
% should be y = cos(?) for values of  ? from -2? to 2?.  Subsequent  
% plots going across the rows before going down the columns should  
% be of y = 2cos(?), y = 3cos(?) etc. to y = 6cos(?) over the same  
% range of ?.

theta= linspace(-2*pi,2*pi,100)

subplot(3,2,1)
plot(theta, sin(theta))
title ('y=sin(theta)')
xlabel x-axis
ylabel y-axis

subplot(3,2,2)
plot(theta, 2*sin(theta))
title ('y=2sin(theta)')
xlabel x-axis
ylabel y-axis

subplot(3,2,3)
plot(theta, 3*sin(theta))
title ('y=3sin(theta)')
xlabel x-axis
ylabel y-axis

subplot(3,2,4)
plot(theta, 4*sin(theta))
title ('y=4sin(theta)')
xlabel x-axis
ylabel y-axis

subplot(3,2,5)
plot(theta, 5*sin(theta))
title ('y=5sin(theta)')
xlabel x-axis
ylabel y-axis

subplot(3,2,6)
plot(theta, 6*sin(theta))
title ('y=6sin(theta)')
xlabel x-axis
ylabel y-axis
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
