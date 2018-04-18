% Chapter 15, Problem 3
function Ch_15_P_03 

clear
clc
close all
% 15-3	You have been approached by the Rambling Wreck club to test 
% the performance of the Rambling Wreck. You are provided with the  
% test results of the car for ten trial runs in the form of a vector  
% d that contains the displacement of the car from the origin at that  
% second. The first element is the displacement at the 0th second,  
% the second element is the displacement at the 1st second and so on.  
% Write a script called testWreck that displays a plot of the velocity  
% of the Rambling Wreck over time during the test run.  You could test  
% your script using:
d=[0 20 35 50 60 55 30 25 15 5];
% Hint:  use diff()
v = diff(d);
t = 1:length(d)-1;
plot(t, v)
title('Wreck Velocity')
xlabel('time (sec)')
ylabel('velocity') 
