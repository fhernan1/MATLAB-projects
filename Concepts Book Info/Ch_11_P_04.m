% Chapter 11, Problem 4
function Ch_11_P_04 

clear
clc
close all
% 11-4	This programming problem will compare the surf(…) and mesh(…) 
% functions by putting two 3-D side by side plots for comparison using  
% subplot(…).  You should label all axes accordingly  
% ('X-axis', 'Y-axis', etc.) and title your plot corresponding to  
% the problem statement. 
% a.	On the left side, plot the function f(x,y)=x^2*cos(y) in the  
% range x= -5:5 and y= -5:5 using  mesh and name your plot 'Using Mesh'.
% b.	On the right side, plot the same function, in the same range,  
% but using surf. Name your plot 'Using Surf'.
% %%%%%%%%%%%%%%%%%%11-4%%%%%%%%%%%%%%%%%%%%%%%%%%%
    x = -5:5
    y = -5:5
    [xx, yy]= meshgrid(x,y);
    zz=(xx.^2).*cos(yy);

    subplot(1,2,1)
    mesh(xx,yy,zz)
    xlabel('x-axis')
    ylabel ('y-axis')
    zlabel ('z-axis')

    subplot(1,2,2)
    surf(xx,yy,zz)
    xlabel ('x-axis')
    ylabel ('y-axis')
    zlabel ('z-axis')

end

