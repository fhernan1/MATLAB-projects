% Chapter 11, Problem 5
function Ch_11_P_05 

clear
clc
close all
% 11-5 	Georgia Tech wants to tear down the Campanile and build a 
% new one that is ridiculously tall.  However, before they build it,  
% they need you to model it in MATLAB.  Using the equation  
% z = 1/(x^2 + y^2) as the model, write a script that will plot the  
% Campanile.   Your domain should be  
% -.75 <= x <=.75 and -.75 <= y <= .75  
% using an increment of .05 for each range. Set your axes such that  
% all of the x, y domain is seen and z runs from 0 to 300.   
% Use surf(…) to plot your image.
% %%%%%%%%%%%%%%%%%%%%%11-5%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    x=-.75:.05:.75;
    y=-.75:.05:.75;
    [xx, yy]= meshgrid(x,y);
    zz=1./(xx.^2 + yy.^2);
    zz(xx==0 & yy == 0) = 450;
    surf(xx,yy,zz)
    shading interp
    xlabel x-axis
    ylabel y-axis
    zlabel z-axis
    axis ([-1 1 -1 1 0 450])
end