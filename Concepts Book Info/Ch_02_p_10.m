% Chapter 2, Problem 10

clear
clc

mass = 80; %80 kg mass

v1 = sqrt(2*mass/(1.3*.7)); %velocity of first jumper
v2 = sqrt(2*mass/(1.3*.15)); %velocity of second jumper

x1_0 = v1 * 20; %initial displacement of first jumper when second jumper jumps

t = x1_0/(v2-v1) %time meet

grd = 5000; %5000 meters above the ground initially
x_meet = grd - v1*t %distance above ground when meeting
