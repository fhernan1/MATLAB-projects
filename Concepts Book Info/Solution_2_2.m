% 2.2 You are given a circle with radius 5 centered at x = 1, y = 2. You
% want to calculate the intersection of some lines with that circle. Write
% a script to find the x and y coordinates of each point of intersection
% (if they exist) for the following three lines:
% % y = 2x – 1
% % y = -2x – 10
% % y = x + 5.9054
% % The equation of a circle is:
% %  (x - a)^2 + (y - b)^2 = r^2
% % where (a, b) is the center of the circle, 
% %  and r is the radius.
% % The equation of a line is:
% %  y = m x + c
% % where m is the slope of the line, and
% %         c is the intercept on the y-axis. 
% % Recall that you can extract the roots of the equation Ax^2 + Bx + C = 0
% with the formula:
%  x = (-B +/- sqrt(B^2 - 4AC))/2A
% Hint: You will need to solve this twice for the two roots: once with the
% + and once with the –.
%% solving y = mx + c
%%  with  (x-a)^2 + (y-b)^2 = r^2
%%  for x after some work gives
%%  Ax^2 + Bx + C = 0 
%% where A = 1 + m^2
%%       B = 2cm - 2bm - 2a
%%       C = (c-b)^2 - r^2
clear
clc
r = 5;
a = 1;
b = 2;
% first line
m = 2;
c = -1;
A = 1 + m^2;
B = 2*c*m - 2*b*m - 2*a;
C = (c-b)^2 - r^2;
x11 = (-B + sqrt(B^2 - 4*A*C))/(2*A)
y11 = m*x11 + c
x12 = (-B - sqrt(B^2 - 4*A*C))/(2*A)
y12 = m*x12 + c
% second line
m = -2;
c = -10;
A = 1 + m^2;
B = 2*c*m - 2*b*m - 2*a;
C = (c-b)^2 - r^2;
x21 = (-B + sqrt(B^2 - 4*A*C))/(2*A)
y21 = m*x21 + c
x22 = (-B - sqrt(B^2 - 4*A*C))/(2*A)
y22 = m*x22 + c
% third line
m = 1;
c = 5.9054;
A = 1 + m^2;
B = 2*c*m - 2*b*m - 2*a;
C = (c-b)^2 - r^2;
x31 = (-B + sqrt(B^2 - 4*A*C))/(2*A)
y31 = m*x31 + c
x32 = (-B - sqrt(B^2 - 4*A*C))/(2*A)
y32 = m*x32 + c

%% Note: we will see much more elegant ways to solve this kind of problem
%% in later chapters.


