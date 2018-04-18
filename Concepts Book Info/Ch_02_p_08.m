% Chapter 2, Problem 8

clear
clc

d = 1.5; %1.5 mi
v_wk = 4; %4 mph walking
v_bus = 25; %25 mph bus

t_wk = d/v_wk %time walking hr
t_bus = d/v_bus %time bussing hr

t_dif = t_wk - t_bus %difference in time
t_dif = t_dif*60 / 2 %diff minutes/how often busses should run
