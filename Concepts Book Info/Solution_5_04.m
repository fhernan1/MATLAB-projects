% Problem 5.4

clear
clc

% Part a.
disp('Enter parameters for ball throwing problem:')
v = input('Initial Velocity (m/s): ');
h = input('Height (m): ');

a = (1/2) * -9.8;
b = v;
c = -h;

% Part b.
r = roots(a, b, c);

fprintf('\nThe ball crosses %.2f meters at %.2f seconds and %.2f seconds\n\n', h, r(1), r(2));
         
% Part c.
% In this particular simulation, it is impossible to generate complex roots
% if the given velocity and height make sense (i.e. are not negative). In
% the general case of complex roots, MATLAB respresents complex
% numbers with no difficulty. Thus, nothing extra is required.