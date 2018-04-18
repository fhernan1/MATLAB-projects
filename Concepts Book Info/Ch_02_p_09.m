% Chapter 2, Problem 9

clear
clc

h = 5; %height of frustum is 5 in
r1 = 3.5/2; %radius = diameter/2 inches
r2 = 2/2; % ' ' inches
r1 = r1/12; %feet
r2 = r2/12; %feet
h = h/12; %feet

pour = 2; %2 gals/min pour rate
pour = pour * 7.5; %rate in ft^3/min

V = 1/3*pi*h*(r1^2+r1*r2+r2^2); %volume of a conic frustrum

t_brim = V/pour; %minutes to fill
t_brim = t_brim*60 %seconds to fill
