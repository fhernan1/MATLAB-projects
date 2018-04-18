% Chapter 15, Problem 6
function Ch_15_P_06 
clear
clc
close all

% 15-6	Now that we used the derivative it only makes sense that you
% are going to write a function that finds integrals. Call your function 
% find_integral.  Your function should take in a vector of x and y values 
% as problem 15-3 does and should plot the integral and also return 
% the total area under the function.  You are to use the trapezoidal 
% rule to find the integrals.   For example,  
x = linspace(0,5,1000); 
y = 2*x+5;  
n = find_integral(x,y) % should return 50.0000

end

function res = find_integral(x, y)
    dx = [0 diff(x)]; 
    nt = cumsum( dx .* y );
    plot(x, y);
    hold on
    plot(x, nt, 'r')
    res = nt(end)
end
