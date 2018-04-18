clear
clc
% 2.1 In the Command window, write the commands that will solve the
% following problems:
% % a.	You throw a ball straight up in the air with an initial speed of 25
% % m/s. [g = 9.8 m/sec2]. Compute tp, the time it takes to reach the highest
% % point, and hp, the highest distance the ball rises from the release
% % point.
g = 9.8;
u = 25;
%% equation is v = u + at;  v = 0; a = -g hence,
%%    t = u/g;
tp = u/g

% % b.	You are constructing a hemispherical dome with an outer radius of
% % 50 feet. The walls will be solid concrete 9 inches thick. Calculate the
% % volume, v, of the number of cubic yards of concrete that will be needed.
r = 50;  %ft
th = 9;  % in
%% equation is: sphere vol = 4/3 pi r^3; we are dealing with hemispheres:
%% vol = 2/3 pi r^3
outerVol = 2 * pi * r^3;  % cu ft
innerVol = 2 * pi * (r-th/12)^3;  % cu ft
wall = outerVol - innerVol; % cu ft
v = wall / 27  % cu yds

% % c.	A jet aircraft is flying 100 feet above a level plain at 600 mph.
% % Suddenly the ground begins to rise at a 4 degree slope. Calculate tx, the
% % amount of time the pilot has to raise the nose before the aircraft
% % strikes the ground.
h = 100; % ft
th = 4;  % deg
vel = 600;  % mph
%% h / horiz dist = tan(th)
%% horiz dist = h / tan(th)
%% time = dist / v
vel = vel * 60 / 88; % fps
th = th * pi / 180;  % radians
horizDist = h / tan(th);  % ft
tx = horizDist / vel  % sec

