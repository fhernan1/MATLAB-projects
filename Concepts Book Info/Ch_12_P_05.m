% Chapter 12, Problem 5
function Ch_12_P_05 

clear
clc
% 12-5	Write a function called rotateLine that takes in two vectors, x and
% y, of the same length that represent a set or ordered pairs that could be
% used to plot a line. Your function should also take in a third parameter,
% theta, representing an angle in degrees.  Your function should return
% xprime and yprime where xprime and yprime represent the line that is x
% and y rotated about the origin by the angle theta.
% Hint: Use the 2-D rotation matrix found in section 12.4.1.
% For example:
     x = [ 7 7 11 11 7];
     y = [-5 -9 -9 -5 -5];
     [xprime yprime] = rotateLine(x, y, 90) %returns 
%      xprime = [5     9     9     5     5]
%      yprime = [7     7    11    11     7]
end

function [xprime yprime] = rotateLine(x, y, theta)
    rtmtx = [cosd(theta) -sind(theta);sind(theta) cosd(theta)];
    pts = [x; y];
    [ptsprime] = rtmtx*pts;
    xprime = ptsprime(1, :);
    yprime = ptsprime(2, :);
end
