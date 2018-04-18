% Chapter 2, Problem 3

clear
clc

%V = 1/3*pi*r^2*h

h = 6/12;%ft
r = 2/2/12; %radius = diam/2 in ft

V = 1/3*pi*(r^2)*h;%ft^3

gal = 8; %8 lbs icecream per gallon
D = gal/7.5; %8 lbs per 7.5 ft^3... density

m = D*V %amount of ice cream that can go in cone
