
% 11.2  We need to plot a hyperbolic paraboloid. This is special in 
% mathematics due to the existence of a saddle point or minimax that exists
% at the origin. This function can be created from the equation. 
% z = x^2/4 - y^2/4
% Write a MATLAB script to plot this function with the following restrictions:
% a.    Vary x and y between -3 and 3, increment in steps of .1
% b.    Draw the picture as a wire frame with the lines colored to indicate the y value
% c.    Put a color bar on the plot identifying the colors to values of y
% Make sure the plot is appropriately labeled and titled. 


x = -3:.1:3;
y = x;
[xx yy] = meshgrid(x,y);
zz = (xx.^2)/4 - (yy.^2)/4;
mesh(xx,yy,zz,yy)
title('z = x^2/4 - y^2/4')
xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')
colorbar
