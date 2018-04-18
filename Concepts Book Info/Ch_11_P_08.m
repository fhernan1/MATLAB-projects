% Chapter 11, Problem 8
function Ch_11_P_08 

clear
clc
close all
% 11-8	Write a function named plotRotation that takes in two vectors, x and z, and a vector th.  Your function should plot three plots in the same figure by using the subplot command.  The figure should have 1x3 plots. The plots should be as follows:
% a.	z vs. x; titled 'z vs. x'.  Note that you will have to use plot3()  to correctly plot this in the xz plane rather than the xy plane as plot() would do.  Also, you should use view(0, 0) to make the plot produced by plot3() show up as 2D as shown in the example image.
% b.	 z vs. x rotated around the x axis using mesh() with flat shading and a square axis; titled 'z vs. x about x using mesh'.
% c.	 z vs. x rotated around the z axis using surf() with interp shading and a square axis; titled 'z vs. x about z using surf'.
% For plots b and c, the input vector th should be used for your independent vector theta which is used to convert from polar to cartesian coordinates. Don't forget to title and label each of the three plots.  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%11-8%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [x z] = mystery(7);
    plotRotation(x, z, linspace(0, 2*pi, 200))
end

function plotRotation(x, z, th) 

    subplot(1, 3, 1)
    plot3(x,zeros(1, length(x)),z)
    xlabel('x-axis')
    zlabel('z-axis')
    view(0,0)
    title('z vs. x')

    subplot(1,3,2)
    [xx tth]= meshgrid(x, th);
    [zz tth]= meshgrid(z, th);
    rr= zz;
    xx= xx;
    yy= rr.*cos(tth);
    zz= rr.*sin(tth);
    mesh(xx,yy,zz)
    xlabel('x-axis')
    ylabel('y-axis')
    zlabel('z-axis')
    title('z vs. x about x using mesh')

    subplot(1,3,3)
    [xx tth]= meshgrid(x, th);
    [zz tth]= meshgrid(z, th);
    rr= xx;
    xx= rr.*cos(tth);
    yy= rr.*sin(tth);
    surf(xx,yy,zz)
    xlabel('x-axis')
    ylabel('y-axis')
    zlabel('z-axis')
    shading interp
    title('z vs. x about z using surf')
end

function [th y] = mystery(n)

    mx = n*pi;
    th = linspace(0, mx);
    y = cos(th)/2 + cos(th ./ n) + 1.5;
    th = [0 th+n/2];
    y = [y(1) y];
end
