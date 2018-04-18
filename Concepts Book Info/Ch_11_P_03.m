% Chapter 11, Problem 3
function Ch_11_P_03 

clear
clc
close all
% 11-3	 Write a function called sineGraph that graphs a sine function 
% four times between the interval [start,stop] on the same graph.  
% The start and stop values should be parameters of the function.   
% The number of points per interval will vary. More specifically:
% •	The first time you graph the sine function, you should have two  
% evenly spaced points, ie. start and stop
% •	The next plot should have 4 evenly spaced points - start, stop,  
% and two points between them
% •	The third has 8 evenly spaced points and the fourth 256 points.
% •	Make sure to add a legend, a title - 'Multiple graphs on one plot',   
% and to label the axes. Make sure each line has a different color. 
% •	The function should return the x and y values for the 256 point set.
% Test your function with the following intervals  
% [0,pi/2], [0,2pi], [0,4pi], [0,16pi]
    sineGraph(0,pi/2);
    figure
    sineGraph(0,2*pi);
    figure
    sineGraph(0,4*pi);
    figure
    sineGraph(0,16*pi);
end

function sineGraph(start,stop)
    theta1= linspace(start,stop,2);
    theta2= linspace(start,stop,4);
    theta3= linspace(start,stop,8);
    theta4= linspace(start,stop,256);
    plot(theta1, sin(theta1),'b', ...
        theta2, sin(theta2),'g', ...
        theta3, sin(theta3),'r', ...
        theta4, sin(theta4),'c')

    Legend('2 pts', '4 pts', '8 pts', '256 pts');
    title ('Multiple graphs on one plot');

end
