% Chapter 2, Problem 5

clear
clc

BTU = 50000/60; %BTUs per minute

deg = 7.89; %BTUs to raise 1 gal of water 1 degree
deg = deg*7.48; %BTUs to raise 1 ft^3 by 1 degree

ft3_min = BTU/deg %ft^3 per minute
