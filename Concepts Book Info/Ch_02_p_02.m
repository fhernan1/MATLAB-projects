% Chapter 2, Problem 2

clear
clc

% horizontally, dist = V cos 45 * t, so t = dist / (V cos 45)
% vertically, motion under gravity s = V sin 45 t - 1/2 g t^2
% since the ball returns to ground, s = 0
%   so V sin 45 = 1/2 g t
%   so V sin 45 = 1/2 g * dist / V cos 45
%  so V^2 = 1/2 g dist / sin45 cos 45
dist = 400; % ft
g = 32.2; % ft / sec^2
sin45 = sind(45);
cos45 = cosd(45);
V = sqrt( 0.5 * g * dist / (sin45 * cos45))

V20 = sqrt( 0.5 * g * dist / (sin(20) * cos(20)))
V30 = sqrt( 0.5 * g * dist / (sin(30) * cos(30)))
V40 = sqrt( 0.5 * g * dist / (sin(40) * cos(40)))
V50 = sqrt( 0.5 * g * dist / (sin(50) * cos(50)))
V60 = sqrt( 0.5 * g * dist / (sin(60) * cos(60)))
V70 = sqrt( 0.5 * g * dist / (sin(70) * cos(70)))
