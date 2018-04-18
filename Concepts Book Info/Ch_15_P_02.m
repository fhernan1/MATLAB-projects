% Chapter 15, Problem 2
function Ch_15_P_02 

clear
clc
close all
% 15-2	Write a function, bestFit, that takes in a vector of 
% x-coordinates and a vector of y-coordinates. Your function should  
% fit a polynomial curve to the data. The degree of the polynomial  
% should be the smallest degree polynomial with an average error  
% (the average of the absolute value of the difference between the  
% new y-coordinates and the original y-coordinates) less than 2.  
% Your function should return:
% •	The vector of coefficients of your polynomial
% •	The vector of new y-coordinates which is the polynomial evaluated  
% at the original x-coordinates, and
% •	The vector of the error magnitudes of your polynomial.
% Write a test program to provide reasonable data to your function  
% and plot the original data (in blue), the curve-fitted data (in green),  
% and the error (in red) on one figure. Title your plot and label your  
% axis accordingly, including a legend.
% For example:
[coeff newy err] = ...
bestFit(0:5, [0 20 25 40 52 67]) % should return:
%  coeff = [0.4722 -3.4881 18.9444 0.9048]
%  newy =  [0.905 16.83 28.62 39.1 51.1 67.45]
%  err = [0.905 3.17 3.62 0.905 0.905 0.45]

end

function [coeff newy err] = bestFit(x, y)
    errf = 10;
    err = [];
    n = 1;
    coeff = [];
    while errf > 2
       coeff = polyfit(x, y, n);
       newy = polyval(coeff, x);
       err = abs(y - newy);
       errf = sum(err) / length(x);
       n = n + 1;
    end
end