% 11.8  Write a script that will plot the function f(x) = sin(x) for a
% user-specified range of values. Specifically, prompt the user for the
% start point and end point to use for the plot’s x-axis, calculate the
% sine function over the values of x in the interval, and then plot those
% values. There should be 100 evenly spaced points along the plot’s x-axis,
% including the start and end points. You should also prompt the user for
% the title of this plot. Use this answer for the plot title and the y-axis
% label. Label the x-axis ‘x values’. 
% Hint: Put ‘s’ as the second parameter to input(…) in order to avoid
% entering the quote marks.
% You may assume that the value of the end point will always be
% greater than the value of the start point.


xstart = input('The starting x value: ');
xend = input('The ending x value: ');
x = linspace(xstart,xend);
y = sin(x);
name = input('Input the title of the plot: ','s');
plot(x,y)
xlabel('X Axis')
ylabel(name)
title(name)
