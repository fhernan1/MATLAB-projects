% Chapter 11, Problem 7
function Ch_11_P_07 

clear
clc
close all
% 11-7	You just realized that February 14th has passed and you haven't 
% gotten anything for your Valentine. Since your date is a CS major,  
% sending the lucky person a MATAB coded heart would seem like a cool  
% and sincere thing to do. Make sure you follow each and every  
% instruction carefully or your heart would turn out broken. Trust us.
% You are going to write a script to draw this heart using the following  
% steps:
% a.	Create a plaid [xx, yy] using x values with range (0 to 2pi,  
% with an interval 0.05pi) and y values with the range (0 to 1, with  
% an interval 0.05).
% b.	Define the following variables:
%  	c=[0.1 + 0.9*(pi-abs(xx - pi))/pi ] .* yy
% aa = c .* cos(xx)
% bb = c.* sin(xx)
% zz = (-2)*aa.^3 + (3/2)*c.^2 + 0.5
% c.	Plot zz against aa and bb using the surf() function with  
% interpolated colors.
%%%%%%%%%%%%%%%%%%%%%%%%%%%11-7%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    x=0:.05*pi:2*pi
    y=0:.05:1

    [xx yy]= meshgrid(x,y)
    c=[0.1 + 0.9*(pi-abs(xx - pi))/pi ] .* yy
    aa = c .* cos(xx)
    bb = c.* sin(xx)
    zz = (-2)*aa.^3 + (3/2)*c.^2 + 0.5
    surf(aa,bb,-zz)
    shading interp
end
