% Chapter 2, Problem 1

clear
clc

%law of cosines c^2 = a^2 + b^2 - 2*a*b*cos(gam)
a = 4.5; %length a
b = 6; % length b
gam = 35; %angle b/w a&b opposite c, degrees

c = sqrt(a^2 + b^2 - 2*a*b*cosd(gam)); %law of cosines

area = (1/2)*b*a*sind(gam) %1/2*b*h triangle area
