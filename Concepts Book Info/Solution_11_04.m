% 11.4  We want to plot the top half of a sphere, that can be created from
% the equation   x^2+y^2+z^2 = r^2, where r is the radius of the hemisphere. Write a MATLAB
% script to plot this function with the following restrictions: 
% a.    The hemisphere has a radius of three units 
% b.    Vary x and y between -3 and 3, incremented in steps of .1 
% c.    The surface should be smoothly colored in shades of gray with no lines apparent 
% Make sure the plot is appropriately labeled and titled. 
%

r = 3;
x = -3:.1:3;
[xx yy] = meshgrid(x, x);
zz = sqrt(r.^2 - xx.^2 - yy.^2)
surf(xx,yy,zz)
shading interp
xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')
title('Hemisphere')
colormap bone
