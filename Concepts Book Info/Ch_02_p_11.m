% Chapter 2, Problem 11

clear
clc

a = 1; %initial x displacement
b = 2; %initial y displacement
r = 5; % radius
%first line
m = 2
c = 1
% circle is (x-a)^2 + (y - b)^2 = r^2
% line is y = m*x + c
% solve the equation (x-a)^2 + (m*x + c-b)^2 = r^2
% which is (1 + m^2) x^2 + (-2a + 2m(c-b)) x + a^2 + (c-b)^2 - r^2 = 0
A = 1 + m^2;
B = 2*m*(c-b) - 2*a;
C = a^2 + (c-b)^2 - r^2;
x1 = (-B + sqrt(B^2 - 4*A*C)) / (2*A)
y1 = m*x1 + c
x2 = (-B - sqrt(B^2 - 4*A*C)) / (2*A)
y2 = m*x2 + c
% second line
m = -2
c = 10
A = 1 + m^2;
B = 2*m*(c-b) - 2*a;
C = a^2 + (c-b)^2 - r^2;
x1 = (-B + sqrt(B^2 - 4*A*C)) / (2*A)
y1 = m*x1 + c
x2 = (-B - sqrt(B^2 - 4*A*C)) / (2*A)
y2 = m*x2 + c
% third line
m = 1
c = 5.9054
A = 1 + m^2;
B = 2*m*(c-b) - 2*a;
C = a^2 + (c-b)^2 - r^2;
x1 = (-B + sqrt(B^2 - 4*A*C)) / (2*A)
y1 = m*x1 + c
x2 = (-B - sqrt(B^2 - 4*A*C)) / (2*A)
y2 = m*x2 + c

% there must be a better way ... Chapter 5
