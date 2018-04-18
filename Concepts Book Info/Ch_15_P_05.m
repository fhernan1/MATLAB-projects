% Chapter 15, Problem 5
function Ch_15_P_05 

clear
clc
close all

% 15-7	When learning about sound you may have asked yourself how the 
% digital wave file is converted to an actual sound.  The sample 
% points of the wave file need to be joined together to create a 
% continuous function. To accomplish this, your computer 
% (or CD player) uses a digital to analog converter.  
% This chip will take the digital samples and create a continuous 
% analog signal that will then get sent to your speakers. There are 
% different methods to connect the points but one way you could do it 
% is to use spline interpolation.  This provides an advantage over 
% linear interpolation since it will create a more sinuisodal looking wave.  
% You are going to recreate this conversion using MATLAB.  Write a 
% function called fill_in that takes in a vector of samples and returns 
% a vector with 10 times the number of samples in the input.  This means 
% there will be 9 new points between the original samples. The values 
% of the samples should be interpolated using spline. 
% You should test your function by also producing a plot of the original 
% and interpolated data on the same figure.  You could use:
    y = [0.75,-0.2,-0.8,0.7,-0.4,0,-0.6,0.7];
    numY = length(y);
    x = 1:numY;
    ny = fill_in(y);
    nx = linspace(1, numY, 10*numY);
    plot(x, y, 'bs')
    hold on
    plot(nx, ny, 'g')
end

function ny = fill_in(y)
    nmy = length(y);
    x = 1:nmy;
    nx = linspace(1, nmy, 10*nmy);
    ny = spline(x, y, nx);
end
