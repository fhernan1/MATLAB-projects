% Chapter 15, Problem 1
function Ch_15_P_01 

clear
clc
close all
% 15-1	Do the following basic exercises with numerical methods.
% a.	Define two vectors xi and yi of the same length where the xi 
% values are monotonically increasing and the yi values are somehow  
% related to the xi values.  Then define a new vector x with closer  
% spacing than xi, and extending below and above the range of xi.  
% Find the y values corresponding to the x-values in xi by linear  
% interpolation.  On the same figure, plot the original yi vs xi as  
% red circles, and y vs x as a black line.  What do you observe about  
% the visible range of the x values?
    xi = 0:10;
    yi = xi - 5*xi.^2 + xi.^3 + 300*rand(1,11);
    plot(xi, yi, 'ro')
    hold on
    x = linspace(-2, 12);
    y = interp1(xi, yi, x);
    plot(x, y, 'k')
    text(xi(1), yi(1) + 20, 'data before here ignored')
% b.	Repeat the exercise in part a using the spline(…) function  
% to interpolate. Explain the difference in the range of the resulting  
% y vs x plot. 
    figure
    y = spline(xi, yi, x);
    plot(xi, yi, 'ro')
    hold on
    plot(x, y, 'k')
    text(xi(1), yi(1) + 20, 'data before here plotted')
% c.	Use polyfit(…)  to find  the coefficients of the third order  
% polynomial that best fits the points represented by vectors xi and  
% yi and then use polyval(…) to evaluate that curve at the x points.   
% As before, plot yi vs xi as red circles and y vs x as a black line.  
    figure
    coef = polyfit(xi, yi, 3);
    y = polyval(coef, x);
    plot(xi, yi, 'ro')
    hold on
    plot(x, y, 'k')
    text(xi(1), yi(1) + 20, 'data before here plotted')
% d.	Approximate the derivative, dxy = dy/dx, for the vectors xi  
% and yi using the diff(…) function and plot yi vs xi. Since diff(…)  
% reduces the length of the vector by one, you will have to plot dxy  
% vs either xi(1:end-1), xi(2:end) or compute xm, the mid-points of xi.  
    figure
    sl = diff(yi) ./ diff(xi);
    plot(xi, yi, 'ro')
    hold on
    midx = xi(2:end)-(xi(2) - xi(1))/2;
    plot( midx, sl, 'k')
    title('slope estimates')
% e.	Find yp, the cumulative sum of the elements in dxy and add  
% this to the plot of part d.  With the exception of a constant offset  
% (explain?), this curve ought to track the original plot of yi vs xi. 
    yp = cumsum(sl);
    plot(xi(2:end), yp)
% f.	Use cumtrapz to find the area under the curve represented by  
% yp vs xi with the trapzoidal method of approximation. Compare this  
% result to the ending value of the yp curve.
    area = cumtrapz(sl)
    yp(end)

end