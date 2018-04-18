
% 11.10 You just realized that February 14th has passed and you haven’t
% bought anything for your Valentine. Since you are in the CS1371 class and
% your date is a CS major, sending the lucky person a MATLAB coded heart
% would seem like a cool and sincere thing to do. Make sure you follow each
% and every instruction carefully or your heart will turn out broken. Trust
% us.
% a.    Create a new script called valentine.m
% b.    Create 2 variables, x and y with range (0 to 2pi, interval 0.05) and (0 to 1, interval 0.05) respectively.
% c.    Use the meshgrid function to generate the matrices xx and yy from x and y
% d.    Define: c = [0.1 + 0.9 * (pi ( abs( xx - pi ))/pi ] .* yy
% e.    Define: aa = c .* cos(xx)
% f.    Define: bb = c.* sin(xx)
% g.    Define: zz = (-2)*aa.^3 + (3/2)*c.^2 + 0.5
% h.    Plot zz against aa and bb.
% Voila! You are now all set to present your heart to your Valentine.

clear
clc
close all

x = linspace(0,2*pi,200);
y = 0:.05:1;

[xx, yy] = meshgrid(x,y);
c = (0.1 + 0.9 * (pi * abs( xx - pi ))/pi ) .* yy;
aa = c .* cos(xx);
bb = c .* sin(xx);
zz = (-2)*aa.^3 + (3/2)*c.^2 + 0.5;
surf(bb,zz,aa)
shading interp
axis off
colormap autumn
