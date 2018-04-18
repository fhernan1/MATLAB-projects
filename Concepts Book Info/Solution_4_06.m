% 4.6	Write a script that calculates the variable mode, the mode of
% transport used to travel a certain distance according to the following
% definition. You are given a variable called distance that represents the
% distance to be covered in feet. (1 mile = 5,280 feet)
% distance <= 2 miles: ‘Walk’
% 2 miles < distance <= 10 miles: ‘Bicycle’
% 10 miles < distance <= 30 miles: ‘MARTA’
% distance > 30 miles: ‘Delta Airlines’
% Solution 4-6
clear
clc

feet_per_mile = 5280;
distance = rand * 40 * feet_per_mile;

miles = distance/feet_per_mile
if miles <= 2
    trans_mode = 'Walk'
elseif miles <= 10
    trans_mode = 'Bicycle'
elseif miles <=30
    trans_mode = 'MARTA'
else
    trans_mode = 'Delta Airlines'
end
    